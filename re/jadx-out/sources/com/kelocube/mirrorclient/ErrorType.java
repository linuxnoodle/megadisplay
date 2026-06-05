package com.kelocube.mirrorclient;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;

/* JADX INFO: compiled from: AppException.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/kelocube/mirrorclient/ErrorType;", "", "()V", "Companion", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ErrorType {
    public static final int AOAPDenied = 4;
    public static final int Disconnected = 1;
    public static final int DriverError = 5;
    public static final int GPUDriverError = 12;
    public static final int HostError = 10;
    public static final int LicenseError = 6;
    public static final int NoEncoder = 13;
    public static final int OutOfMemory = 11;
    public static final int TimedOut = 8;
    public static final int TrialExpired = 7;
    public static final int Unknown = 0;
    public static final int UpdateClient = 3;
    public static final int UpdateHost = 2;
    public static final int WarnBadResolution = 9;
    public static final int WarnSoftwareEncoder = 14;
}
