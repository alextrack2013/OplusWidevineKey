package androidx.core.graphics;

import android.graphics.Insets;
/* compiled from: Insets.java */
/* loaded from: classes.dex */
public final class b {
    public static final b a = new b(0, 0, 0, 0);
    public final int b;
    public final int c;
    public final int d;
    public final int e;

    private b(int i, int i2, int i3, int i4) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
    }

    public static b a(int i, int i2, int i3, int i4) {
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return a;
        }
        return new b(i, i2, i3, i4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.e == bVar.e && this.b == bVar.b && this.d == bVar.d && this.c == bVar.c;
    }

    public int hashCode() {
        return (((((this.b * 31) + this.c) * 31) + this.d) * 31) + this.e;
    }

    public String toString() {
        return "Insets{left=" + this.b + ", top=" + this.c + ", right=" + this.d + ", bottom=" + this.e + '}';
    }

    public Insets a() {
        return Insets.of(this.b, this.c, this.d, this.e);
    }
}
