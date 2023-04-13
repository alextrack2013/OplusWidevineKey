package androidx.constraintlayout.b.a;

import androidx.constraintlayout.b.a.a.o;
import androidx.constraintlayout.b.h;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* compiled from: ConstraintAnchor.java */
/* loaded from: classes.dex */
public class d {
    public final e a;
    public final a b;
    public d c;
    androidx.constraintlayout.b.h f;
    private int h;
    private boolean i;
    private HashSet<d> g = null;
    public int d = 0;
    int e = -1;

    /* compiled from: ConstraintAnchor.java */
    /* loaded from: classes.dex */
    public enum a {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public void a(int i, ArrayList<o> arrayList, o oVar) {
        if (this.g != null) {
            Iterator<d> it = this.g.iterator();
            while (it.hasNext()) {
                androidx.constraintlayout.b.a.a.i.a(it.next().a, i, arrayList, oVar);
            }
        }
    }

    public HashSet<d> a() {
        return this.g;
    }

    public boolean b() {
        return this.g != null && this.g.size() > 0;
    }

    public boolean c() {
        if (this.g == null) {
            return false;
        }
        Iterator<d> it = this.g.iterator();
        while (it.hasNext()) {
            if (it.next().n().m()) {
                return true;
            }
        }
        return false;
    }

    public void a(int i) {
        this.h = i;
        this.i = true;
    }

    public int d() {
        if (this.i) {
            return this.h;
        }
        return 0;
    }

    public void e() {
        this.i = false;
        this.h = 0;
    }

    public boolean f() {
        return this.i;
    }

    public d(e eVar, a aVar) {
        this.a = eVar;
        this.b = aVar;
    }

    public androidx.constraintlayout.b.h g() {
        return this.f;
    }

    public void a(androidx.constraintlayout.b.c cVar) {
        if (this.f == null) {
            this.f = new androidx.constraintlayout.b.h(h.a.UNRESTRICTED, null);
        } else {
            this.f.b();
        }
    }

    public e h() {
        return this.a;
    }

    public a i() {
        return this.b;
    }

    public int j() {
        if (this.a.w() == 8) {
            return 0;
        }
        if (this.e > -1 && this.c != null && this.c.a.w() == 8) {
            return this.e;
        }
        return this.d;
    }

    public d k() {
        return this.c;
    }

    public void l() {
        if (this.c != null && this.c.g != null) {
            this.c.g.remove(this);
            if (this.c.g.size() == 0) {
                this.c.g = null;
            }
        }
        this.g = null;
        this.c = null;
        this.d = 0;
        this.e = -1;
        this.i = false;
        this.h = 0;
    }

    public boolean a(d dVar, int i, int i2, boolean z) {
        if (dVar == null) {
            l();
            return true;
        } else if (z || a(dVar)) {
            this.c = dVar;
            if (this.c.g == null) {
                this.c.g = new HashSet<>();
            }
            if (this.c.g != null) {
                this.c.g.add(this);
            }
            if (i > 0) {
                this.d = i;
            } else {
                this.d = 0;
            }
            this.e = i2;
            return true;
        } else {
            return false;
        }
    }

    public boolean a(d dVar, int i) {
        return a(dVar, i, -1, false);
    }

    public boolean m() {
        return this.c != null;
    }

    public boolean a(d dVar) {
        if (dVar == null) {
            return false;
        }
        a i = dVar.i();
        if (i == this.b) {
            return this.b != a.BASELINE || (dVar.h().K() && h().K());
        }
        switch (this.b) {
            case CENTER:
                return (i == a.BASELINE || i == a.CENTER_X || i == a.CENTER_Y) ? false : true;
            case LEFT:
            case RIGHT:
                boolean z = i == a.LEFT || i == a.RIGHT;
                return dVar.h() instanceof h ? z || i == a.CENTER_X : z;
            case TOP:
            case BOTTOM:
                boolean z2 = i == a.TOP || i == a.BOTTOM;
                return dVar.h() instanceof h ? z2 || i == a.CENTER_Y : z2;
            case BASELINE:
            case CENTER_X:
            case CENTER_Y:
            case NONE:
                return false;
            default:
                throw new AssertionError(this.b.name());
        }
    }

    public void b(int i) {
        if (m()) {
            this.e = i;
        }
    }

    public String toString() {
        return this.a.x() + ":" + this.b.toString();
    }

    public final d n() {
        switch (this.b) {
            case CENTER:
            case BASELINE:
            case CENTER_X:
            case CENTER_Y:
            case NONE:
                return null;
            case LEFT:
                return this.a.y;
            case RIGHT:
                return this.a.w;
            case TOP:
                return this.a.z;
            case BOTTOM:
                return this.a.x;
            default:
                throw new AssertionError(this.b.name());
        }
    }
}
