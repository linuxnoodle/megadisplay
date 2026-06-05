package com.mikepenz.aboutlibraries.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import com.mikepenz.aboutlibraries.Libs;
import com.mikepenz.aboutlibraries.R;
import com.mikepenz.aboutlibraries.util.UIUtilsKt;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LibsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/mikepenz/aboutlibraries/ui/LibsActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onOptionsItemSelected", "", "item", "Landroid/view/MenuItem;", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
public class LibsActivity extends AppCompatActivity {
    private HashMap _$_findViewCache;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        Intent intent = getIntent();
        Intrinsics.checkExpressionValueIsNotNull(intent, "intent");
        Bundle extras = intent.getExtras();
        if (extras != null && extras.getBoolean(Libs.BUNDLE_EDGE_TO_EDGE)) {
            UIUtilsKt.applyEdgeSystemUi$default(this, null, 1, null);
        }
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_opensource);
        String string = "";
        if (extras != null) {
            string = extras.getString(Libs.BUNDLE_TITLE, "");
            Intrinsics.checkExpressionValueIsNotNull(string, "bundle.getString(Libs.BUNDLE_TITLE, \"\")");
        }
        LibsSupportFragment libsSupportFragment = new LibsSupportFragment();
        libsSupportFragment.setArguments(extras);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            String str = string;
            supportActionBar.setDisplayShowTitleEnabled(str.length() > 0);
            supportActionBar.setTitle(str);
        }
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "toolbar");
        UIUtilsKt.doOnApplySystemWindowInsets(toolbar, 48, GravityCompat.START, GravityCompat.END);
        getSupportFragmentManager().beginTransaction().replace(R.id.frame_container, libsSupportFragment).commit();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        if (item.getItemId() != 16908332) {
            return false;
        }
        finish();
        return true;
    }
}
