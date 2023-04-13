package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.t;
import androidx.lifecycle.f;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BackStackState.java */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator<b>() { // from class: androidx.fragment.app.b.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b[] newArray(int i) {
            return new b[i];
        }
    };
    final int[] a;
    final ArrayList<String> b;
    final int[] c;
    final int[] d;
    final int e;
    final String f;
    final int g;
    final int h;
    final CharSequence i;
    final int j;
    final CharSequence k;
    final ArrayList<String> l;
    final ArrayList<String> m;
    final boolean n;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public b(a aVar) {
        int size = aVar.d.size();
        this.a = new int[size * 5];
        if (!aVar.j) {
            throw new IllegalStateException("Not on back stack");
        }
        this.b = new ArrayList<>(size);
        this.c = new int[size];
        this.d = new int[size];
        int i = 0;
        int i2 = 0;
        while (i < size) {
            t.a aVar2 = aVar.d.get(i);
            int i3 = i2 + 1;
            this.a[i2] = aVar2.a;
            this.b.add(aVar2.b != null ? aVar2.b.f : null);
            int i4 = i3 + 1;
            this.a[i3] = aVar2.c;
            int i5 = i4 + 1;
            this.a[i4] = aVar2.d;
            int i6 = i5 + 1;
            this.a[i5] = aVar2.e;
            this.a[i6] = aVar2.f;
            this.c[i] = aVar2.g.ordinal();
            this.d[i] = aVar2.h.ordinal();
            i++;
            i2 = i6 + 1;
        }
        this.e = aVar.i;
        this.f = aVar.l;
        this.g = aVar.c;
        this.h = aVar.m;
        this.i = aVar.n;
        this.j = aVar.o;
        this.k = aVar.p;
        this.l = aVar.q;
        this.m = aVar.r;
        this.n = aVar.s;
    }

    public b(Parcel parcel) {
        this.a = parcel.createIntArray();
        this.b = parcel.createStringArrayList();
        this.c = parcel.createIntArray();
        this.d = parcel.createIntArray();
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.g = parcel.readInt();
        this.h = parcel.readInt();
        this.i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.j = parcel.readInt();
        this.k = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.l = parcel.createStringArrayList();
        this.m = parcel.createStringArrayList();
        this.n = parcel.readInt() != 0;
    }

    public a a(m mVar) {
        a aVar = new a(mVar);
        int i = 0;
        int i2 = 0;
        while (i < this.a.length) {
            t.a aVar2 = new t.a();
            int i3 = i + 1;
            aVar2.a = this.a[i];
            if (m.a(2)) {
                Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i2 + " base fragment #" + this.a[i3]);
            }
            String str = this.b.get(i2);
            if (str != null) {
                aVar2.b = mVar.c(str);
            } else {
                aVar2.b = null;
            }
            aVar2.g = f.b.values()[this.c[i2]];
            aVar2.h = f.b.values()[this.d[i2]];
            int i4 = i3 + 1;
            aVar2.c = this.a[i3];
            int i5 = i4 + 1;
            aVar2.d = this.a[i4];
            int i6 = i5 + 1;
            aVar2.e = this.a[i5];
            aVar2.f = this.a[i6];
            aVar.e = aVar2.c;
            aVar.f = aVar2.d;
            aVar.g = aVar2.e;
            aVar.h = aVar2.f;
            aVar.a(aVar2);
            i2++;
            i = i6 + 1;
        }
        aVar.i = this.e;
        aVar.l = this.f;
        aVar.c = this.g;
        aVar.j = true;
        aVar.m = this.h;
        aVar.n = this.i;
        aVar.o = this.j;
        aVar.p = this.k;
        aVar.q = this.l;
        aVar.r = this.m;
        aVar.s = this.n;
        aVar.a(1);
        return aVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.a);
        parcel.writeStringList(this.b);
        parcel.writeIntArray(this.c);
        parcel.writeIntArray(this.d);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.h);
        TextUtils.writeToParcel(this.i, parcel, 0);
        parcel.writeInt(this.j);
        TextUtils.writeToParcel(this.k, parcel, 0);
        parcel.writeStringList(this.l);
        parcel.writeStringList(this.m);
        parcel.writeInt(this.n ? 1 : 0);
    }
}
