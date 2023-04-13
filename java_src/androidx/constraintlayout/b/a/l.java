package androidx.constraintlayout.b.a;

import androidx.constraintlayout.b.a.a.b;
/* compiled from: VirtualLayout.java */
/* loaded from: classes.dex */
public class l extends j {
    private int ap = 0;
    private int aq = 0;
    private int ar = 0;
    private int as = 0;
    private int at = 0;
    private int au = 0;
    private int av = 0;
    private int aw = 0;
    private boolean ax = false;
    private int ay = 0;
    private int az = 0;
    protected b.a a = new b.a();
    b.InterfaceC0020b ao = null;

    public int b() {
        return this.ap;
    }

    public int c() {
        return this.aq;
    }

    public int f() {
        return this.av;
    }

    public int g() {
        return this.aw;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z) {
        this.ax = z;
    }

    public boolean h() {
        return this.ax;
    }

    @Override // androidx.constraintlayout.b.a.j, androidx.constraintlayout.b.a.i
    public void a(f fVar) {
        i();
    }

    public void i() {
        for (int i = 0; i < this.an; i++) {
            e eVar = this.am[i];
            if (eVar != null) {
                eVar.b(true);
            }
        }
    }
}
