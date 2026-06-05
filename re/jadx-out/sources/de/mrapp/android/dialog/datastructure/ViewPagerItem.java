package de.mrapp.android.dialog.datastructure;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import de.mrapp.util.Condition;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class ViewPagerItem implements Serializable, Parcelable {
    public static final Parcelable.Creator<ViewPagerItem> CREATOR = new Parcelable.Creator<ViewPagerItem>() { // from class: de.mrapp.android.dialog.datastructure.ViewPagerItem.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ViewPagerItem createFromParcel(Parcel parcel) {
            return new ViewPagerItem(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ViewPagerItem[] newArray(int i) {
            return new ViewPagerItem[i];
        }
    };
    private static final long serialVersionUID = 1;
    private final Bundle arguments;
    private final Class<? extends Fragment> fragmentClass;
    private final CharSequence title;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    private ViewPagerItem(Parcel parcel) {
        this.title = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.fragmentClass = (Class) parcel.readSerializable();
        this.arguments = parcel.readBundle(getClass().getClassLoader());
    }

    public ViewPagerItem(CharSequence charSequence, Class<? extends Fragment> cls, Bundle bundle) {
        Condition.INSTANCE.ensureNotNull(cls, "The fragmentClass class may not be null");
        this.title = charSequence;
        this.fragmentClass = cls;
        this.arguments = bundle;
    }

    public final CharSequence getTitle() {
        return this.title;
    }

    public final Class<? extends Fragment> getFragmentClass() {
        return this.fragmentClass;
    }

    public final Bundle getArguments() {
        return this.arguments;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        TextUtils.writeToParcel(getTitle(), parcel, i);
        parcel.writeSerializable(getFragmentClass());
        parcel.writeBundle(getArguments());
    }
}
