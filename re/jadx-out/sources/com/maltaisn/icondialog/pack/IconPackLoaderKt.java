package com.maltaisn.icondialog.pack;

import io.sentry.marshaller.json.JsonMarshaller;
import kotlin.Metadata;

/* JADX INFO: compiled from: IconPackLoader.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002¨\u0006\u0004"}, d2 = {"parseError", "", JsonMarshaller.MESSAGE, "", "lib_release"}, k = 2, mv = {1, 1, 16})
public final class IconPackLoaderKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Void parseError(String str) throws IconPackParseException {
        throw new IconPackParseException(str);
    }
}
