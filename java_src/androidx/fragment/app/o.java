package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentManagerState.java */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class o implements Parcelable {
    public static final Parcelable.Creator<o> CREATOR = new Parcelable.Creator<o>() { // from class: androidx.fragment.app.o.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public o createFromParcel(Parcel parcel) {
            return new o(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public o[] newArray(int i) {
            return new o[i];
        }
    };
    ArrayList<q> a;
    ArrayList<String> b;
    b[] c;
    int d;
    String e;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public o() {
        this.e = null;
    }

    public o(Parcel parcel) {
        this.e = null;
        this.a = parcel.createTypedArrayList(q.CREATOR);
        this.b = parcel.createStringArrayList();
        this.c = (b[]) parcel.createTypedArray(b.CREATOR);
        this.d = parcel.readInt();
        this.e = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.a);
        parcel.writeStringList(this.b);
        parcel.writeTypedArray(this.c, i);
        parcel.writeInt(this.d);
        parcel.writeString(this.e);
    }
}
