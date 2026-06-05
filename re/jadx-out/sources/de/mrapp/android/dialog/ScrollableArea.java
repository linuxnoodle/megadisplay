package de.mrapp.android.dialog;

import android.os.Parcel;
import android.os.Parcelable;
import de.mrapp.util.Condition;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public final class ScrollableArea implements Serializable, Parcelable {
    public static final Parcelable.Creator<ScrollableArea> CREATOR = new Parcelable.Creator<ScrollableArea>() { // from class: de.mrapp.android.dialog.ScrollableArea.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScrollableArea createFromParcel(Parcel parcel) {
            return new ScrollableArea(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScrollableArea[] newArray(int i) {
            return new ScrollableArea[i];
        }
    };
    private static final long serialVersionUID = 7263368519326351364L;
    private final Area bottomScrollableArea;
    private final Area topScrollableArea;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public enum Area {
        HEADER(0),
        TITLE(1),
        MESSAGE(2),
        CONTENT(3),
        BUTTON_BAR(4);

        private final int index;

        Area(int i) {
            this.index = i;
        }

        public final int getIndex() {
            return this.index;
        }

        public static Area fromIndex(int i) {
            for (Area area : values()) {
                if (area.getIndex() == i) {
                    return area;
                }
            }
            throw new IllegalArgumentException("Invalid enum value: " + i);
        }
    }

    private ScrollableArea(Area area, Area area2) {
        if (area != null) {
            Condition.INSTANCE.ensureNotNull(area2, "If the top-most area is not null, the bottom-most area may neither be null");
            Condition.INSTANCE.ensureAtLeast(area2.getIndex(), area.getIndex(), "The index of the bottom-most area must be at least the index of the top-most area");
        } else {
            Condition.INSTANCE.ensureTrue(area2 == null, "If the top-most area is null, the bottom-most area must be null as well");
        }
        this.topScrollableArea = area;
        this.bottomScrollableArea = area2;
    }

    private ScrollableArea(Parcel parcel) {
        this.topScrollableArea = (Area) parcel.readSerializable();
        this.bottomScrollableArea = (Area) parcel.readSerializable();
    }

    public static ScrollableArea create(Area area) {
        return create(area, area);
    }

    public static ScrollableArea create(Area area, Area area2) {
        return new ScrollableArea(area, area2);
    }

    public final boolean isScrollable(Area area) {
        Area area2 = this.topScrollableArea;
        return area2 != null && area2.getIndex() <= area.getIndex() && this.bottomScrollableArea.getIndex() >= area.getIndex();
    }

    public final Area getTopScrollableArea() {
        return this.topScrollableArea;
    }

    public final Area getBottomScrollableArea() {
        return this.bottomScrollableArea;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(this.topScrollableArea);
        parcel.writeSerializable(this.bottomScrollableArea);
    }

    public final String toString() {
        return "ScrollableArea{topScrollableArea=" + this.topScrollableArea + ", bottomScrollableArea=" + this.bottomScrollableArea + '}';
    }

    public final int hashCode() {
        Area area = this.topScrollableArea;
        int iHashCode = ((area == null ? 0 : area.hashCode()) + 31) * 31;
        Area area2 = this.bottomScrollableArea;
        return iHashCode + (area2 != null ? area2.hashCode() : 0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ScrollableArea scrollableArea = (ScrollableArea) obj;
        return this.topScrollableArea == scrollableArea.topScrollableArea && this.bottomScrollableArea.equals(scrollableArea.bottomScrollableArea);
    }
}
