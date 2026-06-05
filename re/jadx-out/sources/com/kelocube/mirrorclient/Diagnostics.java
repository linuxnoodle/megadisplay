package com.kelocube.mirrorclient;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.preference.PreferenceManager;
import io.sentry.Sentry;
import io.sentry.SentryClient;
import io.sentry.android.AndroidSentryClientFactory;
import io.sentry.dsn.Dsn;
import io.sentry.event.User;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Diagnostics.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005J\b\u0010\u0011\u001a\u00020\u000fH\u0002J\u001c\u0010\u0012\u001a\u00020\u000f2\b\u0010\u0013\u001a\u0004\u0018\u00010\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/kelocube/mirrorclient/Diagnostics;", "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;", "context", "Landroid/content/Context;", "userId", "", "(Landroid/content/Context;Ljava/lang/String;)V", "<set-?>", "", "enabled", "getEnabled", "()Z", "prefs", "Landroid/content/SharedPreferences;", "captureUserReport", "", "email", "configureSentry", "onSharedPreferenceChanged", "p0", "key", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class Diagnostics implements SharedPreferences.OnSharedPreferenceChangeListener {
    private final Context context;
    private boolean enabled;
    private final SharedPreferences prefs;
    private final String userId;

    public Diagnostics(Context context, String userId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.context = context;
        this.userId = userId;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        Intrinsics.checkNotNullExpressionValue(defaultSharedPreferences, "getDefaultSharedPreferences(...)");
        this.prefs = defaultSharedPreferences;
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(this);
        configureSentry();
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences p0, String key) {
        if (Intrinsics.areEqual(key, PrefsKt.PREF_ALLOW_ERROR_REPORTS)) {
            configureSentry();
        }
    }

    private final void configureSentry() {
        boolean z = this.prefs.getBoolean(PrefsKt.PREF_ALLOW_ERROR_REPORTS, false);
        this.enabled = z;
        if (z) {
            Log.i(UtilKt.getTAG(this), "Error reporting enabled");
            SentryClient sentryClientCreateSentryClient = new AndroidSentryClientFactory(this.context).createSentryClient(new Dsn("https://5cf60100fc334b3bac984f96d9f6538e@o265553.ingest.sentry.io/1469104"));
            sentryClientCreateSentryClient.setEnvironment("release");
            sentryClientCreateSentryClient.getContext().setUser(new User(this.userId, null, null, null));
            Sentry.setStoredClient(sentryClientCreateSentryClient);
            return;
        }
        Log.i(UtilKt.getTAG(this), "Error reporting disabled");
        Sentry.init(null, new AndroidSentryClientFactory(this.context));
    }

    public final void captureUserReport(String email) {
        Intrinsics.checkNotNullParameter(email, "email");
        Sentry.getContext().setUser(new User(this.userId, null, null, email));
        Sentry.capture("Android error report by " + email);
    }
}
