package com.kelocube.mirrorclient;

import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.kelocube.mirrorclient.ui.MainActivity;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IntentReceiverActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0014J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0014J\b\u0010\u000b\u001a\u00020\u0004H\u0014¨\u0006\f"}, d2 = {"Lcom/kelocube/mirrorclient/IntentReceiverActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "handleIntent", "", "intent", "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onNewIntent", "onResume", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class IntentReceiverActivity extends AppCompatActivity {
    private final void handleIntent(Intent intent) throws IOException {
        boolean z = true;
        if (Intrinsics.areEqual(intent.getAction(), "android.hardware.usb.action.USB_ACCESSORY_ATTACHED")) {
            IntentReceiverActivityKt.intentSent++;
            int unused = IntentReceiverActivityKt.intentSent;
        }
        App.INSTANCE.getInstance().getListener().openIntent(intent);
        if (System.nanoTime() <= IntentReceiverActivityKt.lastStartTime + 3000000000L || MirrorActivity.INSTANCE.getRunning() != 0) {
            z = false;
        } else {
            IntentReceiverActivityKt.lastStartTime = System.nanoTime();
            startActivity(new Intent(this, (Class<?>) MainActivity.class));
        }
        UtilKt.debugToast(this, "IntentReceiverActivity gIntentSent=" + IntentReceiverActivityKt.intentSent + ", started=" + z);
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IOException {
        Intent intent = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent, "getIntent(...)");
        handleIntent(intent);
        super.onCreate(savedInstanceState);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) throws IOException {
        Intrinsics.checkNotNullParameter(intent, "intent");
        handleIntent(intent);
        super.onNewIntent(intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        Intent intent = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent, "getIntent(...)");
        handleIntent(intent);
        super.onResume();
    }
}
