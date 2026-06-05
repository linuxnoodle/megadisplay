package com.kelocube.mirrorclient;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Transport.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0014J\b\u0010\t\u001a\u00020\bH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/kelocube/mirrorclient/AOAPTransport;", "Lcom/kelocube/mirrorclient/Transport;", "pipe", "Lcom/kelocube/mirrorclient/AOAPPipe;", "(Lcom/kelocube/mirrorclient/AOAPPipe;)V", "threads", "", "readFinished", "", "writeFinished", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class AOAPTransport extends Transport {
    private final AOAPPipe pipe;
    private int threads;

    /* JADX WARN: Illegal instructions before constructor call */
    public AOAPTransport(AOAPPipe pipe) {
        Intrinsics.checkNotNullParameter(pipe, "pipe");
        FileChannel inputChannel = pipe.getInputChannel();
        Intrinsics.checkNotNullExpressionValue(inputChannel, "<get-inputChannel>(...)");
        FileChannel outputChannel = pipe.getOutputChannel();
        Intrinsics.checkNotNullExpressionValue(outputChannel, "<get-outputChannel>(...)");
        super(inputChannel, outputChannel);
        this.pipe = pipe;
        this.threads = 2;
        if (!(!pipe.getInUse())) {
            throw new IllegalStateException("Check failed.".toString());
        }
        pipe.setInUse(true);
    }

    @Override // com.kelocube.mirrorclient.Transport
    protected void readFinished() {
        int i = this.threads - 1;
        this.threads = i;
        if (i == 0) {
            if (!this.pipe.getInUse()) {
                throw new IllegalStateException("Check failed.".toString());
            }
            this.pipe.setInUse(false);
        }
    }

    @Override // com.kelocube.mirrorclient.Transport
    protected void writeFinished() {
        int i = this.threads - 1;
        this.threads = i;
        if (i == 0) {
            if (!this.pipe.getInUse()) {
                throw new IllegalStateException("Check failed.".toString());
            }
            this.pipe.setInUse(false);
        }
    }
}
