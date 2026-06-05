package com.kelocube.mirrorclient;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;

/* JADX INFO: compiled from: Transport.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082D¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082D¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000\"\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\t\"\u000e\u0010\n\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000*@\u0010\f\"\u001d\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\r2\u001d\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\r*\u0098\u0001\u0010\u0013\"2\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0015\u0012\u0013\u0012\u0011`\u0016¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u00120\u00142`\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0015\u0012A\u0012?\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\rj\u0011`\u0016¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0017¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u00120\u0014¨\u0006\u0018"}, d2 = {"HANDSHAKE_BASE", "", "HANDSHAKE_VERSION_LENGTH", "", "READ_BUFFER_SIZE_0", "READ_BUFFER_SIZE_1", "SEND_BUFFER_SIZE", "SUPPORTED_HOST_VERSIONS", "", "[Ljava/lang/Integer;", "TIMEOUT_TICKS", "TIMEOUT_TICK_MS", "DataCallback", "Lkotlin/Function1;", "Ljava/nio/ByteBuffer;", "Lkotlin/ParameterName;", "name", "to", "", "OnDataHandler", "Lkotlin/Function2;", "maxLength", "Lcom/kelocube/mirrorclient/DataCallback;", "callback", "app_release"}, k = 2, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class TransportKt {
    private static final String HANDSHAKE_BASE = "KELOCUBE_MIRR_";
    private static final int HANDSHAKE_VERSION_LENGTH = 3;
    private static final int READ_BUFFER_SIZE_0 = 100000;
    private static final int READ_BUFFER_SIZE_1 = 10000000;
    private static final int SEND_BUFFER_SIZE = 10000;
    private static final Integer[] SUPPORTED_HOST_VERSIONS = {4, 3};
    private static final int TIMEOUT_TICKS = 10;
    private static final int TIMEOUT_TICK_MS = 1000;
}
