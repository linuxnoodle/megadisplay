package de.mrapp.android.util.multithreading;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import androidx.collection.LruCache;
import de.mrapp.android.util.logging.LogLevel;
import de.mrapp.android.util.logging.Logger;
import de.mrapp.util.Condition;
import de.mrapp.util.datastructure.ListenerList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractDataBinder<DataType, KeyType, ViewType, ParamType> extends Handler {
    public static final int CACHE_SIZE = 10;
    private final LruCache<KeyType, DataType> cache;
    private final Object cancelLock;
    private boolean canceled;
    private final Context context;
    private final ListenerList<Listener<DataType, KeyType, ViewType, ParamType>> listeners;
    private final Logger logger;
    private final ExecutorService threadPool;
    private boolean useCache;
    private final Map<ViewType, KeyType> views;

    public interface Listener<DataType, KeyType, ViewType, ParamType> {
        void onCanceled(AbstractDataBinder<DataType, KeyType, ViewType, ParamType> abstractDataBinder);

        void onFinished(AbstractDataBinder<DataType, KeyType, ViewType, ParamType> abstractDataBinder, KeyType keytype, DataType datatype, ViewType viewtype, ParamType... paramtypeArr);

        boolean onLoadData(AbstractDataBinder<DataType, KeyType, ViewType, ParamType> abstractDataBinder, KeyType keytype, ParamType... paramtypeArr);
    }

    protected abstract DataType doInBackground(KeyType keytype, ParamType... paramtypeArr);

    protected abstract void onPostExecute(ViewType viewtype, DataType datatype, long j, ParamType... paramtypeArr);

    protected void onPreExecute(ViewType viewtype, ParamType... paramtypeArr) {
    }

    private static class Task<DataType, KeyType, ViewType, ParamType> {
        private final KeyType key;
        private final ParamType[] params;
        private final ViewType view;
        private final long startTime = System.currentTimeMillis();
        private DataType result = null;

        Task(ViewType viewtype, KeyType keytype, ParamType[] paramtypeArr) {
            this.view = viewtype;
            this.key = keytype;
            this.params = paramtypeArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SafeVarargs
    public final boolean notifyOnLoad(KeyType keytype, ParamType... paramtypeArr) {
        Iterator<Listener<DataType, KeyType, ViewType, ParamType>> it = this.listeners.iterator();
        boolean zOnLoadData = true;
        while (it.hasNext()) {
            zOnLoadData &= it.next().onLoadData(this, keytype, paramtypeArr);
        }
        return zOnLoadData;
    }

    @SafeVarargs
    private final void notifyOnFinished(KeyType keytype, DataType datatype, ViewType viewtype, ParamType... paramtypeArr) {
        Iterator<Listener<DataType, KeyType, ViewType, ParamType>> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onFinished(this, keytype, datatype, viewtype, paramtypeArr);
        }
    }

    private void notifyOnCanceled() {
        Iterator<Listener<DataType, KeyType, ViewType, ParamType>> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onCanceled(this);
        }
    }

    private DataType getCachedData(KeyType keytype) {
        DataType datatype;
        synchronized (this.cache) {
            datatype = this.cache.get(keytype);
        }
        return datatype;
    }

    private void cacheData(KeyType keytype, DataType datatype) {
        synchronized (this.cache) {
            if (this.useCache) {
                this.cache.put(keytype, datatype);
            }
        }
    }

    private void loadDataAsynchronously(final Task<DataType, KeyType, ViewType, ParamType> task) {
        this.threadPool.submit(new Runnable() { // from class: de.mrapp.android.util.multithreading.AbstractDataBinder.1
            @Override // java.lang.Runnable
            public void run() {
                if (AbstractDataBinder.this.isCanceled()) {
                    return;
                }
                while (!AbstractDataBinder.this.notifyOnLoad(task.key, task.params)) {
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException unused) {
                    }
                }
                Task task2 = task;
                task2.result = AbstractDataBinder.this.loadData(task2);
                Message messageObtain = Message.obtain();
                messageObtain.obj = task;
                AbstractDataBinder.this.sendMessage(messageObtain);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public DataType loadData(Task<DataType, KeyType, ViewType, ParamType> task) {
        try {
            DataType datatype = (DataType) doInBackground(((Task) task).key, ((Task) task).params);
            if (datatype != null) {
                cacheData(((Task) task).key, datatype);
            }
            this.logger.logInfo(getClass(), "Loaded data with key " + ((Task) task).key);
            return datatype;
        } catch (Exception e) {
            this.logger.logError(getClass(), "An error occurred while loading data with key " + ((Task) task).key, e);
            return null;
        }
    }

    private void setCanceled(boolean z) {
        synchronized (this.cancelLock) {
            this.canceled = z;
        }
    }

    public AbstractDataBinder(Context context) {
        this(context, Executors.newCachedThreadPool());
    }

    public AbstractDataBinder(Context context, ExecutorService executorService) {
        this(context, executorService, new LruCache(10));
    }

    public AbstractDataBinder(Context context, LruCache<KeyType, DataType> lruCache) {
        this(context, Executors.newCachedThreadPool(), lruCache);
    }

    public AbstractDataBinder(Context context, ExecutorService executorService, LruCache<KeyType, DataType> lruCache) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        Condition.INSTANCE.ensureNotNull(executorService, "The executor service may not be null");
        Condition.INSTANCE.ensureNotNull(lruCache, "The cache may not be null");
        this.context = context;
        this.logger = new Logger(LogLevel.INFO);
        this.listeners = new ListenerList<>();
        this.cache = lruCache;
        this.views = Collections.synchronizedMap(new WeakHashMap());
        this.threadPool = executorService;
        this.cancelLock = new Object();
        this.canceled = false;
        this.useCache = true;
    }

    public final Context getContext() {
        return this.context;
    }

    public final LogLevel getLogLevel() {
        return this.logger.getLogLevel();
    }

    public final void setLogLevel(LogLevel logLevel) {
        this.logger.setLogLevel(logLevel);
    }

    public final void addListener(Listener<DataType, KeyType, ViewType, ParamType> listener) {
        this.listeners.add(listener);
    }

    public final void removeListener(Listener<DataType, KeyType, ViewType, ParamType> listener) {
        this.listeners.remove(listener);
    }

    @SafeVarargs
    public final void load(KeyType keytype, ViewType viewtype, ParamType... paramtypeArr) {
        load(keytype, viewtype, true, paramtypeArr);
    }

    @SafeVarargs
    public final void load(KeyType keytype, ViewType viewtype, boolean z, ParamType... paramtypeArr) {
        Condition.INSTANCE.ensureNotNull(keytype, "The key may not be null");
        Condition.INSTANCE.ensureNotNull(viewtype, "The view may not be null");
        Condition.INSTANCE.ensureNotNull(paramtypeArr, "The array may not be null");
        setCanceled(false);
        this.views.put(viewtype, keytype);
        DataType cachedData = getCachedData(keytype);
        if (isCanceled()) {
            return;
        }
        if (cachedData != null) {
            onPostExecute(viewtype, cachedData, 0L, paramtypeArr);
            notifyOnFinished(keytype, cachedData, viewtype, paramtypeArr);
            this.logger.logInfo(getClass(), "Loaded data with key " + keytype + " from cache");
            return;
        }
        onPreExecute(viewtype, paramtypeArr);
        Task<DataType, KeyType, ViewType, ParamType> task = new Task<>(viewtype, keytype, paramtypeArr);
        if (z) {
            loadDataAsynchronously(task);
            return;
        }
        DataType datatypeLoadData = loadData(task);
        onPostExecute(viewtype, datatypeLoadData, 0L, paramtypeArr);
        notifyOnFinished(keytype, datatypeLoadData, viewtype, paramtypeArr);
    }

    public final void cancel() {
        setCanceled(true);
        notifyOnCanceled();
        this.logger.logInfo(getClass(), "Canceled to load data");
    }

    public final boolean isCanceled() {
        boolean z;
        synchronized (this.cancelLock) {
            z = this.canceled;
        }
        return z;
    }

    public final boolean isCached(KeyType keytype) {
        boolean z;
        Condition.INSTANCE.ensureNotNull(keytype, "The key may not be null");
        synchronized (this.cache) {
            z = this.cache.get(keytype) != null;
        }
        return z;
    }

    public final boolean isCacheUsed() {
        boolean z;
        synchronized (this.cache) {
            z = this.useCache;
        }
        return z;
    }

    public final void useCache(boolean z) {
        synchronized (this.cache) {
            this.useCache = z;
            this.logger.logDebug(getClass(), z ? "Enabled" : "Disabled caching");
            if (!z) {
                clearCache();
            }
        }
    }

    public final void clearCache() {
        synchronized (this.cache) {
            this.cache.evictAll();
            this.logger.logDebug(getClass(), "Cleared cache");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Task task = (Task) message.obj;
        if (!isCanceled()) {
            KeyType keytype = this.views.get(task.view);
            if (keytype != null && keytype.equals(task.key)) {
                onPostExecute(task.view, task.result, System.currentTimeMillis() - task.startTime, task.params);
                notifyOnFinished(task.key, task.result, task.view, task.params);
                return;
            } else {
                this.logger.logVerbose(getClass(), "Data with key " + task.key + " not displayed. View has been recycled");
                return;
            }
        }
        this.logger.logVerbose(getClass(), "Data with key " + task.key + " not displayed. Loading data has been canceled");
    }
}
