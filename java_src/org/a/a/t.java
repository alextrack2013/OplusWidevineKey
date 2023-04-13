package org.a.a;
/* loaded from: classes.dex */
public abstract class t extends n {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(r rVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean a();

    abstract boolean a(t tVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int c();

    @Override // org.a.a.n
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && a(((f) obj).h());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t f() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t g() {
        return this;
    }

    @Override // org.a.a.n, org.a.a.f
    public t h() {
        return this;
    }

    @Override // org.a.a.n
    public abstract int hashCode();
}
