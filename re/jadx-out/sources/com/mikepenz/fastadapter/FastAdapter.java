package com.mikepenz.fastadapter;

import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArrayMap;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import com.mikepenz.fastadapter.dsl.FastAdapterDsl;
import com.mikepenz.fastadapter.extensions.ExtensionsFactories;
import com.mikepenz.fastadapter.listeners.ClickEventHook;
import com.mikepenz.fastadapter.listeners.EventHook;
import com.mikepenz.fastadapter.listeners.LongClickEventHook;
import com.mikepenz.fastadapter.listeners.OnBindViewHolderListener;
import com.mikepenz.fastadapter.listeners.OnBindViewHolderListenerImpl;
import com.mikepenz.fastadapter.listeners.OnCreateViewHolderListener;
import com.mikepenz.fastadapter.listeners.OnCreateViewHolderListenerImpl;
import com.mikepenz.fastadapter.listeners.TouchEventHook;
import com.mikepenz.fastadapter.utils.AdapterPredicate;
import com.mikepenz.fastadapter.utils.DefaultItemVHFactoryCache;
import com.mikepenz.fastadapter.utils.EventHookUtilKt;
import com.mikepenz.fastadapter.utils.Triple;
import io.sentry.marshaller.json.JsonMarshaller;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ReplaceWith;
import kotlin.TuplesKt;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FastAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@FastAdapterDsl
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0017\u0018\u0000 Å\u0001*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\b\u0012\u0004\u0012\u00020\u00030\u0005:\u0006Å\u0001Æ\u0001Ç\u0001B\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010:\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\f2\u0006\u0010l\u001a\u00020!H\u0016J3\u0010m\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000\"\u000e\b\u0001\u0010n*\b\u0012\u0004\u0012\u00028\u00000\f2\u0006\u0010o\u001a\u00020!2\u0006\u0010:\u001a\u0002HnH\u0016¢\u0006\u0002\u0010pJ,\u0010q\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000\"\u000e\b\u0001\u0010n*\b\u0012\u0004\u0012\u00028\u00000\f2\f\u0010r\u001a\b\u0012\u0004\u0012\u0002Hn0sH\u0016J\u001c\u0010t\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u000e\u0010u\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\tJ\"\u0010v\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0014\u0010\u0015\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028\u00000\t0\u0019J)\u0010w\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000\"\u000e\b\u0001\u0010x*\b\u0012\u0004\u0012\u00028\u00000\u001a2\u0006\u0010y\u001a\u0002Hx¢\u0006\u0002\u0010zJ\b\u0010{\u001a\u00020|H\u0004J\u0006\u0010}\u001a\u00020|J\u0018\u0010~\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\f2\u0006\u0010<\u001a\u00020!H\u0016J%\u0010\u007f\u001a\u0005\u0018\u0001H\u0080\u0001\"\u0011\b\u0001\u0010\u0080\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u001aH\u0086\b¢\u0006\u0003\u0010\u0081\u0001J2\u0010\u007f\u001a\u0005\u0018\u0001H\u0080\u0001\"\u000f\b\u0001\u0010\u0080\u0001*\b\u0012\u0004\u0012\u00028\u00000\u001a2\u0010\u0010\u0082\u0001\u001a\u000b\u0012\u0007\b\u0000\u0012\u0003H\u0080\u00010\u001f¢\u0006\u0003\u0010\u0083\u0001J\u0012\u0010\u0084\u0001\u001a\u00020!2\u0007\u0010\u0085\u0001\u001a\u00020\u0003H\u0016J\u0019\u0010\u0086\u0001\u001a\u0004\u0018\u00018\u00002\u0006\u0010<\u001a\u00020!H\u0016¢\u0006\u0003\u0010\u0087\u0001J$\u0010\u0088\u0001\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010!\u0018\u00010\u0089\u00012\b\u0010\u008a\u0001\u001a\u00030\u008b\u0001H\u0016J\t\u0010\u008c\u0001\u001a\u00020!H\u0016J\u0012\u0010\u008d\u0001\u001a\u00030\u008b\u00012\u0006\u0010<\u001a\u00020!H\u0016J\u0011\u0010\u008e\u0001\u001a\u00020!2\u0006\u0010<\u001a\u00020!H\u0016J&\u0010\u008f\u0001\u001a\u0005\u0018\u0001H\u0080\u0001\"\u0011\b\u0001\u0010\u0080\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u001aH\u0086\b¢\u0006\u0003\u0010\u0081\u0001J3\u0010\u008f\u0001\u001a\u0005\u0018\u0001H\u0080\u0001\"\u000f\b\u0001\u0010\u0080\u0001*\b\u0012\u0004\u0012\u00028\u00000\u001a2\u0010\u0010\u0082\u0001\u001a\u000b\u0012\u0007\b\u0000\u0012\u0003H\u0080\u00010\u001f¢\u0006\u0003\u0010\u0083\u0001J\u0017\u0010\u0090\u0001\u001a\u00020!2\u0006\u0010;\u001a\u00028\u0000H\u0016¢\u0006\u0003\u0010\u0091\u0001J\u0013\u0010\u0090\u0001\u001a\u00020!2\b\u0010\u008a\u0001\u001a\u00030\u008b\u0001H\u0016J\u0011\u0010\u0092\u0001\u001a\u00020!2\u0006\u0010<\u001a\u00020!H\u0016J\u0011\u0010\u0093\u0001\u001a\u00020!2\u0006\u0010l\u001a\u00020!H\u0016J\u0018\u0010\u0094\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u0095\u00012\u0006\u0010<\u001a\u00020!H\u0016J\u0014\u0010\u0096\u0001\u001a\u0006\u0012\u0002\b\u00030$2\u0007\u0010\u0097\u0001\u001a\u00020!J\t\u0010\u0098\u0001\u001a\u00020|H\u0016J\u001f\u0010\u0099\u0001\u001a\u00020|2\u0006\u0010<\u001a\u00020!2\f\b\u0002\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u009b\u0001H\u0017J\u0011\u0010\u009c\u0001\u001a\u00020|2\u0006\u0010<\u001a\u00020!H\u0016J\u001b\u0010\u009d\u0001\u001a\u00020|2\u0007\u0010\u009e\u0001\u001a\u00020!2\u0007\u0010\u009f\u0001\u001a\u00020!H\u0016J(\u0010 \u0001\u001a\u00020|2\u0006\u0010<\u001a\u00020!2\u0007\u0010¡\u0001\u001a\u00020!2\f\b\u0002\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u009b\u0001H\u0017J\u001a\u0010¢\u0001\u001a\u00020|2\u0006\u0010<\u001a\u00020!2\u0007\u0010¡\u0001\u001a\u00020!H\u0016J\u001a\u0010£\u0001\u001a\u00020|2\u0006\u0010<\u001a\u00020!2\u0007\u0010¡\u0001\u001a\u00020!H\u0016J\u0011\u0010¤\u0001\u001a\u00020|2\u0006\u0010<\u001a\u00020!H\u0016J\u0013\u0010¥\u0001\u001a\u00020|2\b\u0010¦\u0001\u001a\u00030§\u0001H\u0016J\u001a\u0010¨\u0001\u001a\u00020|2\u0007\u0010\u0085\u0001\u001a\u00020\u00032\u0006\u0010<\u001a\u00020!H\u0016J*\u0010¨\u0001\u001a\u00020|2\u0007\u0010\u0085\u0001\u001a\u00020\u00032\u0006\u0010<\u001a\u00020!2\u000e\u0010©\u0001\u001a\t\u0012\u0005\u0012\u00030\u009b\u00010sH\u0016J\u001c\u0010ª\u0001\u001a\u00020\u00032\b\u0010«\u0001\u001a\u00030¬\u00012\u0007\u0010\u00ad\u0001\u001a\u00020!H\u0016J\u0013\u0010®\u0001\u001a\u00020|2\b\u0010¦\u0001\u001a\u00030§\u0001H\u0016J\u0012\u0010¯\u0001\u001a\u00020\u00102\u0007\u0010\u0085\u0001\u001a\u00020\u0003H\u0016J\u0012\u0010°\u0001\u001a\u00020|2\u0007\u0010\u0085\u0001\u001a\u00020\u0003H\u0016J\u0012\u0010±\u0001\u001a\u00020|2\u0007\u0010\u0085\u0001\u001a\u00020\u0003H\u0016J\u0012\u0010²\u0001\u001a\u00020|2\u0007\u0010\u0085\u0001\u001a\u00020\u0003H\u0016J\u0017\u0010³\u0001\u001a\u00020|2\f\u0010:\u001a\b\u0012\u0004\u0012\u00028\u00000\fH\u0002J3\u0010´\u0001\u001a\u0015\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020!0µ\u00012\u000e\u0010¶\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000·\u00012\u0007\u0010¸\u0001\u001a\u00020\u0010J<\u0010´\u0001\u001a\u0015\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020!0µ\u00012\u000e\u0010¶\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000·\u00012\u0007\u0010¹\u0001\u001a\u00020!2\u0007\u0010¸\u0001\u001a\u00020\u0010J\u001c\u0010º\u0001\u001a\u00020|2\u0007\u0010\u0097\u0001\u001a\u00020!2\n\u0010;\u001a\u0006\u0012\u0002\b\u00030$J\u0017\u0010»\u0001\u001a\u00020|2\u0006\u0010;\u001a\u00028\u0000H\u0007¢\u0006\u0003\u0010¼\u0001J$\u0010½\u0001\u001a\u0003H\u0080\u0001\"\u0011\b\u0001\u0010\u0080\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u001aH\u0086\b¢\u0006\u0003\u0010\u0081\u0001J$\u0010¾\u0001\u001a\u0003H\u0080\u0001\"\u0011\b\u0001\u0010\u0080\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u001aH\u0086\b¢\u0006\u0003\u0010\u0081\u0001J \u0010¿\u0001\u001a\u00030À\u00012\b\u0010Á\u0001\u001a\u00030À\u00012\n\b\u0002\u0010Â\u0001\u001a\u00030Ã\u0001H\u0017J'\u0010Ä\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\n\u0010Á\u0001\u001a\u0005\u0018\u00010À\u00012\n\b\u0002\u0010Â\u0001\u001a\u00030Ã\u0001H\u0007R\u001e\u0010\u0007\u001a\u0012\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028\u00000\t\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001f\u0010\u0015\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028\u00000\t0\b8F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u001d\u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001a0\u00198F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR$\u0010\u001d\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001a0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\"\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030$0#X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001a\u0010)\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0012\"\u0004\b+\u0010\u0014R\u000e\u0010,\u001a\u00020-X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010.\u001a\u00020/X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u008a\u0001\u00104\u001ar\u0012\u0015\u0012\u0013\u0018\u000106¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(9\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\f¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(:\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(;\u0012\u0013\u0012\u00110!¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(<\u0012\u0004\u0012\u00020\u0010\u0018\u000105j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`=X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR \u0010B\u001a\b\u0012\u0004\u0012\u00028\u00000CX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\u0088\u0001\u0010H\u001ap\u0012\u0013\u0012\u001106¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(9\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\f¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(:\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(;\u0012\u0013\u0012\u00110!¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(<\u0012\u0004\u0012\u00020\u0010\u0018\u000105j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`IX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u0010?\"\u0004\bK\u0010AR\u008a\u0001\u0010L\u001ar\u0012\u0015\u0012\u0013\u0018\u000106¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(9\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\f¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(:\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(;\u0012\u0013\u0012\u00110!¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(<\u0012\u0004\u0012\u00020\u0010\u0018\u000105j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`=X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010?\"\u0004\bN\u0010AR\u0088\u0001\u0010O\u001ap\u0012\u0013\u0012\u001106¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(9\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\f¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(:\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(;\u0012\u0013\u0012\u00110!¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(<\u0012\u0004\u0012\u00020\u0010\u0018\u000105j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`IX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u0010?\"\u0004\bQ\u0010AR\u009e\u0001\u0010R\u001a\u0085\u0001\u0012\u0013\u0012\u001106¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(9\u0012\u0013\u0012\u00110T¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(U\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\f¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(:\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(;\u0012\u0013\u0012\u00110!¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(<\u0012\u0004\u0012\u00020\u0010\u0018\u00010Sj\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`VX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR$\u0010\\\u001a\u00020\u00102\u0006\u0010[\u001a\u00020\u00108F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b]\u0010\u0012\"\u0004\b^\u0010\u0014R \u0010_\u001a\b\u0012\u0004\u0012\u00028\u00000`X\u0096\u0004¢\u0006\u000e\n\u0000\u0012\u0004\ba\u0010\u0006\u001a\u0004\bb\u0010cR\u001a\u0010d\u001a\b\u0012\u0004\u0012\u00028\u00000eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bf\u0010gR\u001a\u0010h\u001a\b\u0012\u0004\u0012\u00028\u00000iX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bj\u0010k¨\u0006È\u0001"}, d2 = {"Lcom/mikepenz/fastadapter/FastAdapter;", "Item", "Lcom/mikepenz/fastadapter/IItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItem;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "()V", "_eventHooks", "", "Lcom/mikepenz/fastadapter/listeners/EventHook;", "adapterSizes", "Landroid/util/SparseArray;", "Lcom/mikepenz/fastadapter/IAdapter;", "adapters", "Ljava/util/ArrayList;", "attachDefaultListeners", "", "getAttachDefaultListeners", "()Z", "setAttachDefaultListeners", "(Z)V", "eventHooks", "getEventHooks", "()Ljava/util/List;", "extensions", "", "Lcom/mikepenz/fastadapter/IAdapterExtension;", "getExtensions", "()Ljava/util/Collection;", "extensionsCache", "Landroidx/collection/ArrayMap;", "Ljava/lang/Class;", "globalSize", "", "itemVHFactoryCache", "Lcom/mikepenz/fastadapter/IItemVHFactoryCache;", "Lcom/mikepenz/fastadapter/IItemVHFactory;", "getItemVHFactoryCache", "()Lcom/mikepenz/fastadapter/IItemVHFactoryCache;", "setItemVHFactoryCache", "(Lcom/mikepenz/fastadapter/IItemVHFactoryCache;)V", "legacyBindViewMode", "getLegacyBindViewMode", "setLegacyBindViewMode", JsonMarshaller.LOGGER, "Lcom/mikepenz/fastadapter/VerboseLogger;", "onBindViewHolderListener", "Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;", "getOnBindViewHolderListener", "()Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;", "setOnBindViewHolderListener", "(Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;)V", "onClickListener", "Lkotlin/Function4;", "Landroid/view/View;", "Lkotlin/ParameterName;", "name", "v", "adapter", "item", "position", "Lcom/mikepenz/fastadapter/ClickListener;", "getOnClickListener", "()Lkotlin/jvm/functions/Function4;", "setOnClickListener", "(Lkotlin/jvm/functions/Function4;)V", "onCreateViewHolderListener", "Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;", "getOnCreateViewHolderListener", "()Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;", "setOnCreateViewHolderListener", "(Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;)V", "onLongClickListener", "Lcom/mikepenz/fastadapter/LongClickListener;", "getOnLongClickListener", "setOnLongClickListener", "onPreClickListener", "getOnPreClickListener", "setOnPreClickListener", "onPreLongClickListener", "getOnPreLongClickListener", "setOnPreLongClickListener", "onTouchListener", "Lkotlin/Function5;", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "Lcom/mikepenz/fastadapter/listeners/TouchListener;", "getOnTouchListener", "()Lkotlin/jvm/functions/Function5;", "setOnTouchListener", "(Lkotlin/jvm/functions/Function5;)V", "value", "verboseLoggingEnabled", "getVerboseLoggingEnabled", "setVerboseLoggingEnabled", "viewClickListener", "Lcom/mikepenz/fastadapter/listeners/ClickEventHook;", "viewClickListener$annotations", "getViewClickListener", "()Lcom/mikepenz/fastadapter/listeners/ClickEventHook;", "viewLongClickListener", "Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;", "getViewLongClickListener", "()Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;", "viewTouchListener", "Lcom/mikepenz/fastadapter/listeners/TouchEventHook;", "getViewTouchListener", "()Lcom/mikepenz/fastadapter/listeners/TouchEventHook;", "order", "addAdapter", "A", "index", "(ILcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/FastAdapter;", "addAdapters", "newAdapters", "", "addEventHook", "eventHook", "addEventHooks", "addExtension", "E", "extension", "(Lcom/mikepenz/fastadapter/IAdapterExtension;)Lcom/mikepenz/fastadapter/FastAdapter;", "cacheSizes", "", "clearTypeInstance", "getAdapter", "getExtension", "T", "()Lcom/mikepenz/fastadapter/IAdapterExtension;", "clazz", "(Ljava/lang/Class;)Lcom/mikepenz/fastadapter/IAdapterExtension;", "getHolderAdapterPosition", "holder", "getItem", "(I)Lcom/mikepenz/fastadapter/IItem;", "getItemById", "Lkotlin/Pair;", "identifier", "", "getItemCount", "getItemId", "getItemViewType", "getOrCreateExtension", "getPosition", "(Lcom/mikepenz/fastadapter/IItem;)I", "getPreItemCount", "getPreItemCountByOrder", "getRelativeInfo", "Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;", "getTypeInstance", "type", "notifyAdapterDataSetChanged", "notifyAdapterItemChanged", "payload", "", "notifyAdapterItemInserted", "notifyAdapterItemMoved", "fromPosition", "toPosition", "notifyAdapterItemRangeChanged", "itemCount", "notifyAdapterItemRangeInserted", "notifyAdapterItemRangeRemoved", "notifyAdapterItemRemoved", "onAttachedToRecyclerView", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "onBindViewHolder", "payloads", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onDetachedFromRecyclerView", "onFailedToRecycleView", "onViewAttachedToWindow", "onViewDetachedFromWindow", "onViewRecycled", "prepareAdapters", "recursive", "Lcom/mikepenz/fastadapter/utils/Triple;", "predicate", "Lcom/mikepenz/fastadapter/utils/AdapterPredicate;", "stopOnMatch", "globalStartPosition", "registerItemFactory", "registerTypeInstance", "(Lcom/mikepenz/fastadapter/IItem;)V", "requireExtension", "requireOrCreateExtension", "saveInstanceState", "Landroid/os/Bundle;", "savedInstanceState", "prefix", "", "withSavedInstanceState", "Companion", "RelativeInfo", "ViewHolder", "fastadapter"}, k = 1, mv = {1, 1, 16})
public class FastAdapter<Item extends IItem<? extends RecyclerView.ViewHolder>> extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "FastAdapter";
    private List<EventHook<? extends Item>> _eventHooks;
    private int globalSize;
    private boolean legacyBindViewMode;
    private Function4<? super View, ? super IAdapter<Item>, ? super Item, ? super Integer, Boolean> onClickListener;
    private Function4<? super View, ? super IAdapter<Item>, ? super Item, ? super Integer, Boolean> onLongClickListener;
    private Function4<? super View, ? super IAdapter<Item>, ? super Item, ? super Integer, Boolean> onPreClickListener;
    private Function4<? super View, ? super IAdapter<Item>, ? super Item, ? super Integer, Boolean> onPreLongClickListener;
    private Function5<? super View, ? super MotionEvent, ? super IAdapter<Item>, ? super Item, ? super Integer, Boolean> onTouchListener;
    private final ArrayList<IAdapter<Item>> adapters = new ArrayList<>();
    private IItemVHFactoryCache<IItemVHFactory<?>> itemVHFactoryCache = new DefaultItemVHFactoryCache();
    private final SparseArray<IAdapter<Item>> adapterSizes = new SparseArray<>();
    private final ArrayMap<Class<?>, IAdapterExtension<Item>> extensionsCache = new ArrayMap<>();
    private boolean attachDefaultListeners = true;
    private final VerboseLogger logger = new VerboseLogger(TAG);
    private OnCreateViewHolderListener<Item> onCreateViewHolderListener = new OnCreateViewHolderListenerImpl();
    private OnBindViewHolderListener onBindViewHolderListener = new OnBindViewHolderListenerImpl();
    private final ClickEventHook<Item> viewClickListener = (ClickEventHook) new ClickEventHook<Item>() { // from class: com.mikepenz.fastadapter.FastAdapter$viewClickListener$1
        /* JADX WARN: Incorrect types in method signature: (Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter<TItem;>;TItem;)V */
        @Override // com.mikepenz.fastadapter.listeners.ClickEventHook
        public void onClick(View v, int position, FastAdapter fastAdapter, IItem item) {
            IAdapter adapter;
            Function4 onClickListener;
            Function4 onItemClickListener;
            Function4 onPreItemClickListener;
            Intrinsics.checkParameterIsNotNull(v, "v");
            Intrinsics.checkParameterIsNotNull(fastAdapter, "fastAdapter");
            Intrinsics.checkParameterIsNotNull(item, "item");
            if (item.getIsEnabled() && (adapter = fastAdapter.getAdapter(position)) != null) {
                boolean z = item instanceof IClickable;
                IClickable iClickable = (IClickable) (!z ? null : item);
                if (iClickable == null || (onPreItemClickListener = iClickable.getOnPreItemClickListener()) == null || !((Boolean) onPreItemClickListener.invoke(v, adapter, item, Integer.valueOf(position))).booleanValue()) {
                    Function4 onPreClickListener = fastAdapter.getOnPreClickListener();
                    if (onPreClickListener == null || !((Boolean) onPreClickListener.invoke(v, adapter, item, Integer.valueOf(position))).booleanValue()) {
                        Iterator it = fastAdapter.extensionsCache.values().iterator();
                        while (it.hasNext()) {
                            if (((IAdapterExtension) it.next()).onClick(v, position, fastAdapter, item)) {
                                return;
                            }
                        }
                        IClickable iClickable2 = (IClickable) (z ? item : null);
                        if ((iClickable2 == null || (onItemClickListener = iClickable2.getOnItemClickListener()) == null || !((Boolean) onItemClickListener.invoke(v, adapter, item, Integer.valueOf(position))).booleanValue()) && (onClickListener = fastAdapter.getOnClickListener()) != null) {
                            ((Boolean) onClickListener.invoke(v, adapter, item, Integer.valueOf(position))).booleanValue();
                        }
                    }
                }
            }
        }
    };
    private final LongClickEventHook<Item> viewLongClickListener = (LongClickEventHook) new LongClickEventHook<Item>() { // from class: com.mikepenz.fastadapter.FastAdapter$viewLongClickListener$1
        /* JADX WARN: Incorrect types in method signature: (Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter<TItem;>;TItem;)Z */
        @Override // com.mikepenz.fastadapter.listeners.LongClickEventHook
        public boolean onLongClick(View v, int position, FastAdapter fastAdapter, IItem item) {
            IAdapter adapter;
            Intrinsics.checkParameterIsNotNull(v, "v");
            Intrinsics.checkParameterIsNotNull(fastAdapter, "fastAdapter");
            Intrinsics.checkParameterIsNotNull(item, "item");
            if (item.getIsEnabled() && (adapter = fastAdapter.getAdapter(position)) != null) {
                Function4 onPreLongClickListener = fastAdapter.getOnPreLongClickListener();
                if (onPreLongClickListener != null && ((Boolean) onPreLongClickListener.invoke(v, adapter, item, Integer.valueOf(position))).booleanValue()) {
                    return true;
                }
                Iterator it = fastAdapter.extensionsCache.values().iterator();
                while (it.hasNext()) {
                    if (((IAdapterExtension) it.next()).onLongClick(v, position, fastAdapter, item)) {
                        return true;
                    }
                }
                Function4 onLongClickListener = fastAdapter.getOnLongClickListener();
                if (onLongClickListener != null && ((Boolean) onLongClickListener.invoke(v, adapter, item, Integer.valueOf(position))).booleanValue()) {
                    return true;
                }
            }
            return false;
        }
    };
    private final TouchEventHook<Item> viewTouchListener = (TouchEventHook) new TouchEventHook<Item>() { // from class: com.mikepenz.fastadapter.FastAdapter$viewTouchListener$1
        /* JADX WARN: Incorrect types in method signature: (Landroid/view/View;Landroid/view/MotionEvent;ILcom/mikepenz/fastadapter/FastAdapter<TItem;>;TItem;)Z */
        @Override // com.mikepenz.fastadapter.listeners.TouchEventHook
        public boolean onTouch(View v, MotionEvent event, int position, FastAdapter fastAdapter, IItem item) {
            IAdapter adapter;
            Function5 onTouchListener;
            Intrinsics.checkParameterIsNotNull(v, "v");
            Intrinsics.checkParameterIsNotNull(event, "event");
            Intrinsics.checkParameterIsNotNull(fastAdapter, "fastAdapter");
            Intrinsics.checkParameterIsNotNull(item, "item");
            Iterator it = fastAdapter.extensionsCache.values().iterator();
            while (it.hasNext()) {
                if (((IAdapterExtension) it.next()).onTouch(v, event, position, fastAdapter, item)) {
                    return true;
                }
            }
            return (fastAdapter.getOnTouchListener() == null || (adapter = fastAdapter.getAdapter(position)) == null || (onTouchListener = fastAdapter.getOnTouchListener()) == null || !((Boolean) onTouchListener.invoke(v, event, adapter, item, Integer.valueOf(position))).booleanValue()) ? false : true;
        }
    };

    @JvmStatic
    public static final <Item extends IItem<? extends RecyclerView.ViewHolder>> FastAdapter<Item> getFromHolderTag(RecyclerView.ViewHolder viewHolder) {
        return INSTANCE.getFromHolderTag(viewHolder);
    }

    @JvmStatic
    public static final <Item extends IItem<? extends RecyclerView.ViewHolder>> Item getHolderAdapterItem(RecyclerView.ViewHolder viewHolder) {
        return (Item) INSTANCE.getHolderAdapterItem(viewHolder);
    }

    @JvmStatic
    public static final <Item extends IItem<? extends RecyclerView.ViewHolder>> Item getHolderAdapterItem(RecyclerView.ViewHolder viewHolder, int i) {
        return (Item) INSTANCE.getHolderAdapterItem(viewHolder, i);
    }

    @JvmStatic
    public static final <Item extends IItem<? extends RecyclerView.ViewHolder>> Item getHolderAdapterItemTag(RecyclerView.ViewHolder viewHolder) {
        return (Item) INSTANCE.getHolderAdapterItemTag(viewHolder);
    }

    @JvmStatic
    public static final <Item extends IItem<? extends RecyclerView.ViewHolder>> Triple<Boolean, Item, Integer> recursiveSub(IAdapter<Item> iAdapter, int i, IExpandable<?> iExpandable, AdapterPredicate<Item> adapterPredicate, boolean z) {
        return INSTANCE.recursiveSub(iAdapter, i, iExpandable, adapterPredicate, z);
    }

    public static /* synthetic */ void viewClickListener$annotations() {
    }

    @JvmStatic
    public static final <Item extends IItem<? extends RecyclerView.ViewHolder>> FastAdapter<Item> with(IAdapter<Item> iAdapter) {
        return INSTANCE.with(iAdapter);
    }

    @JvmStatic
    public static final <Item extends IItem<? extends RecyclerView.ViewHolder>> FastAdapter<Item> with(Collection<? extends IAdapter<? extends Item>> collection) {
        return INSTANCE.with(collection);
    }

    @JvmStatic
    public static final <Item extends IItem<? extends RecyclerView.ViewHolder>> FastAdapter<Item> with(Collection<? extends IAdapter<? extends Item>> collection, Collection<? extends IAdapterExtension<Item>> collection2) {
        return INSTANCE.with(collection, collection2);
    }

    public void notifyAdapterItemChanged(int i) {
        notifyAdapterItemChanged$default(this, i, null, 2, null);
    }

    public void notifyAdapterItemRangeChanged(int i, int i2) {
        notifyAdapterItemRangeChanged$default(this, i, i2, null, 4, null);
    }

    public Bundle saveInstanceState(Bundle bundle) {
        return saveInstanceState$default(this, bundle, null, 2, null);
    }

    public final FastAdapter<Item> withSavedInstanceState(Bundle bundle) {
        return withSavedInstanceState$default(this, bundle, null, 2, null);
    }

    public FastAdapter() {
        setHasStableIds(true);
    }

    public IItemVHFactoryCache<IItemVHFactory<?>> getItemVHFactoryCache() {
        return this.itemVHFactoryCache;
    }

    public void setItemVHFactoryCache(IItemVHFactoryCache<IItemVHFactory<?>> iItemVHFactoryCache) {
        Intrinsics.checkParameterIsNotNull(iItemVHFactoryCache, "<set-?>");
        this.itemVHFactoryCache = iItemVHFactoryCache;
    }

    public final List<EventHook<? extends Item>> getEventHooks() {
        List<EventHook<? extends Item>> list = this._eventHooks;
        if (list != null) {
            return list;
        }
        LinkedList linkedList = new LinkedList();
        this._eventHooks = linkedList;
        return linkedList;
    }

    public final boolean getLegacyBindViewMode() {
        return this.legacyBindViewMode;
    }

    public final void setLegacyBindViewMode(boolean z) {
        this.legacyBindViewMode = z;
    }

    public final boolean getAttachDefaultListeners() {
        return this.attachDefaultListeners;
    }

    public final void setAttachDefaultListeners(boolean z) {
        this.attachDefaultListeners = z;
    }

    public final boolean getVerboseLoggingEnabled() {
        return this.logger.getIsEnabled();
    }

    public final void setVerboseLoggingEnabled(boolean z) {
        this.logger.setEnabled(z);
    }

    public final Function4<View, IAdapter<Item>, Item, Integer, Boolean> getOnPreClickListener() {
        return this.onPreClickListener;
    }

    public final void setOnPreClickListener(Function4<? super View, ? super IAdapter<Item>, ? super Item, ? super Integer, Boolean> function4) {
        this.onPreClickListener = function4;
    }

    public final Function4<View, IAdapter<Item>, Item, Integer, Boolean> getOnClickListener() {
        return this.onClickListener;
    }

    public final void setOnClickListener(Function4<? super View, ? super IAdapter<Item>, ? super Item, ? super Integer, Boolean> function4) {
        this.onClickListener = function4;
    }

    public final Function4<View, IAdapter<Item>, Item, Integer, Boolean> getOnPreLongClickListener() {
        return this.onPreLongClickListener;
    }

    public final void setOnPreLongClickListener(Function4<? super View, ? super IAdapter<Item>, ? super Item, ? super Integer, Boolean> function4) {
        this.onPreLongClickListener = function4;
    }

    public final Function4<View, IAdapter<Item>, Item, Integer, Boolean> getOnLongClickListener() {
        return this.onLongClickListener;
    }

    public final void setOnLongClickListener(Function4<? super View, ? super IAdapter<Item>, ? super Item, ? super Integer, Boolean> function4) {
        this.onLongClickListener = function4;
    }

    public final Function5<View, MotionEvent, IAdapter<Item>, Item, Integer, Boolean> getOnTouchListener() {
        return this.onTouchListener;
    }

    public final void setOnTouchListener(Function5<? super View, ? super MotionEvent, ? super IAdapter<Item>, ? super Item, ? super Integer, Boolean> function5) {
        this.onTouchListener = function5;
    }

    public final OnCreateViewHolderListener<Item> getOnCreateViewHolderListener() {
        return this.onCreateViewHolderListener;
    }

    public final void setOnCreateViewHolderListener(OnCreateViewHolderListener<Item> onCreateViewHolderListener) {
        Intrinsics.checkParameterIsNotNull(onCreateViewHolderListener, "<set-?>");
        this.onCreateViewHolderListener = onCreateViewHolderListener;
    }

    public final OnBindViewHolderListener getOnBindViewHolderListener() {
        return this.onBindViewHolderListener;
    }

    public final void setOnBindViewHolderListener(OnBindViewHolderListener onBindViewHolderListener) {
        Intrinsics.checkParameterIsNotNull(onBindViewHolderListener, "<set-?>");
        this.onBindViewHolderListener = onBindViewHolderListener;
    }

    public final Collection<IAdapterExtension<Item>> getExtensions() {
        Collection<IAdapterExtension<Item>> collectionValues = this.extensionsCache.values();
        Intrinsics.checkExpressionValueIsNotNull(collectionValues, "extensionsCache.values");
        return collectionValues;
    }

    public ClickEventHook<Item> getViewClickListener() {
        return this.viewClickListener;
    }

    public LongClickEventHook<Item> getViewLongClickListener() {
        return this.viewLongClickListener;
    }

    public TouchEventHook<Item> getViewTouchListener() {
        return this.viewTouchListener;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <A extends IAdapter<Item>> FastAdapter<Item> addAdapter(int index, A adapter) {
        Intrinsics.checkParameterIsNotNull(adapter, "adapter");
        this.adapters.add(index, adapter);
        prepareAdapters(adapter);
        return this;
    }

    public <A extends IAdapter<Item>> FastAdapter<Item> addAdapters(List<? extends A> newAdapters) {
        Intrinsics.checkParameterIsNotNull(newAdapters, "newAdapters");
        this.adapters.addAll(newAdapters);
        Iterator<T> it = newAdapters.iterator();
        while (it.hasNext()) {
            prepareAdapters((IAdapter) it.next());
        }
        return this;
    }

    private final void prepareAdapters(IAdapter<Item> adapter) {
        adapter.setFastAdapter(this);
        int i = 0;
        for (Object obj : this.adapters) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            ((IAdapter) obj).setOrder(i);
            i = i2;
        }
        cacheSizes();
    }

    public IAdapter<Item> adapter(int order) {
        return (IAdapter) CollectionsKt.getOrNull(this.adapters, order);
    }

    public final <E extends IAdapterExtension<Item>> FastAdapter<Item> addExtension(E extension) {
        Intrinsics.checkParameterIsNotNull(extension, "extension");
        if (this.extensionsCache.containsKey(extension.getClass())) {
            throw new IllegalStateException("The given extension was already registered with this FastAdapter instance");
        }
        this.extensionsCache.put(extension.getClass(), extension);
        return this;
    }

    public final <T extends IAdapterExtension<Item>> T getExtension(Class<? super T> clazz) {
        Intrinsics.checkParameterIsNotNull(clazz, "clazz");
        return this.extensionsCache.get(clazz);
    }

    public final /* synthetic */ <T extends IAdapterExtension<Item>> T getExtension() {
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) getExtension(IAdapterExtension.class);
    }

    public final <T extends IAdapterExtension<Item>> T getOrCreateExtension(Class<? super T> clazz) {
        Intrinsics.checkParameterIsNotNull(clazz, "clazz");
        if (this.extensionsCache.containsKey(clazz)) {
            IAdapterExtension<Item> iAdapterExtension = this.extensionsCache.get(clazz);
            if (iAdapterExtension != null) {
                return iAdapterExtension;
            }
            throw new TypeCastException("null cannot be cast to non-null type T");
        }
        T t = (T) ExtensionsFactories.INSTANCE.create(this, clazz);
        if (!(t instanceof IAdapterExtension)) {
            t = null;
        }
        if (t == null) {
            return null;
        }
        this.extensionsCache.put(clazz, t);
        return t;
    }

    public final /* synthetic */ <T extends IAdapterExtension<Item>> T getOrCreateExtension() {
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) getOrCreateExtension(IAdapterExtension.class);
    }

    public final /* synthetic */ <T extends IAdapterExtension<Item>> T requireOrCreateExtension() {
        Intrinsics.reifiedOperationMarker(4, "T");
        T t = (T) getOrCreateExtension(IAdapterExtension.class);
        if (t == null) {
            Intrinsics.throwNpe();
        }
        return t;
    }

    public final FastAdapter<Item> addEventHook(EventHook<? extends Item> eventHook) {
        Intrinsics.checkParameterIsNotNull(eventHook, "eventHook");
        getEventHooks().add(eventHook);
        return this;
    }

    public final FastAdapter<Item> addEventHooks(Collection<? extends EventHook<? extends Item>> eventHooks) {
        Intrinsics.checkParameterIsNotNull(eventHooks, "eventHooks");
        getEventHooks().addAll(eventHooks);
        return this;
    }

    public static /* synthetic */ FastAdapter withSavedInstanceState$default(FastAdapter fastAdapter, Bundle bundle, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: withSavedInstanceState");
        }
        if ((i & 2) != 0) {
            str = "";
        }
        return fastAdapter.withSavedInstanceState(bundle, str);
    }

    public final FastAdapter<Item> withSavedInstanceState(Bundle savedInstanceState, String prefix) {
        Intrinsics.checkParameterIsNotNull(prefix, "prefix");
        Iterator<IAdapterExtension<Item>> it = this.extensionsCache.values().iterator();
        while (it.hasNext()) {
            it.next().withSavedInstanceState(savedInstanceState, prefix);
        }
        return this;
    }

    @Deprecated(message = "Register the factory instead", replaceWith = @ReplaceWith(expression = "registerItemFactory(item)", imports = {}))
    public final void registerTypeInstance(Item item) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        if (item instanceof IItemVHFactory) {
            registerItemFactory(item.getType(), (IItemVHFactory) item);
            return;
        }
        IItemVHFactory<?> factory = item.getFactory();
        if (factory != null) {
            registerItemFactory(item.getType(), factory);
        }
    }

    public final void registerItemFactory(int type, IItemVHFactory<?> item) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        getItemVHFactoryCache().register(type, item);
    }

    public final IItemVHFactory<?> getTypeInstance(int type) {
        return getItemVHFactoryCache().get(type);
    }

    public final void clearTypeInstance() {
        getItemVHFactoryCache().clear();
    }

    public int getHolderAdapterPosition(RecyclerView.ViewHolder holder) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        return holder.getAdapterPosition();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        this.logger.log("onCreateViewHolder: " + viewType);
        IItemVHFactory<?> typeInstance = getTypeInstance(viewType);
        RecyclerView.ViewHolder viewHolderOnPreCreateViewHolder = this.onCreateViewHolderListener.onPreCreateViewHolder(this, parent, viewType, typeInstance);
        viewHolderOnPreCreateViewHolder.itemView.setTag(R.id.fastadapter_item_adapter, this);
        if (this.attachDefaultListeners) {
            ClickEventHook<Item> viewClickListener = getViewClickListener();
            View view = viewHolderOnPreCreateViewHolder.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "holder.itemView");
            EventHookUtilKt.attachToView(viewClickListener, viewHolderOnPreCreateViewHolder, view);
            LongClickEventHook<Item> viewLongClickListener = getViewLongClickListener();
            View view2 = viewHolderOnPreCreateViewHolder.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view2, "holder.itemView");
            EventHookUtilKt.attachToView(viewLongClickListener, viewHolderOnPreCreateViewHolder, view2);
            TouchEventHook<Item> viewTouchListener = getViewTouchListener();
            View view3 = viewHolderOnPreCreateViewHolder.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view3, "holder.itemView");
            EventHookUtilKt.attachToView(viewTouchListener, viewHolderOnPreCreateViewHolder, view3);
        }
        return this.onCreateViewHolderListener.onPostCreateViewHolder(this, viewHolderOnPreCreateViewHolder, typeInstance);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        if (this.legacyBindViewMode) {
            if (getVerboseLoggingEnabled()) {
                Log.v(TAG, "onBindViewHolderLegacy: " + position + "/" + holder.getItemViewType() + " isLegacy: true");
            }
            holder.itemView.setTag(R.id.fastadapter_item_adapter, this);
            OnBindViewHolderListener onBindViewHolderListener = this.onBindViewHolderListener;
            List<? extends Object> listEmptyList = Collections.emptyList();
            Intrinsics.checkExpressionValueIsNotNull(listEmptyList, "Collections.emptyList()");
            onBindViewHolderListener.onBindViewHolder(holder, position, listEmptyList);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position, List<? extends Object> payloads) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        Intrinsics.checkParameterIsNotNull(payloads, "payloads");
        if (!this.legacyBindViewMode) {
            if (getVerboseLoggingEnabled()) {
                Log.v(TAG, "onBindViewHolder: " + position + "/" + holder.getItemViewType() + " isLegacy: false");
            }
            holder.itemView.setTag(R.id.fastadapter_item_adapter, this);
            this.onBindViewHolderListener.onBindViewHolder(holder, position, payloads);
        }
        super.onBindViewHolder(holder, position, payloads);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(RecyclerView.ViewHolder holder) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        this.logger.log("onViewRecycled: " + holder.getItemViewType());
        super.onViewRecycled(holder);
        this.onBindViewHolderListener.unBindViewHolder(holder, holder.getAdapterPosition());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(RecyclerView.ViewHolder holder) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        this.logger.log("onViewDetachedFromWindow: " + holder.getItemViewType());
        super.onViewDetachedFromWindow(holder);
        this.onBindViewHolderListener.onViewDetachedFromWindow(holder, holder.getAdapterPosition());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.ViewHolder holder) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        this.logger.log("onViewAttachedToWindow: " + holder.getItemViewType());
        super.onViewAttachedToWindow(holder);
        this.onBindViewHolderListener.onViewAttachedToWindow(holder, holder.getAdapterPosition());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public boolean onFailedToRecycleView(RecyclerView.ViewHolder holder) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        this.logger.log("onFailedToRecycleView: " + holder.getItemViewType());
        return this.onBindViewHolderListener.onFailedToRecycleView(holder, holder.getAdapterPosition()) || super.onFailedToRecycleView(holder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
        this.logger.log("onAttachedToRecyclerView");
        super.onAttachedToRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
        this.logger.log("onDetachedFromRecyclerView");
        super.onDetachedFromRecyclerView(recyclerView);
    }

    public int getPosition(Item item) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        if (item.getIdentifier() == -1) {
            Log.e(TAG, "You have to define an identifier for your item to retrieve the position via this method");
            return -1;
        }
        return getPosition(item.getIdentifier());
    }

    public int getPosition(long identifier) {
        int adapterItemCount = 0;
        for (IAdapter<Item> iAdapter : this.adapters) {
            if (iAdapter.getOrder() >= 0) {
                int adapterPosition = iAdapter.getAdapterPosition(identifier);
                if (adapterPosition != -1) {
                    return adapterItemCount + adapterPosition;
                }
                adapterItemCount = iAdapter.getAdapterItemCount();
            }
        }
        return -1;
    }

    public Item getItem(int position) {
        if (position < 0 || position >= this.globalSize) {
            return null;
        }
        int iFloorIndex = INSTANCE.floorIndex(this.adapterSizes, position);
        return (Item) this.adapterSizes.valueAt(iFloorIndex).getAdapterItem(position - this.adapterSizes.keyAt(iFloorIndex));
    }

    public Pair<Item, Integer> getItemById(final long identifier) {
        if (identifier == -1) {
            return null;
        }
        Triple<Boolean, Item, Integer> tripleRecursive = recursive((AdapterPredicate) new AdapterPredicate<Item>() { // from class: com.mikepenz.fastadapter.FastAdapter.getItemById.1
            @Override // com.mikepenz.fastadapter.utils.AdapterPredicate
            public boolean apply(IAdapter<Item> lastParentAdapter, int lastParentPosition, Item item, int position) {
                Intrinsics.checkParameterIsNotNull(lastParentAdapter, "lastParentAdapter");
                Intrinsics.checkParameterIsNotNull(item, "item");
                return item.getIdentifier() == identifier;
            }
        }, true);
        Item itemComponent2 = tripleRecursive.component2();
        Integer numComponent3 = tripleRecursive.component3();
        if (itemComponent2 != null) {
            return TuplesKt.to(itemComponent2, numComponent3);
        }
        return null;
    }

    public RelativeInfo<Item> getRelativeInfo(int position) {
        IItem iItemPeekAdapterItem;
        if (position < 0 || position >= getGlobalSize()) {
            return new RelativeInfo<>();
        }
        RelativeInfo<Item> relativeInfo = new RelativeInfo<>();
        int iFloorIndex = INSTANCE.floorIndex(this.adapterSizes, position);
        if (iFloorIndex != -1 && (iItemPeekAdapterItem = this.adapterSizes.valueAt(iFloorIndex).peekAdapterItem(position - this.adapterSizes.keyAt(iFloorIndex))) != null) {
            relativeInfo.setItem(iItemPeekAdapterItem);
            relativeInfo.setAdapter(this.adapterSizes.valueAt(iFloorIndex));
            relativeInfo.setPosition(position);
        }
        return relativeInfo;
    }

    public IAdapter<Item> getAdapter(int position) {
        if (position < 0 || position >= this.globalSize) {
            return null;
        }
        this.logger.log("getAdapter");
        SparseArray<IAdapter<Item>> sparseArray = this.adapterSizes;
        return sparseArray.valueAt(INSTANCE.floorIndex(sparseArray, position));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        IItem item = getItem(position);
        if (item != null) {
            if (!getItemVHFactoryCache().contains(item.getType())) {
                registerTypeInstance(item);
            }
            return item.getType();
        }
        return super.getItemViewType(position);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int position) {
        IItem item = getItem(position);
        return item != null ? item.getIdentifier() : super.getItemId(position);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: getItemCount, reason: from getter */
    public int getGlobalSize() {
        return this.globalSize;
    }

    public int getPreItemCountByOrder(int order) {
        if (this.globalSize == 0) {
            return 0;
        }
        int iMin = Math.min(order, this.adapters.size());
        int adapterItemCount = 0;
        for (int i = 0; i < iMin; i++) {
            adapterItemCount += this.adapters.get(i).getAdapterItemCount();
        }
        return adapterItemCount;
    }

    public int getPreItemCount(int position) {
        if (this.globalSize == 0) {
            return 0;
        }
        SparseArray<IAdapter<Item>> sparseArray = this.adapterSizes;
        return sparseArray.keyAt(INSTANCE.floorIndex(sparseArray, position));
    }

    public static /* synthetic */ Bundle saveInstanceState$default(FastAdapter fastAdapter, Bundle bundle, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: saveInstanceState");
        }
        if ((i & 2) != 0) {
            str = "";
        }
        return fastAdapter.saveInstanceState(bundle, str);
    }

    public Bundle saveInstanceState(Bundle savedInstanceState, String prefix) {
        Intrinsics.checkParameterIsNotNull(savedInstanceState, "savedInstanceState");
        Intrinsics.checkParameterIsNotNull(prefix, "prefix");
        Iterator<IAdapterExtension<Item>> it = this.extensionsCache.values().iterator();
        while (it.hasNext()) {
            it.next().saveInstanceState(savedInstanceState, prefix);
        }
        return savedInstanceState;
    }

    protected final void cacheSizes() {
        this.adapterSizes.clear();
        int adapterItemCount = 0;
        for (IAdapter<Item> iAdapter : this.adapters) {
            if (iAdapter.getAdapterItemCount() > 0) {
                this.adapterSizes.append(adapterItemCount, iAdapter);
                adapterItemCount += iAdapter.getAdapterItemCount();
            }
        }
        if (adapterItemCount == 0 && this.adapters.size() > 0) {
            this.adapterSizes.append(0, this.adapters.get(0));
        }
        this.globalSize = adapterItemCount;
    }

    public void notifyAdapterDataSetChanged() {
        Iterator<IAdapterExtension<Item>> it = this.extensionsCache.values().iterator();
        while (it.hasNext()) {
            it.next().notifyAdapterDataSetChanged();
        }
        cacheSizes();
        notifyDataSetChanged();
    }

    public void notifyAdapterItemInserted(int position) {
        notifyAdapterItemRangeInserted(position, 1);
    }

    public void notifyAdapterItemRangeInserted(int position, int itemCount) {
        Iterator<IAdapterExtension<Item>> it = this.extensionsCache.values().iterator();
        while (it.hasNext()) {
            it.next().notifyAdapterItemRangeInserted(position, itemCount);
        }
        cacheSizes();
        notifyItemRangeInserted(position, itemCount);
    }

    public void notifyAdapterItemRemoved(int position) {
        notifyAdapterItemRangeRemoved(position, 1);
    }

    public void notifyAdapterItemRangeRemoved(int position, int itemCount) {
        Iterator<IAdapterExtension<Item>> it = this.extensionsCache.values().iterator();
        while (it.hasNext()) {
            it.next().notifyAdapterItemRangeRemoved(position, itemCount);
        }
        cacheSizes();
        notifyItemRangeRemoved(position, itemCount);
    }

    public void notifyAdapterItemMoved(int fromPosition, int toPosition) {
        Iterator<IAdapterExtension<Item>> it = this.extensionsCache.values().iterator();
        while (it.hasNext()) {
            it.next().notifyAdapterItemMoved(fromPosition, toPosition);
        }
        notifyItemMoved(fromPosition, toPosition);
    }

    public static /* synthetic */ void notifyAdapterItemChanged$default(FastAdapter fastAdapter, int i, Object obj, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: notifyAdapterItemChanged");
        }
        if ((i2 & 2) != 0) {
            obj = null;
        }
        fastAdapter.notifyAdapterItemChanged(i, obj);
    }

    public void notifyAdapterItemChanged(int position, Object payload) {
        notifyAdapterItemRangeChanged(position, 1, payload);
    }

    public static /* synthetic */ void notifyAdapterItemRangeChanged$default(FastAdapter fastAdapter, int i, int i2, Object obj, int i3, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: notifyAdapterItemRangeChanged");
        }
        if ((i3 & 4) != 0) {
            obj = null;
        }
        fastAdapter.notifyAdapterItemRangeChanged(i, i2, obj);
    }

    public void notifyAdapterItemRangeChanged(int position, int itemCount, Object payload) {
        Iterator<IAdapterExtension<Item>> it = this.extensionsCache.values().iterator();
        while (it.hasNext()) {
            it.next().notifyAdapterItemRangeChanged(position, itemCount, payload);
        }
        if (payload == null) {
            notifyItemRangeChanged(position, itemCount);
        } else {
            notifyItemRangeChanged(position, itemCount, payload);
        }
    }

    public final Triple<Boolean, Item, Integer> recursive(AdapterPredicate<Item> predicate, boolean stopOnMatch) {
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        return recursive(predicate, 0, stopOnMatch);
    }

    public final Triple<Boolean, Item, Integer> recursive(AdapterPredicate<Item> predicate, int globalStartPosition, boolean stopOnMatch) {
        IAdapter<Item> adapter;
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        int globalSize = getGlobalSize();
        while (true) {
            if (globalStartPosition < globalSize) {
                RelativeInfo<Item> relativeInfo = getRelativeInfo(globalStartPosition);
                IItem item = relativeInfo.getItem();
                if (item != null && (adapter = relativeInfo.getAdapter()) != null) {
                    if (predicate.apply(adapter, globalStartPosition, item, globalStartPosition) && stopOnMatch) {
                        return new Triple<>(true, item, Integer.valueOf(globalStartPosition));
                    }
                    IExpandable<?> iExpandable = (IExpandable) (item instanceof IExpandable ? item : null);
                    if (iExpandable != null) {
                        Triple<Boolean, Item, Integer> tripleRecursiveSub = INSTANCE.recursiveSub(adapter, globalStartPosition, iExpandable, predicate, stopOnMatch);
                        if (tripleRecursiveSub.getFirst().booleanValue() && stopOnMatch) {
                            return tripleRecursiveSub;
                        }
                    } else {
                        continue;
                    }
                }
                globalStartPosition++;
            } else {
                return new Triple<>(false, null, null);
            }
        }
    }

    /* JADX INFO: compiled from: FastAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000*\u0014\b\u0001\u0010\u0001*\u000e\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u00020\u0005B\u0005¢\u0006\u0002\u0010\u0006R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001e\u0010\r\u001a\u0004\u0018\u00018\u0001X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;", "Item", "Lcom/mikepenz/fastadapter/IItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItem;", "", "()V", "adapter", "Lcom/mikepenz/fastadapter/IAdapter;", "getAdapter", "()Lcom/mikepenz/fastadapter/IAdapter;", "setAdapter", "(Lcom/mikepenz/fastadapter/IAdapter;)V", "item", "getItem", "()Lcom/mikepenz/fastadapter/IItem;", "setItem", "(Lcom/mikepenz/fastadapter/IItem;)V", "Lcom/mikepenz/fastadapter/IItem;", "position", "", "getPosition", "()I", "setPosition", "(I)V", "fastadapter"}, k = 1, mv = {1, 1, 16})
    public static final class RelativeInfo<Item extends IItem<? extends RecyclerView.ViewHolder>> {
        private IAdapter<Item> adapter;
        private Item item;
        private int position = -1;

        public final IAdapter<Item> getAdapter() {
            return this.adapter;
        }

        public final void setAdapter(IAdapter<Item> iAdapter) {
            this.adapter = iAdapter;
        }

        public final Item getItem() {
            return this.item;
        }

        public final void setItem(Item item) {
            this.item = item;
        }

        public final int getPosition() {
            return this.position;
        }

        public final void setPosition(int i) {
            this.position = i;
        }
    }

    /* JADX INFO: compiled from: FastAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b&\u0018\u0000*\u0014\b\u0001\u0010\u0001*\u000e\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u00020\u0003B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0015\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u000bJ#\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00028\u00012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH&¢\u0006\u0002\u0010\u0010J\u0015\u0010\u0011\u001a\u00020\t2\u0006\u0010\n\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u000bJ\u0015\u0010\u0012\u001a\u00020\u00132\u0006\u0010\n\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\t2\u0006\u0010\n\u001a\u00028\u0001H&¢\u0006\u0002\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;", "Item", "Lcom/mikepenz/fastadapter/IItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItem;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "attachToWindow", "", "item", "(Lcom/mikepenz/fastadapter/IItem;)V", "bindView", "payloads", "", "", "(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V", "detachFromWindow", "failedToRecycle", "", "(Lcom/mikepenz/fastadapter/IItem;)Z", "unbindView", "fastadapter"}, k = 1, mv = {1, 1, 16})
    public static abstract class ViewHolder<Item extends IItem<? extends RecyclerView.ViewHolder>> extends RecyclerView.ViewHolder {
        public void attachToWindow(Item item) {
            Intrinsics.checkParameterIsNotNull(item, "item");
        }

        public abstract void bindView(Item item, List<? extends Object> payloads);

        public void detachFromWindow(Item item) {
            Intrinsics.checkParameterIsNotNull(item, "item");
        }

        public boolean failedToRecycle(Item item) {
            Intrinsics.checkParameterIsNotNull(item, "item");
            return false;
        }

        public abstract void unbindView(Item item);

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
        }
    }

    /* JADX INFO: compiled from: FastAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\t\u001a\u00020\u0006H\u0002J0\u0010\n\u001a\n\u0012\u0004\u0012\u0002H\f\u0018\u00010\u000b\"\u0014\b\u0001\u0010\f*\u000e\u0012\u0006\b\u0001\u0012\u00020\u000e0\rj\u0002`\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000eH\u0007J/\u0010\u0011\u001a\u0004\u0018\u0001H\f\"\u0014\b\u0001\u0010\f*\u000e\u0012\u0006\b\u0001\u0012\u00020\u000e0\rj\u0002`\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000eH\u0007¢\u0006\u0002\u0010\u0012J7\u0010\u0011\u001a\u0004\u0018\u0001H\f\"\u0014\b\u0001\u0010\f*\u000e\u0012\u0006\b\u0001\u0012\u00020\u000e0\rj\u0002`\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0013\u001a\u00020\u0006H\u0007¢\u0006\u0002\u0010\u0014J/\u0010\u0015\u001a\u0004\u0018\u0001H\f\"\u0014\b\u0001\u0010\f*\u000e\u0012\u0006\b\u0001\u0012\u00020\u000e0\rj\u0002`\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000eH\u0007¢\u0006\u0002\u0010\u0012Jh\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u00020\u00060\u0017\"\u0014\b\u0001\u0010\f*\u000e\u0012\u0006\b\u0001\u0012\u00020\u000e0\rj\u0002`\u000f2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\f0\u001a2\u0006\u0010\u001b\u001a\u00020\u00062\n\u0010\u001c\u001a\u0006\u0012\u0002\b\u00030\u001d2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\f0\u001f2\u0006\u0010 \u001a\u00020\u0018H\u0007J2\u0010!\u001a\b\u0012\u0004\u0012\u0002H\f0\u000b\"\u0014\b\u0001\u0010\f*\u000e\u0012\u0006\b\u0001\u0012\u00020\u000e0\rj\u0002`\u000f2\f\u0010\"\u001a\b\u0012\u0004\u0012\u0002H\f0\u001aH\u0007J<\u0010!\u001a\b\u0012\u0004\u0012\u0002H\f0\u000b\"\u0014\b\u0001\u0010\f*\u000e\u0012\u0006\b\u0001\u0012\u00020\u000e0\rj\u0002`\u000f2\u0016\u0010#\u001a\u0012\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u0002H\f0\u001a\u0018\u00010$H\u0007JT\u0010!\u001a\b\u0012\u0004\u0012\u0002H\f0\u000b\"\u0014\b\u0001\u0010\f*\u000e\u0012\u0006\b\u0001\u0012\u00020\u000e0\rj\u0002`\u000f2\u0016\u0010#\u001a\u0012\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u0002H\f0\u001a\u0018\u00010$2\u0016\b\u0002\u0010%\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\f0&\u0018\u00010$H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/mikepenz/fastadapter/FastAdapter$Companion;", "", "()V", "TAG", "", "floorIndex", "", "sparseArray", "Landroid/util/SparseArray;", "key", "getFromHolderTag", "Lcom/mikepenz/fastadapter/FastAdapter;", "Item", "Lcom/mikepenz/fastadapter/IItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItem;", "holder", "getHolderAdapterItem", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/IItem;", "position", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Lcom/mikepenz/fastadapter/IItem;", "getHolderAdapterItemTag", "recursiveSub", "Lcom/mikepenz/fastadapter/utils/Triple;", "", "lastParentAdapter", "Lcom/mikepenz/fastadapter/IAdapter;", "lastParentPosition", "parent", "Lcom/mikepenz/fastadapter/IExpandable;", "predicate", "Lcom/mikepenz/fastadapter/utils/AdapterPredicate;", "stopOnMatch", "with", "adapter", "adapters", "", "extensions", "Lcom/mikepenz/fastadapter/IAdapterExtension;", "fastadapter"}, k = 1, mv = {1, 1, 16})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int floorIndex(SparseArray<?> sparseArray, int key) {
            int iIndexOfKey = sparseArray.indexOfKey(key);
            return iIndexOfKey < 0 ? (~iIndexOfKey) - 1 : iIndexOfKey;
        }

        @JvmStatic
        public final <Item extends IItem<? extends RecyclerView.ViewHolder>> FastAdapter<Item> with(IAdapter<Item> adapter) {
            Intrinsics.checkParameterIsNotNull(adapter, "adapter");
            FastAdapter<Item> fastAdapter = new FastAdapter<>();
            fastAdapter.addAdapter(0, adapter);
            return fastAdapter;
        }

        @JvmStatic
        public final <Item extends IItem<? extends RecyclerView.ViewHolder>> FastAdapter<Item> with(Collection<? extends IAdapter<? extends Item>> adapters) {
            return with(adapters, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ FastAdapter with$default(Companion companion, Collection collection, Collection collection2, int i, Object obj) {
            if ((i & 2) != 0) {
                collection2 = null;
            }
            return companion.with(collection, collection2);
        }

        @JvmStatic
        public final <Item extends IItem<? extends RecyclerView.ViewHolder>> FastAdapter<Item> with(Collection<? extends IAdapter<? extends Item>> adapters, Collection<? extends IAdapterExtension<Item>> extensions) {
            FastAdapter<Item> fastAdapter = new FastAdapter<>();
            if (adapters == null) {
                ArrayList arrayList = ((FastAdapter) fastAdapter).adapters;
                ItemAdapter<Item> itemAdapterItems = ItemAdapter.INSTANCE.items();
                if (itemAdapterItems == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.mikepenz.fastadapter.IAdapter<Item>");
                }
                arrayList.add(itemAdapterItems);
            } else {
                ((FastAdapter) fastAdapter).adapters.addAll(adapters);
            }
            int size = ((FastAdapter) fastAdapter).adapters.size();
            for (int i = 0; i < size; i++) {
                IAdapter iAdapter = (IAdapter) ((FastAdapter) fastAdapter).adapters.get(i);
                iAdapter.setFastAdapter(fastAdapter);
                iAdapter.setOrder(i);
            }
            fastAdapter.cacheSizes();
            if (extensions != null) {
                Iterator<T> it = extensions.iterator();
                while (it.hasNext()) {
                    fastAdapter.addExtension((IAdapterExtension) it.next());
                }
            }
            return fastAdapter;
        }

        @JvmStatic
        public final <Item extends IItem<? extends RecyclerView.ViewHolder>> FastAdapter<Item> getFromHolderTag(RecyclerView.ViewHolder holder) {
            View view;
            Object tag = (holder == null || (view = holder.itemView) == null) ? null : view.getTag(R.id.fastadapter_item_adapter);
            return (FastAdapter) (tag instanceof FastAdapter ? tag : null);
        }

        @JvmStatic
        public final <Item extends IItem<? extends RecyclerView.ViewHolder>> Item getHolderAdapterItem(RecyclerView.ViewHolder holder) {
            FastAdapter<Item> fromHolderTag;
            if (holder != null && (fromHolderTag = getFromHolderTag(holder)) != null) {
                Integer numValueOf = Integer.valueOf(fromHolderTag.getHolderAdapterPosition(holder));
                if (numValueOf.intValue() == -1) {
                    numValueOf = null;
                }
                if (numValueOf != null) {
                    return (Item) fromHolderTag.getItem(numValueOf.intValue());
                }
            }
            return null;
        }

        @JvmStatic
        public final <Item extends IItem<? extends RecyclerView.ViewHolder>> Item getHolderAdapterItem(RecyclerView.ViewHolder holder, int position) {
            FastAdapter<Item> fromHolderTag = getFromHolderTag(holder);
            if (fromHolderTag != null) {
                return (Item) fromHolderTag.getItem(position);
            }
            return null;
        }

        @JvmStatic
        public final <Item extends IItem<? extends RecyclerView.ViewHolder>> Item getHolderAdapterItemTag(RecyclerView.ViewHolder holder) {
            View view;
            Object tag = (holder == null || (view = holder.itemView) == null) ? null : view.getTag(R.id.fastadapter_item);
            return (Item) (tag instanceof IItem ? tag : null);
        }

        @JvmStatic
        public final <Item extends IItem<? extends RecyclerView.ViewHolder>> Triple<Boolean, Item, Integer> recursiveSub(IAdapter<Item> lastParentAdapter, int lastParentPosition, IExpandable<?> parent, AdapterPredicate<Item> predicate, boolean stopOnMatch) {
            Intrinsics.checkParameterIsNotNull(lastParentAdapter, "lastParentAdapter");
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            Intrinsics.checkParameterIsNotNull(predicate, "predicate");
            if (!parent.isExpanded()) {
                Iterator<T> it = parent.getSubItems().iterator();
                while (it.hasNext()) {
                    ISubItem iSubItem = (ISubItem) it.next();
                    if (iSubItem == null) {
                        throw new TypeCastException("null cannot be cast to non-null type Item");
                    }
                    if (predicate.apply(lastParentAdapter, lastParentPosition, iSubItem, -1) && stopOnMatch) {
                        return new Triple<>(true, iSubItem, null);
                    }
                    if (iSubItem instanceof IExpandable) {
                        Triple<Boolean, Item, Integer> tripleRecursiveSub = FastAdapter.INSTANCE.recursiveSub(lastParentAdapter, lastParentPosition, (IExpandable) iSubItem, predicate, stopOnMatch);
                        if (tripleRecursiveSub.getFirst().booleanValue()) {
                            return tripleRecursiveSub;
                        }
                    }
                }
            }
            return new Triple<>(false, null, null);
        }
    }

    public final /* synthetic */ <T extends IAdapterExtension<Item>> T requireExtension() {
        Intrinsics.reifiedOperationMarker(4, "T");
        T t = (T) getExtension(IAdapterExtension.class);
        if (t == null) {
            Intrinsics.throwNpe();
        }
        return t;
    }
}
