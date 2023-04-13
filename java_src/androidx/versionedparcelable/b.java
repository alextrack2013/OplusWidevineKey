package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import java.lang.reflect.Method;
/* compiled from: VersionedParcelParcel.java */
/* loaded from: classes.dex */
class b extends a {
    private final SparseIntArray d;
    private final Parcel e;
    private final int f;
    private final int g;
    private final String h;
    private int i;
    private int j;
    private int k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new androidx.b.a(), new androidx.b.a(), new androidx.b.a());
    }

    private b(Parcel parcel, int i, int i2, String str, androidx.b.a<String, Method> aVar, androidx.b.a<String, Method> aVar2, androidx.b.a<String, Class> aVar3) {
        super(aVar, aVar2, aVar3);
        this.d = new SparseIntArray();
        this.i = -1;
        this.j = 0;
        this.k = -1;
        this.e = parcel;
        this.f = i;
        this.g = i2;
        this.j = this.f;
        this.h = str;
    }

    @Override // androidx.versionedparcelable.a
    public boolean b(int i) {
        while (this.j < this.g) {
            if (this.k == i) {
                return true;
            }
            if (String.valueOf(this.k).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            this.e.setDataPosition(this.j);
            int readInt = this.e.readInt();
            this.k = this.e.readInt();
            this.j += readInt;
        }
        return this.k == i;
    }

    @Override // androidx.versionedparcelable.a
    public void c(int i) {
        b();
        this.i = i;
        this.d.put(i, this.e.dataPosition());
        a(0);
        a(i);
    }

    @Override // androidx.versionedparcelable.a
    public void b() {
        if (this.i >= 0) {
            int i = this.d.get(this.i);
            int dataPosition = this.e.dataPosition();
            this.e.setDataPosition(i);
            this.e.writeInt(dataPosition - i);
            this.e.setDataPosition(dataPosition);
        }
    }

    @Override // androidx.versionedparcelable.a
    protected a c() {
        Parcel parcel = this.e;
        int dataPosition = this.e.dataPosition();
        int i = this.j == this.f ? this.g : this.j;
        return new b(parcel, dataPosition, i, this.h + "  ", this.a, this.b, this.c);
    }

    @Override // androidx.versionedparcelable.a
    public void a(byte[] bArr) {
        if (bArr != null) {
            this.e.writeInt(bArr.length);
            this.e.writeByteArray(bArr);
            return;
        }
        this.e.writeInt(-1);
    }

    @Override // androidx.versionedparcelable.a
    public void a(int i) {
        this.e.writeInt(i);
    }

    @Override // androidx.versionedparcelable.a
    public void a(String str) {
        this.e.writeString(str);
    }

    @Override // androidx.versionedparcelable.a
    public void a(Parcelable parcelable) {
        this.e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.a
    public void a(boolean z) {
        this.e.writeInt(z ? 1 : 0);
    }

    @Override // androidx.versionedparcelable.a
    protected void a(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.e, 0);
    }

    @Override // androidx.versionedparcelable.a
    protected CharSequence g() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.e);
    }

    @Override // androidx.versionedparcelable.a
    public int d() {
        return this.e.readInt();
    }

    @Override // androidx.versionedparcelable.a
    public String e() {
        return this.e.readString();
    }

    @Override // androidx.versionedparcelable.a
    public byte[] f() {
        int readInt = this.e.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.e.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.a
    public <T extends Parcelable> T h() {
        return (T) this.e.readParcelable(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.a
    public boolean i() {
        return this.e.readInt() != 0;
    }
}
