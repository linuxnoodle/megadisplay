package com.kelocube.mirrorclient.ui;

import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.mikepenz.aboutlibraries.ui.LibsActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\r\u001a\u00020\nH\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000e"}, d2 = {"Lcom/kelocube/mirrorclient/ui/MyLibsActivity;", "Lcom/mikepenz/aboutlibraries/ui/LibsActivity;", "()V", "dialogOwner", "Lcom/kelocube/mirrorclient/ui/DialogOwner;", "getDialogOwner", "()Lcom/kelocube/mirrorclient/ui/DialogOwner;", "setDialogOwner", "(Lcom/kelocube/mirrorclient/ui/DialogOwner;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class MyLibsActivity extends LibsActivity {
    public DialogOwner dialogOwner;

    public final DialogOwner getDialogOwner() {
        DialogOwner dialogOwner = this.dialogOwner;
        if (dialogOwner != null) {
            return dialogOwner;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dialogOwner");
        return null;
    }

    public final void setDialogOwner(DialogOwner dialogOwner) {
        Intrinsics.checkNotNullParameter(dialogOwner, "<set-?>");
        this.dialogOwner = dialogOwner;
    }

    @Override // com.mikepenz.aboutlibraries.ui.LibsActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setDialogOwner(new DialogOwner(this));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        getDialogOwner().close();
        super.onDestroy();
    }
}
