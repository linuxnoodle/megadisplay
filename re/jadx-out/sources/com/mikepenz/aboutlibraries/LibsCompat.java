package com.mikepenz.aboutlibraries;

import android.os.Bundle;
import com.mikepenz.aboutlibraries.ui.LibsFragment;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LibsCompat.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/mikepenz/aboutlibraries/LibsCompat;", "", "()V", "fragment", "Lcom/mikepenz/aboutlibraries/ui/LibsFragment;", "libsBuilder", "Lcom/mikepenz/aboutlibraries/LibsBuilder;", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
public final class LibsCompat {
    public static final LibsCompat INSTANCE = new LibsCompat();

    private LibsCompat() {
    }

    public final LibsFragment fragment(LibsBuilder libsBuilder) {
        Intrinsics.checkParameterIsNotNull(libsBuilder, "libsBuilder");
        Bundle bundle = new Bundle();
        bundle.putSerializable("data", libsBuilder);
        LibsFragment libsFragment = new LibsFragment();
        libsFragment.setArguments(bundle);
        return libsFragment;
    }
}
