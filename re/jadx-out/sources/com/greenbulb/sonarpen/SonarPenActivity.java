package com.greenbulb.sonarpen;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.appcompat.app.AppCompatActivity;

/* JADX INFO: loaded from: classes.dex */
public class SonarPenActivity extends AppCompatActivity {
    public boolean bSonarPenByPassDetection = false;
    public SonarPenUtilities thisSonarPen;

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(this.thisSonarPen.translateTouchEvent(motionEvent));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.thisSonarPen = new SonarPenUtilities(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.thisSonarPen.isSonicPenButton(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.thisSonarPen.isSonicPenButton(keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        this.thisSonarPen.stop();
        super.onPause();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.bSonarPenByPassDetection) {
            this.thisSonarPen.startWithByPass();
        } else {
            this.thisSonarPen.start();
        }
    }
}
