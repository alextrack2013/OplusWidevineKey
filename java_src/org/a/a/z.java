package org.a.a;
/* loaded from: classes.dex */
public abstract class z extends t implements aa {
    int a;
    boolean b = false;
    boolean c;
    f d;

    public z(boolean z, int i, f fVar) {
        this.c = true;
        this.d = null;
        if (fVar instanceof e) {
            this.c = true;
        } else {
            this.c = z;
        }
        this.a = i;
        if (!this.c) {
            boolean z2 = fVar.h() instanceof w;
        }
        this.d = fVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public abstract void a(r rVar);

    @Override // org.a.a.t
    boolean a(t tVar) {
        if (tVar instanceof z) {
            z zVar = (z) tVar;
            if (this.a == zVar.a && this.b == zVar.b && this.c == zVar.c) {
                return this.d == null ? zVar.d == null : this.d.h().equals(zVar.d.h());
            }
            return false;
        }
        return false;
    }

    public int b() {
        return this.a;
    }

    public t d() {
        if (this.d != null) {
            return this.d.h();
        }
        return null;
    }

    @Override // org.a.a.bt
    public t e() {
        return h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public t f() {
        return new bi(this.c, this.a, this.d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public t g() {
        return new br(this.c, this.a, this.d);
    }

    @Override // org.a.a.t, org.a.a.n
    public int hashCode() {
        int i = this.a;
        return this.d != null ? i ^ this.d.hashCode() : i;
    }

    public String toString() {
        return "[" + this.a + "]" + this.d;
    }
}
