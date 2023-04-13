package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.ViewGroup;
import androidx.fragment.R;
import androidx.lifecycle.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentStateManager.java */
/* loaded from: classes.dex */
public class r {
    private final l a;
    private final c b;
    private int c = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(l lVar, c cVar) {
        this.a = lVar;
        this.b = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(l lVar, ClassLoader classLoader, i iVar, q qVar) {
        this.a = lVar;
        this.b = iVar.c(classLoader, qVar.a);
        if (qVar.j != null) {
            qVar.j.setClassLoader(classLoader);
        }
        this.b.b(qVar.j);
        this.b.f = qVar.b;
        this.b.m = qVar.c;
        this.b.o = true;
        this.b.v = qVar.d;
        this.b.w = qVar.e;
        this.b.x = qVar.f;
        this.b.A = qVar.g;
        this.b.l = qVar.h;
        this.b.z = qVar.i;
        this.b.y = qVar.k;
        this.b.P = f.b.values()[qVar.l];
        if (qVar.m != null) {
            this.b.c = qVar.m;
        } else {
            this.b.c = new Bundle();
        }
        if (m.a(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + this.b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(l lVar, c cVar, q qVar) {
        this.a = lVar;
        this.b = cVar;
        this.b.d = null;
        this.b.q = 0;
        this.b.n = false;
        this.b.k = false;
        this.b.i = this.b.h != null ? this.b.h.f : null;
        this.b.h = null;
        if (qVar.m != null) {
            this.b.c = qVar.m;
        } else {
            this.b.c = new Bundle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c a() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        this.c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        int i = this.c;
        if (this.b.m) {
            if (this.b.n) {
                i = Math.max(this.c, 1);
            } else {
                i = Math.min(i, 1);
            }
        }
        if (!this.b.k) {
            i = Math.min(i, 1);
        }
        if (this.b.l) {
            if (this.b.a()) {
                i = Math.min(i, 1);
            } else {
                i = Math.min(i, -1);
            }
        }
        if (this.b.G && this.b.b < 3) {
            i = Math.min(i, 2);
        }
        switch (this.b.P) {
            case RESUMED:
                return i;
            case STARTED:
                return Math.min(i, 3);
            case CREATED:
                return Math.min(i, 1);
            default:
                return Math.min(i, -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        if (this.b.m && this.b.n && !this.b.p) {
            if (m.a(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.b);
            }
            this.b.b(this.b.d(this.b.c), (ViewGroup) null, this.b.c);
            if (this.b.F != null) {
                this.b.F.setSaveFromParentEnabled(false);
                if (this.b.y) {
                    this.b.F.setVisibility(8);
                }
                this.b.a(this.b.F, this.b.c);
                this.a.a(this.b, this.b.F, this.b.c, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ClassLoader classLoader) {
        if (this.b.c == null) {
            return;
        }
        this.b.c.setClassLoader(classLoader);
        this.b.d = this.b.c.getSparseParcelableArray("android:view_state");
        this.b.i = this.b.c.getString("android:target_state");
        if (this.b.i != null) {
            this.b.j = this.b.c.getInt("android:target_req_state", 0);
        }
        if (this.b.e != null) {
            this.b.H = this.b.e.booleanValue();
            this.b.e = null;
        } else {
            this.b.H = this.b.c.getBoolean("android:user_visible_hint", true);
        }
        if (this.b.H) {
            return;
        }
        this.b.G = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(j<?> jVar, m mVar, c cVar) {
        this.b.s = jVar;
        this.b.u = cVar;
        this.b.r = mVar;
        this.a.a(this.b, jVar.j(), false);
        this.b.N();
        if (this.b.u == null) {
            jVar.b(this.b);
        } else {
            this.b.u.a(this.b);
        }
        this.a.b(this.b, jVar.j(), false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        if (m.a(3)) {
            Log.d("FragmentManager", "moveto CREATED: " + this.b);
        }
        if (!this.b.O) {
            this.a.a(this.b, this.b.c, false);
            this.b.k(this.b.c);
            this.a.b(this.b, this.b.c, false);
            return;
        }
        this.b.g(this.b.c);
        this.b.b = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(f fVar) {
        String str;
        if (this.b.m) {
            return;
        }
        if (m.a(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.b);
        }
        ViewGroup viewGroup = null;
        if (this.b.E != null) {
            viewGroup = this.b.E;
        } else if (this.b.w != 0) {
            if (this.b.w == -1) {
                throw new IllegalArgumentException("Cannot create fragment " + this.b + " for a container view with no id");
            }
            viewGroup = (ViewGroup) fVar.a(this.b.w);
            if (viewGroup == null && !this.b.o) {
                try {
                    str = this.b.l().getResourceName(this.b.w);
                } catch (Resources.NotFoundException unused) {
                    str = "unknown";
                }
                throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.b.w) + " (" + str + ") for fragment " + this.b);
            }
        }
        this.b.E = viewGroup;
        this.b.b(this.b.d(this.b.c), viewGroup, this.b.c);
        if (this.b.F != null) {
            boolean z = false;
            this.b.F.setSaveFromParentEnabled(false);
            this.b.F.setTag(R.id.fragment_container_view_tag, this.b);
            if (viewGroup != null) {
                viewGroup.addView(this.b.F);
            }
            if (this.b.y) {
                this.b.F.setVisibility(8);
            }
            androidx.core.g.t.h(this.b.F);
            this.b.a(this.b.F, this.b.c);
            this.a.a(this.b, this.b.F, this.b.c, false);
            c cVar = this.b;
            if (this.b.F.getVisibility() == 0 && this.b.E != null) {
                z = true;
            }
            cVar.K = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        if (m.a(3)) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + this.b);
        }
        this.b.l(this.b.c);
        this.a.c(this.b, this.b.c, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        if (m.a(3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + this.b);
        }
        if (this.b.F != null) {
            this.b.a(this.b.c);
        }
        this.b.c = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        if (m.a(3)) {
            Log.d("FragmentManager", "moveto STARTED: " + this.b);
        }
        this.b.O();
        this.a.a(this.b, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        if (m.a(3)) {
            Log.d("FragmentManager", "moveto RESUMED: " + this.b);
        }
        this.b.P();
        this.a.b(this.b, false);
        this.b.c = null;
        this.b.d = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        if (m.a(3)) {
            Log.d("FragmentManager", "movefrom RESUMED: " + this.b);
        }
        this.b.T();
        this.a.c(this.b, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        if (m.a(3)) {
            Log.d("FragmentManager", "movefrom STARTED: " + this.b);
        }
        this.b.U();
        this.a.d(this.b, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q k() {
        q qVar = new q(this.b);
        if (this.b.b > -1 && qVar.m == null) {
            qVar.m = m();
            if (this.b.i != null) {
                if (qVar.m == null) {
                    qVar.m = new Bundle();
                }
                qVar.m.putString("android:target_state", this.b.i);
                if (this.b.j != 0) {
                    qVar.m.putInt("android:target_req_state", this.b.j);
                }
            }
        } else {
            qVar.m = this.b.c;
        }
        return qVar;
    }

    private Bundle m() {
        Bundle bundle = new Bundle();
        this.b.m(bundle);
        this.a.d(this.b, bundle, false);
        if (bundle.isEmpty()) {
            bundle = null;
        }
        if (this.b.F != null) {
            l();
        }
        if (this.b.d != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", this.b.d);
        }
        if (!this.b.H) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", this.b.H);
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        if (this.b.F == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.b.F.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.b.d = sparseArray;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(j<?> jVar, p pVar) {
        if (m.a(3)) {
            Log.d("FragmentManager", "movefrom CREATED: " + this.b);
        }
        boolean z = true;
        boolean z2 = this.b.l && !this.b.a();
        if (z2 || pVar.b(this.b)) {
            if (jVar instanceof androidx.lifecycle.x) {
                z = pVar.b();
            } else if (jVar.j() instanceof Activity) {
                z = true ^ ((Activity) jVar.j()).isChangingConfigurations();
            }
            if (z2 || z) {
                pVar.f(this.b);
            }
            this.b.W();
            this.a.f(this.b, false);
            return;
        }
        this.b.b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(p pVar) {
        if (m.a(3)) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + this.b);
        }
        this.b.X();
        boolean z = false;
        this.a.g(this.b, false);
        this.b.b = -1;
        this.b.s = null;
        this.b.u = null;
        this.b.r = null;
        if (this.b.l && !this.b.a()) {
            z = true;
        }
        if (z || pVar.b(this.b)) {
            if (m.a(3)) {
                Log.d("FragmentManager", "initState called for fragment: " + this.b);
            }
            this.b.A();
        }
    }
}
