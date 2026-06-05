package com.mikepenz.aboutlibraries.detector;

import android.content.Context;
import android.content.pm.PackageManager;
import com.mikepenz.aboutlibraries.entity.Library;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Detect.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\t"}, d2 = {"Lcom/mikepenz/aboutlibraries/detector/Detect;", "", "()V", "detect", "", "Lcom/mikepenz/aboutlibraries/entity/Library;", "mCtx", "Landroid/content/Context;", "libraries", "aboutlibraries-core"}, k = 1, mv = {1, 1, 16})
public final class Detect {
    public static final Detect INSTANCE = new Detect();

    private Detect() {
    }

    public final List<Library> detect(Context mCtx, List<Library> libraries) {
        Intrinsics.checkParameterIsNotNull(mCtx, "mCtx");
        Intrinsics.checkParameterIsNotNull(libraries, "libraries");
        ArrayList arrayList = new ArrayList();
        for (Library library : libraries) {
            if (library.getClassPath().length() > 0) {
                try {
                    Context ctx = mCtx.createPackageContext(mCtx.getPackageName(), 3);
                    String classPath = library.getClassPath();
                    Intrinsics.checkExpressionValueIsNotNull(ctx, "ctx");
                    Class.forName(classPath, false, ctx.getClassLoader());
                    arrayList.add(library);
                } catch (PackageManager.NameNotFoundException | ClassNotFoundException unused) {
                }
            }
        }
        return arrayList;
    }
}
