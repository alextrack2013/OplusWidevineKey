package androidx.fragment.app;

import android.animation.Animator;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.lifecycle.f;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.UUID;
/* compiled from: Fragment.java */
/* loaded from: classes.dex */
public class c implements ComponentCallbacks, View.OnCreateContextMenuListener, androidx.lifecycle.j, androidx.lifecycle.x, androidx.savedstate.c {
    static final Object a = new Object();
    boolean A;
    boolean B;
    boolean C;
    ViewGroup E;
    View F;
    boolean G;
    a I;
    boolean K;
    boolean L;
    float M;
    LayoutInflater N;
    boolean O;
    androidx.lifecycle.k Q;
    x R;
    androidx.savedstate.b T;
    private boolean V;
    private int W;
    Bundle c;
    SparseArray<Parcelable> d;
    Boolean e;
    Bundle g;
    c h;
    int j;
    boolean k;
    boolean l;
    boolean m;
    boolean n;
    boolean o;
    boolean p;
    int q;
    m r;
    j<?> s;
    c u;
    int v;
    int w;
    String x;
    boolean y;
    boolean z;
    int b = -1;
    String f = UUID.randomUUID().toString();
    String i = null;
    private Boolean U = null;
    m t = new n();
    boolean D = true;
    boolean H = true;
    Runnable J = new Runnable() { // from class: androidx.fragment.app.c.1
        @Override // java.lang.Runnable
        public void run() {
            c.this.L();
        }
    };
    f.b P = f.b.RESUMED;
    androidx.lifecycle.o<androidx.lifecycle.j> S = new androidx.lifecycle.o<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Fragment.java */
    /* renamed from: androidx.fragment.app.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0034c {
        void a();

        void b();
    }

    public void C() {
    }

    public Animation a(int i, boolean z, int i2) {
        return null;
    }

    public void a(int i, int i2, Intent intent) {
    }

    public void a(int i, String[] strArr, int[] iArr) {
    }

    public void a(Menu menu) {
    }

    public void a(Menu menu, MenuInflater menuInflater) {
    }

    public void a(View view, Bundle bundle) {
    }

    public void a(c cVar) {
    }

    public void a(boolean z) {
    }

    public boolean a(MenuItem menuItem) {
        return false;
    }

    public Animator b(int i, boolean z, int i2) {
        return null;
    }

    public void b(Menu menu) {
    }

    public void b(boolean z) {
    }

    public boolean b(MenuItem menuItem) {
        return false;
    }

    public void c(boolean z) {
    }

    public void d(boolean z) {
    }

    public void j(Bundle bundle) {
    }

    @Override // androidx.lifecycle.j
    public androidx.lifecycle.f b() {
        return this.Q;
    }

    @Override // androidx.lifecycle.x
    public androidx.lifecycle.w c() {
        if (this.r == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        return this.r.b(this);
    }

    @Override // androidx.savedstate.c
    public final androidx.savedstate.a e() {
        return this.T.a();
    }

    /* compiled from: Fragment.java */
    /* loaded from: classes.dex */
    public static class b extends RuntimeException {
        public b(String str, Exception exc) {
            super(str, exc);
        }
    }

    public c() {
        ah();
    }

    private void ah() {
        this.Q = new androidx.lifecycle.k(this);
        this.T = androidx.savedstate.b.a(this);
        if (Build.VERSION.SDK_INT >= 19) {
            this.Q.a(new androidx.lifecycle.h() { // from class: androidx.fragment.app.Fragment$2
                @Override // androidx.lifecycle.h
                public void a(androidx.lifecycle.j jVar, f.a aVar) {
                    if (aVar != f.a.ON_STOP || c.this.F == null) {
                        return;
                    }
                    c.this.F.cancelPendingInputEvents();
                }
            });
        }
    }

    @Deprecated
    public static c a(Context context, String str, Bundle bundle) {
        try {
            c newInstance = i.b(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(newInstance.getClass().getClassLoader());
                newInstance.b(bundle);
            }
            return newInstance;
        } catch (IllegalAccessException e) {
            throw new b("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new b("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (NoSuchMethodException e3) {
            throw new b("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e3);
        } catch (InvocationTargetException e4) {
            throw new b("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Bundle bundle) {
        if (this.d != null) {
            this.F.restoreHierarchyState(this.d);
            this.d = null;
        }
        this.V = false;
        i(bundle);
        if (!this.V) {
            throw new y("Fragment " + this + " did not call through to super.onViewStateRestored()");
        } else if (this.F != null) {
            this.R.a(f.a.ON_CREATE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return this.q > 0;
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("}");
        sb.append(" (");
        sb.append(this.f);
        sb.append(")");
        if (this.v != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.v));
        }
        if (this.x != null) {
            sb.append(" ");
            sb.append(this.x);
        }
        sb.append('}');
        return sb.toString();
    }

    public void b(Bundle bundle) {
        if (this.r != null && d()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.g = bundle;
    }

    public final boolean d() {
        if (this.r == null) {
            return false;
        }
        return this.r.g();
    }

    public final c f() {
        if (this.h != null) {
            return this.h;
        }
        if (this.r == null || this.i == null) {
            return null;
        }
        return this.r.c(this.i);
    }

    public Context g() {
        if (this.s == null) {
            return null;
        }
        return this.s.j();
    }

    public final Context h() {
        Context g = g();
        if (g == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to a context.");
        }
        return g;
    }

    public final d i() {
        if (this.s == null) {
            return null;
        }
        return (d) this.s.i();
    }

    public final d j() {
        d i = i();
        if (i == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
        }
        return i;
    }

    public final Object k() {
        if (this.s == null) {
            return null;
        }
        return this.s.h();
    }

    public final Resources l() {
        return h().getResources();
    }

    public final m m() {
        m mVar = this.r;
        if (mVar == null) {
            throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
        }
        return mVar;
    }

    public final m n() {
        if (this.s == null) {
            throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
        }
        return this.t;
    }

    public final c o() {
        return this.u;
    }

    public final boolean p() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean q() {
        c o = o();
        return o != null && (o.p() || o.q());
    }

    public final boolean r() {
        return this.A;
    }

    public LayoutInflater c(Bundle bundle) {
        return e(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LayoutInflater d(Bundle bundle) {
        this.N = c(bundle);
        return this.N;
    }

    @Deprecated
    public LayoutInflater e(Bundle bundle) {
        if (this.s == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        LayoutInflater e = this.s.e();
        androidx.core.g.f.a(e, this.t.z());
        return e;
    }

    public void a(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.V = true;
        Activity i = this.s == null ? null : this.s.i();
        if (i != null) {
            this.V = false;
            a(i, attributeSet, bundle);
        }
    }

    @Deprecated
    public void a(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.V = true;
    }

    public void a(Context context) {
        this.V = true;
        Activity i = this.s == null ? null : this.s.i();
        if (i != null) {
            this.V = false;
            a(i);
        }
    }

    @Deprecated
    public void a(Activity activity) {
        this.V = true;
    }

    public void f(Bundle bundle) {
        this.V = true;
        g(bundle);
        if (this.t.b(1)) {
            return;
        }
        this.t.l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.t.a(parcelable);
        this.t.l();
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.W != 0) {
            return layoutInflater.inflate(this.W, viewGroup, false);
        }
        return null;
    }

    public View s() {
        return this.F;
    }

    public final View t() {
        View s = s();
        if (s == null) {
            throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
        }
        return s;
    }

    public void h(Bundle bundle) {
        this.V = true;
    }

    public void i(Bundle bundle) {
        this.V = true;
    }

    public void u() {
        this.V = true;
    }

    public void v() {
        this.V = true;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.V = true;
    }

    public void w() {
        this.V = true;
    }

    public void x() {
        this.V = true;
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.V = true;
    }

    public void y() {
        this.V = true;
    }

    public void z() {
        this.V = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void A() {
        ah();
        this.f = UUID.randomUUID().toString();
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = false;
        this.o = false;
        this.q = 0;
        this.r = null;
        this.t = new n();
        this.s = null;
        this.v = 0;
        this.w = 0;
        this.x = null;
        this.y = false;
        this.z = false;
    }

    public void B() {
        this.V = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        j().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public Object D() {
        if (this.I == null) {
            return null;
        }
        return this.I.f;
    }

    public Object E() {
        if (this.I == null) {
            return null;
        }
        return this.I.g == a ? D() : this.I.g;
    }

    public Object F() {
        if (this.I == null) {
            return null;
        }
        return this.I.h;
    }

    public Object G() {
        if (this.I == null) {
            return null;
        }
        return this.I.i == a ? F() : this.I.i;
    }

    public Object H() {
        if (this.I == null) {
            return null;
        }
        return this.I.j;
    }

    public Object I() {
        if (this.I == null) {
            return null;
        }
        return this.I.k == a ? H() : this.I.k;
    }

    public boolean J() {
        if (this.I == null || this.I.m == null) {
            return true;
        }
        return this.I.m.booleanValue();
    }

    public boolean K() {
        if (this.I == null || this.I.l == null) {
            return true;
        }
        return this.I.l.booleanValue();
    }

    public void L() {
        if (this.r == null || this.r.c == null) {
            ai().p = false;
        } else if (Looper.myLooper() != this.r.c.k().getLooper()) {
            this.r.c.k().postAtFrontOfQueue(new Runnable() { // from class: androidx.fragment.app.c.2
                @Override // java.lang.Runnable
                public void run() {
                    c.this.M();
                }
            });
        } else {
            M();
        }
    }

    void M() {
        InterfaceC0034c interfaceC0034c;
        if (this.I == null) {
            interfaceC0034c = null;
        } else {
            this.I.p = false;
            interfaceC0034c = this.I.q;
            this.I.q = null;
        }
        if (interfaceC0034c != null) {
            interfaceC0034c.a();
        }
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.v));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.w));
        printWriter.print(" mTag=");
        printWriter.println(this.x);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.b);
        printWriter.print(" mWho=");
        printWriter.print(this.f);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.q);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.k);
        printWriter.print(" mRemoving=");
        printWriter.print(this.l);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.m);
        printWriter.print(" mInLayout=");
        printWriter.println(this.n);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.y);
        printWriter.print(" mDetached=");
        printWriter.print(this.z);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.D);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.C);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.A);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.H);
        if (this.r != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.r);
        }
        if (this.s != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.s);
        }
        if (this.u != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.u);
        }
        if (this.g != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.g);
        }
        if (this.c != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.c);
        }
        if (this.d != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.d);
        }
        c f = f();
        if (f != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(f);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.j);
        }
        if (Y() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(Y());
        }
        if (this.E != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.E);
        }
        if (this.F != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.F);
        }
        if (ac() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(ac());
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(ae());
        }
        if (g() != null) {
            androidx.loader.a.a.a(this).a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.t + ":");
        m mVar = this.t;
        mVar.a(str + "  ", fileDescriptor, printWriter, strArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c a(String str) {
        return str.equals(this.f) ? this : this.t.b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void N() {
        this.t.a(this.s, new f() { // from class: androidx.fragment.app.c.3
            @Override // androidx.fragment.app.f
            public View a(int i) {
                if (c.this.F == null) {
                    throw new IllegalStateException("Fragment " + this + " does not have a view");
                }
                return c.this.F.findViewById(i);
            }

            @Override // androidx.fragment.app.f
            public boolean a() {
                return c.this.F != null;
            }
        }, this);
        this.b = 0;
        this.V = false;
        a(this.s.j());
        if (this.V) {
            return;
        }
        throw new y("Fragment " + this + " did not call through to super.onAttach()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(Bundle bundle) {
        this.t.k();
        this.b = 1;
        this.V = false;
        this.T.a(bundle);
        f(bundle);
        this.O = true;
        if (!this.V) {
            throw new y("Fragment " + this + " did not call through to super.onCreate()");
        }
        this.Q.a(f.a.ON_CREATE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.t.k();
        this.p = true;
        this.R = new x();
        this.F = a(layoutInflater, viewGroup, bundle);
        if (this.F != null) {
            this.R.a();
            this.S.a((androidx.lifecycle.o<androidx.lifecycle.j>) this.R);
        } else if (this.R.c()) {
            throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
        } else {
            this.R = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(Bundle bundle) {
        this.t.k();
        this.b = 2;
        this.V = false;
        h(bundle);
        if (!this.V) {
            throw new y("Fragment " + this + " did not call through to super.onActivityCreated()");
        }
        this.t.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void O() {
        this.t.k();
        this.t.a(true);
        this.b = 3;
        this.V = false;
        u();
        if (!this.V) {
            throw new y("Fragment " + this + " did not call through to super.onStart()");
        }
        this.Q.a(f.a.ON_START);
        if (this.F != null) {
            this.R.a(f.a.ON_START);
        }
        this.t.n();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void P() {
        this.t.k();
        this.t.a(true);
        this.b = 4;
        this.V = false;
        v();
        if (!this.V) {
            throw new y("Fragment " + this + " did not call through to super.onResume()");
        }
        this.Q.a(f.a.ON_RESUME);
        if (this.F != null) {
            this.R.a(f.a.ON_RESUME);
        }
        this.t.o();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Q() {
        this.t.k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void R() {
        boolean a2 = this.r.a(this);
        if (this.U == null || this.U.booleanValue() != a2) {
            this.U = Boolean.valueOf(a2);
            d(a2);
            this.t.u();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(boolean z) {
        b(z);
        this.t.b(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(boolean z) {
        c(z);
        this.t.c(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.t.a(configuration);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void S() {
        onLowMemory();
        this.t.t();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.y) {
            return false;
        }
        if (this.C && this.D) {
            z = true;
            a(menu, menuInflater);
        }
        return z | this.t.a(menu, menuInflater);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(Menu menu) {
        boolean z = false;
        if (this.y) {
            return false;
        }
        if (this.C && this.D) {
            z = true;
            a(menu);
        }
        return z | this.t.a(menu);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(MenuItem menuItem) {
        if (this.y) {
            return false;
        }
        return (this.C && this.D && a(menuItem)) || this.t.a(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(MenuItem menuItem) {
        if (this.y) {
            return false;
        }
        return b(menuItem) || this.t.b(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(Menu menu) {
        if (this.y) {
            return;
        }
        if (this.C && this.D) {
            b(menu);
        }
        this.t.b(menu);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(Bundle bundle) {
        j(bundle);
        this.T.b(bundle);
        Parcelable i = this.t.i();
        if (i != null) {
            bundle.putParcelable("android:support:fragments", i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void T() {
        this.t.p();
        if (this.F != null) {
            this.R.a(f.a.ON_PAUSE);
        }
        this.Q.a(f.a.ON_PAUSE);
        this.b = 3;
        this.V = false;
        w();
        if (this.V) {
            return;
        }
        throw new y("Fragment " + this + " did not call through to super.onPause()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void U() {
        this.t.q();
        if (this.F != null) {
            this.R.a(f.a.ON_STOP);
        }
        this.Q.a(f.a.ON_STOP);
        this.b = 2;
        this.V = false;
        x();
        if (this.V) {
            return;
        }
        throw new y("Fragment " + this + " did not call through to super.onStop()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void V() {
        this.t.r();
        if (this.F != null) {
            this.R.a(f.a.ON_DESTROY);
        }
        this.b = 1;
        this.V = false;
        y();
        if (!this.V) {
            throw new y("Fragment " + this + " did not call through to super.onDestroyView()");
        }
        androidx.loader.a.a.a(this).a();
        this.p = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void W() {
        this.t.s();
        this.Q.a(f.a.ON_DESTROY);
        this.b = 0;
        this.V = false;
        this.O = false;
        z();
        if (this.V) {
            return;
        }
        throw new y("Fragment " + this + " did not call through to super.onDestroy()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void X() {
        this.b = -1;
        this.V = false;
        B();
        this.N = null;
        if (!this.V) {
            throw new y("Fragment " + this + " did not call through to super.onDetach()");
        } else if (this.t.f()) {
        } else {
            this.t.s();
            this.t = new n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(InterfaceC0034c interfaceC0034c) {
        ai();
        if (interfaceC0034c == this.I.q) {
            return;
        }
        if (interfaceC0034c != null && this.I.q != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        if (this.I.p) {
            this.I.q = interfaceC0034c;
        }
        if (interfaceC0034c != null) {
            interfaceC0034c.b();
        }
    }

    private a ai() {
        if (this.I == null) {
            this.I = new a();
        }
        return this.I;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int Y() {
        if (this.I == null) {
            return 0;
        }
        return this.I.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        if (this.I == null && i == 0) {
            return;
        }
        ai().d = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int Z() {
        if (this.I == null) {
            return 0;
        }
        return this.I.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i) {
        if (this.I == null && i == 0) {
            return;
        }
        ai();
        this.I.e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public androidx.core.app.g aa() {
        if (this.I == null) {
            return null;
        }
        return this.I.n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public androidx.core.app.g ab() {
        if (this.I == null) {
            return null;
        }
        return this.I.o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View ac() {
        if (this.I == null) {
            return null;
        }
        return this.I.a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view) {
        ai().a = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Animator animator) {
        ai().b = animator;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Animator ad() {
        if (this.I == null) {
            return null;
        }
        return this.I.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int ae() {
        if (this.I == null) {
            return 0;
        }
        return this.I.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(int i) {
        ai().c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean af() {
        if (this.I == null) {
            return false;
        }
        return this.I.p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean ag() {
        if (this.I == null) {
            return false;
        }
        return this.I.r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(boolean z) {
        ai().r = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Fragment.java */
    /* loaded from: classes.dex */
    public static class a {
        View a;
        Animator b;
        int c;
        int d;
        int e;
        Boolean l;
        Boolean m;
        boolean p;
        InterfaceC0034c q;
        boolean r;
        Object f = null;
        Object g = c.a;
        Object h = null;
        Object i = c.a;
        Object j = null;
        Object k = c.a;
        androidx.core.app.g n = null;
        androidx.core.app.g o = null;

        a() {
        }
    }
}
