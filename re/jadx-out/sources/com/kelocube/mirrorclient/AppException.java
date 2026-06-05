package com.kelocube.mirrorclient;

import androidx.constraintlayout.widget.ConstraintLayout;
import io.sentry.marshaller.json.JsonMarshaller;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppException.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/kelocube/mirrorclient/AppException;", "Ljava/lang/Exception;", JsonMarshaller.MESSAGE, "", "cause", "", "type", "", "(Ljava/lang/String;Ljava/lang/Throwable;I)V", "getType", "()I", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public class AppException extends Exception {
    private final int type;

    public /* synthetic */ AppException(String str, Throwable th, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : th, (i2 & 4) != 0 ? 0 : i);
    }

    public final int getType() {
        return this.type;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppException(String message, Throwable th, int i) {
        super(message, th);
        Intrinsics.checkNotNullParameter(message, "message");
        this.type = i;
    }
}
