package androidx.media;

import java.util.Arrays;
/* compiled from: AudioAttributesImplBase.java */
/* loaded from: classes.dex */
class c implements a {
    int a = 0;
    int b = 0;
    int c = 0;
    int d = -1;

    public int a() {
        if (this.d != -1) {
            return this.d;
        }
        return AudioAttributesCompat.a(false, this.c, this.a);
    }

    public int b() {
        return this.b;
    }

    public int c() {
        return this.a;
    }

    public int d() {
        int i = this.c;
        int a = a();
        if (a == 6) {
            i |= 4;
        } else if (a == 7) {
            i |= 1;
        }
        return i & 273;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.b), Integer.valueOf(this.c), Integer.valueOf(this.a), Integer.valueOf(this.d)});
    }

    public boolean equals(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            return this.b == cVar.b() && this.c == cVar.d() && this.a == cVar.c() && this.d == cVar.d;
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.d != -1) {
            sb.append(" stream=");
            sb.append(this.d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.a(this.a));
        sb.append(" content=");
        sb.append(this.b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.c).toUpperCase());
        return sb.toString();
    }
}
