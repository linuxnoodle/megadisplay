package com.kelocube.mirrorclient;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.net.InetAddress;
import java.net.SocketException;
import java.nio.channels.SocketChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Transport.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0014J\b\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/kelocube/mirrorclient/TCPTransport;", "Lcom/kelocube/mirrorclient/Transport;", "socket", "Ljava/nio/channels/SocketChannel;", "(Ljava/nio/channels/SocketChannel;)V", "doClose", "", "isRemote", "", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class TCPTransport extends Transport {
    private final SocketChannel socket;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TCPTransport(SocketChannel socket) throws SocketException {
        super(socket, socket);
        Intrinsics.checkNotNullParameter(socket, "socket");
        this.socket = socket;
        socket.socket().setSoTimeout(10000);
    }

    @Override // com.kelocube.mirrorclient.Transport
    protected void doClose() {
        this.socket.close();
    }

    @Override // com.kelocube.mirrorclient.Transport
    public boolean isRemote() {
        InetAddress inetAddress = this.socket.socket().getInetAddress();
        return (inetAddress == null || inetAddress.isLoopbackAddress()) ? false : true;
    }
}
