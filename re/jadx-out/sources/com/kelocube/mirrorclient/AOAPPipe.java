package com.kelocube.mirrorclient;

import android.os.Handler;
import android.os.ParcelFileDescriptor;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AOAPPipe.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0016\u001a\u00020\u0017R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0019\u0010\u000f\u001a\n \u0011*\u0004\u0018\u00010\u00100\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0014\u001a\n \u0011*\u0004\u0018\u00010\u00100\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/kelocube/mirrorclient/AOAPPipe;", "", "pfd", "Landroid/os/ParcelFileDescriptor;", "(Landroid/os/ParcelFileDescriptor;)V", "handler", "Landroid/os/Handler;", "getHandler", "()Landroid/os/Handler;", "inUse", "", "getInUse", "()Z", "setInUse", "(Z)V", "inputChannel", "Ljava/nio/channels/FileChannel;", "kotlin.jvm.PlatformType", "getInputChannel", "()Ljava/nio/channels/FileChannel;", "outputChannel", "getOutputChannel", "close", "", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class AOAPPipe {
    private final Handler handler;
    private boolean inUse;
    private final FileChannel inputChannel;
    private final FileChannel outputChannel;
    private final ParcelFileDescriptor pfd;

    public AOAPPipe(ParcelFileDescriptor pfd) {
        Intrinsics.checkNotNullParameter(pfd, "pfd");
        this.pfd = pfd;
        this.inputChannel = new FileInputStream(pfd.getFileDescriptor()).getChannel();
        this.outputChannel = new FileOutputStream(pfd.getFileDescriptor()).getChannel();
        this.handler = new Handler();
    }

    public final FileChannel getInputChannel() {
        return this.inputChannel;
    }

    public final FileChannel getOutputChannel() {
        return this.outputChannel;
    }

    public final boolean getInUse() {
        return this.inUse;
    }

    public final void setInUse(boolean z) {
        this.inUse = z;
    }

    public final Handler getHandler() {
        return this.handler;
    }

    public final void close() throws IOException {
        this.pfd.close();
    }
}
