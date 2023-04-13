package org.a.a;

import java.io.ByteArrayOutputStream;
/* loaded from: classes.dex */
public class ar extends t {
    private o a;
    private l b;
    private t c;
    private int d;
    private t e;

    public ar(g gVar) {
        int i = 0;
        t a = a(gVar, 0);
        if (a instanceof o) {
            this.a = (o) a;
            a = a(gVar, 1);
            i = 1;
        }
        if (a instanceof l) {
            this.b = (l) a;
            i++;
            a = a(gVar, i);
        }
        if (!(a instanceof z)) {
            this.c = a;
            i++;
            a = a(gVar, i);
        }
        if (gVar.a() != i + 1) {
            throw new IllegalArgumentException("input vector too large");
        }
        if (!(a instanceof z)) {
            throw new IllegalArgumentException("No tagged object found in vector. Structure doesn't seem to be of type External");
        }
        z zVar = (z) a;
        a(zVar.b());
        this.e = zVar.d();
    }

    private t a(g gVar, int i) {
        if (gVar.a() <= i) {
            throw new IllegalArgumentException("too few objects in input vector");
        }
        return gVar.a(i).h();
    }

    private void a(int i) {
        if (i >= 0 && i <= 2) {
            this.d = i;
            return;
        }
        throw new IllegalArgumentException("invalid encoding value: " + i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public void a(r rVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (this.a != null) {
            byteArrayOutputStream.write(this.a.a("DER"));
        }
        if (this.b != null) {
            byteArrayOutputStream.write(this.b.a("DER"));
        }
        if (this.c != null) {
            byteArrayOutputStream.write(this.c.a("DER"));
        }
        byteArrayOutputStream.write(new bi(true, this.d, this.e).a("DER"));
        rVar.a(32, 8, byteArrayOutputStream.toByteArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public boolean a() {
        return true;
    }

    @Override // org.a.a.t
    boolean a(t tVar) {
        if (tVar instanceof ar) {
            if (this == tVar) {
                return true;
            }
            ar arVar = (ar) tVar;
            if (this.a == null || (arVar.a != null && arVar.a.equals(this.a))) {
                if (this.b == null || (arVar.b != null && arVar.b.equals(this.b))) {
                    if (this.c == null || (arVar.c != null && arVar.c.equals(this.c))) {
                        return this.e.equals(arVar.e);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        return i().length;
    }

    @Override // org.a.a.t, org.a.a.n
    public int hashCode() {
        int hashCode = this.a != null ? this.a.hashCode() : 0;
        if (this.b != null) {
            hashCode ^= this.b.hashCode();
        }
        if (this.c != null) {
            hashCode ^= this.c.hashCode();
        }
        return this.e.hashCode() ^ hashCode;
    }
}
