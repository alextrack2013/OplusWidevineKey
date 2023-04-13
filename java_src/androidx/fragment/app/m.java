package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedDispatcher;
import androidx.fragment.R;
import androidx.fragment.app.c;
import androidx.fragment.app.e;
import androidx.fragment.app.u;
import androidx.lifecycle.f;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: FragmentManager.java */
/* loaded from: classes.dex */
public abstract class m {
    private static boolean f = false;
    private ArrayList<androidx.fragment.app.a> A;
    private ArrayList<Boolean> B;
    private ArrayList<androidx.fragment.app.c> C;
    private ArrayList<d> D;
    private p E;
    ArrayList<androidx.fragment.app.a> a;
    j<?> c;
    f d;
    androidx.fragment.app.c e;
    private boolean h;
    private ArrayList<androidx.fragment.app.c> j;
    private OnBackPressedDispatcher l;
    private ArrayList<b> o;
    private androidx.fragment.app.c s;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;
    private final ArrayList<c> g = new ArrayList<>();
    private final s i = new s();
    private final k k = new k(this);
    private final androidx.activity.c m = new androidx.activity.c(false) { // from class: androidx.fragment.app.m.1
        @Override // androidx.activity.c
        public void c() {
            m.this.b();
        }
    };
    private final AtomicInteger n = new AtomicInteger();
    private ConcurrentHashMap<androidx.fragment.app.c, HashSet<androidx.core.c.a>> p = new ConcurrentHashMap<>();
    private final u.a q = new u.a() { // from class: androidx.fragment.app.m.2
        @Override // androidx.fragment.app.u.a
        public void a(androidx.fragment.app.c cVar, androidx.core.c.a aVar) {
            m.this.a(cVar, aVar);
        }

        @Override // androidx.fragment.app.u.a
        public void b(androidx.fragment.app.c cVar, androidx.core.c.a aVar) {
            if (aVar.a()) {
                return;
            }
            m.this.b(cVar, aVar);
        }
    };
    private final l r = new l(this);
    int b = -1;
    private i t = null;
    private i u = new i() { // from class: androidx.fragment.app.m.3
        @Override // androidx.fragment.app.i
        public androidx.fragment.app.c c(ClassLoader classLoader, String str) {
            return m.this.c.a(m.this.c.j(), str, null);
        }
    };
    private Runnable F = new Runnable() { // from class: androidx.fragment.app.m.4
        @Override // java.lang.Runnable
        public void run() {
            m.this.a(true);
        }
    };

    /* compiled from: FragmentManager.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        public void a(m mVar, androidx.fragment.app.c cVar) {
        }

        public void a(m mVar, androidx.fragment.app.c cVar, Context context) {
        }

        public void a(m mVar, androidx.fragment.app.c cVar, Bundle bundle) {
        }

        public void a(m mVar, androidx.fragment.app.c cVar, View view, Bundle bundle) {
        }

        public void b(m mVar, androidx.fragment.app.c cVar) {
        }

        public void b(m mVar, androidx.fragment.app.c cVar, Context context) {
        }

        public void b(m mVar, androidx.fragment.app.c cVar, Bundle bundle) {
        }

        public void c(m mVar, androidx.fragment.app.c cVar) {
        }

        public void c(m mVar, androidx.fragment.app.c cVar, Bundle bundle) {
        }

        public void d(m mVar, androidx.fragment.app.c cVar) {
        }

        public void d(m mVar, androidx.fragment.app.c cVar, Bundle bundle) {
        }

        public void e(m mVar, androidx.fragment.app.c cVar) {
        }

        public void f(m mVar, androidx.fragment.app.c cVar) {
        }

        public void g(m mVar, androidx.fragment.app.c cVar) {
        }
    }

    /* compiled from: FragmentManager.java */
    /* loaded from: classes.dex */
    public interface b {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentManager.java */
    /* loaded from: classes.dex */
    public interface c {
        boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(int i) {
        if (i != 4097) {
            if (i != 4099) {
                return i != 8194 ? 0 : 4097;
            }
            return 4099;
        }
        return 8194;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(int i) {
        return f || Log.isLoggable("FragmentManager", i);
    }

    public t a() {
        return new androidx.fragment.app.a(this);
    }

    private void A() {
        synchronized (this.g) {
            boolean z = true;
            if (!this.g.isEmpty()) {
                this.m.a(true);
            } else {
                this.m.a((d() <= 0 || !a(this.s)) ? false : false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(androidx.fragment.app.c cVar) {
        if (cVar == null) {
            return true;
        }
        m mVar = cVar.r;
        return cVar.equals(mVar.v()) && a(mVar.s);
    }

    void b() {
        a(true);
        if (this.m.a()) {
            c();
        } else {
            this.l.a();
        }
    }

    public boolean c() {
        return a((String) null, -1, 0);
    }

    private boolean a(String str, int i, int i2) {
        a(false);
        d(true);
        if (this.e == null || i >= 0 || str != null || !this.e.n().c()) {
            boolean a2 = a(this.A, this.B, str, i, i2);
            if (a2) {
                this.h = true;
                try {
                    b(this.A, this.B);
                } finally {
                    D();
                }
            }
            A();
            G();
            this.i.b();
            return a2;
        }
        return true;
    }

    public int d() {
        if (this.a != null) {
            return this.a.size();
        }
        return 0;
    }

    void a(androidx.fragment.app.c cVar, androidx.core.c.a aVar) {
        if (this.p.get(cVar) == null) {
            this.p.put(cVar, new HashSet<>());
        }
        this.p.get(cVar).add(aVar);
    }

    void b(androidx.fragment.app.c cVar, androidx.core.c.a aVar) {
        HashSet<androidx.core.c.a> hashSet = this.p.get(cVar);
        if (hashSet != null && hashSet.remove(aVar) && hashSet.isEmpty()) {
            this.p.remove(cVar);
            if (cVar.b < 3) {
                r(cVar);
                a(cVar, cVar.ae());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static androidx.fragment.app.c a(View view) {
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if (tag instanceof androidx.fragment.app.c) {
            return (androidx.fragment.app.c) tag;
        }
        return null;
    }

    public List<androidx.fragment.app.c> e() {
        return this.i.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public androidx.lifecycle.w b(androidx.fragment.app.c cVar) {
        return this.E.e(cVar);
    }

    private p p(androidx.fragment.app.c cVar) {
        return this.E.d(cVar);
    }

    void c(androidx.fragment.app.c cVar) {
        if (g()) {
            if (a(2)) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
            }
        } else if (this.E.a(cVar) && a(2)) {
            Log.v("FragmentManager", "Updating retained Fragments: Added " + cVar);
        }
    }

    void d(androidx.fragment.app.c cVar) {
        if (g()) {
            if (a(2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else if (this.E.c(cVar) && a(2)) {
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + cVar);
        }
    }

    public boolean f() {
        return this.y;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        if (this.s != null) {
            sb.append(this.s.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.s)));
            sb.append("}");
        } else {
            sb.append(this.c.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.c)));
            sb.append("}");
        }
        sb.append("}}");
        return sb.toString();
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2 = str + "    ";
        this.i.a(str, fileDescriptor, printWriter, strArr);
        if (this.j != null && (size2 = this.j.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i = 0; i < size2; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(this.j.get(i).toString());
            }
        }
        if (this.a != null && (size = this.a.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i2 = 0; i2 < size; i2++) {
                androidx.fragment.app.a aVar = this.a.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.a(str2, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.n.get());
        synchronized (this.g) {
            int size3 = this.g.size();
            if (size3 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i3 = 0; i3 < size3; i3++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i3);
                    printWriter.print(": ");
                    printWriter.println(this.g.get(i3));
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.c);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.d);
        if (this.s != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.s);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.b);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.w);
        printWriter.print(" mStopped=");
        printWriter.print(this.x);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.y);
        if (this.v) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.v);
        }
    }

    void e(androidx.fragment.app.c cVar) {
        if (cVar.G) {
            if (this.h) {
                this.z = true;
                return;
            }
            cVar.G = false;
            a(cVar, this.b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(int i) {
        return this.b >= i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(androidx.fragment.app.c r10, int r11) {
        /*
            Method dump skipped, instructions count: 594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.m.a(androidx.fragment.app.c, int):void");
    }

    private void q(androidx.fragment.app.c cVar) {
        HashSet<androidx.core.c.a> hashSet = this.p.get(cVar);
        if (hashSet != null) {
            Iterator<androidx.core.c.a> it = hashSet.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
            hashSet.clear();
            r(cVar);
            this.p.remove(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(androidx.fragment.app.c cVar, boolean z) {
        ViewGroup u = u(cVar);
        if (u == null || !(u instanceof g)) {
            return;
        }
        ((g) u).setDrawDisappearingViewsLast(!z);
    }

    private void r(androidx.fragment.app.c cVar) {
        cVar.V();
        this.r.e(cVar, false);
        cVar.E = null;
        cVar.F = null;
        cVar.R = null;
        cVar.S.a((androidx.lifecycle.o<androidx.lifecycle.j>) null);
        cVar.n = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(androidx.fragment.app.c cVar) {
        a(cVar, this.b);
    }

    private void s(final androidx.fragment.app.c cVar) {
        if (cVar.F != null) {
            e.a a2 = e.a(this.c.j(), this.d, cVar, !cVar.y);
            if (a2 != null && a2.b != null) {
                a2.b.setTarget(cVar.F);
                if (cVar.y) {
                    if (cVar.ag()) {
                        cVar.g(false);
                    } else {
                        final ViewGroup viewGroup = cVar.E;
                        final View view = cVar.F;
                        viewGroup.startViewTransition(view);
                        a2.b.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.m.5
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                viewGroup.endViewTransition(view);
                                animator.removeListener(this);
                                if (cVar.F == null || !cVar.y) {
                                    return;
                                }
                                cVar.F.setVisibility(8);
                            }
                        });
                    }
                } else {
                    cVar.F.setVisibility(0);
                }
                a2.b.start();
            } else {
                if (a2 != null) {
                    cVar.F.startAnimation(a2.a);
                    a2.a.start();
                }
                cVar.F.setVisibility((!cVar.y || cVar.ag()) ? 0 : 8);
                if (cVar.ag()) {
                    cVar.g(false);
                }
            }
        }
        if (cVar.k && w(cVar)) {
            this.v = true;
        }
        cVar.L = false;
        cVar.a(cVar.y);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(androidx.fragment.app.c cVar) {
        if (!this.i.b(cVar.f)) {
            if (a(3)) {
                Log.d("FragmentManager", "Ignoring moving " + cVar + " to state " + this.b + "since it is not added to " + this);
                return;
            }
            return;
        }
        f(cVar);
        if (cVar.F != null) {
            androidx.fragment.app.c c2 = this.i.c(cVar);
            if (c2 != null) {
                View view = c2.F;
                ViewGroup viewGroup = cVar.E;
                int indexOfChild = viewGroup.indexOfChild(view);
                int indexOfChild2 = viewGroup.indexOfChild(cVar.F);
                if (indexOfChild2 < indexOfChild) {
                    viewGroup.removeViewAt(indexOfChild2);
                    viewGroup.addView(cVar.F, indexOfChild);
                }
            }
            if (cVar.K && cVar.E != null) {
                if (cVar.M > 0.0f) {
                    cVar.F.setAlpha(cVar.M);
                }
                cVar.M = 0.0f;
                cVar.K = false;
                e.a a2 = e.a(this.c.j(), this.d, cVar, true);
                if (a2 != null) {
                    if (a2.a != null) {
                        cVar.F.startAnimation(a2.a);
                    } else {
                        a2.b.setTarget(cVar.F);
                        a2.b.start();
                    }
                }
            }
        }
        if (cVar.L) {
            s(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, boolean z) {
        if (this.c == null && i != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z || i != this.b) {
            this.b = i;
            for (androidx.fragment.app.c cVar : this.i.e()) {
                g(cVar);
            }
            for (androidx.fragment.app.c cVar2 : this.i.f()) {
                if (cVar2 != null && !cVar2.K) {
                    g(cVar2);
                }
            }
            B();
            if (this.v && this.c != null && this.b == 4) {
                this.c.g();
                this.v = false;
            }
        }
    }

    private void B() {
        for (androidx.fragment.app.c cVar : this.i.f()) {
            if (cVar != null) {
                e(cVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(androidx.fragment.app.c cVar) {
        if (this.i.b(cVar.f)) {
            return;
        }
        r rVar = new r(this.r, cVar);
        rVar.a(this.c.j().getClassLoader());
        this.i.a(rVar);
        if (cVar.B) {
            if (cVar.A) {
                c(cVar);
            } else {
                d(cVar);
            }
            cVar.B = false;
        }
        rVar.a(this.b);
        if (a(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + cVar);
        }
    }

    private void a(r rVar) {
        androidx.fragment.app.c a2 = rVar.a();
        if (this.i.b(a2.f)) {
            if (a(2)) {
                Log.v("FragmentManager", "Removed fragment from active set " + a2);
            }
            this.i.b(rVar);
            d(a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(androidx.fragment.app.c cVar) {
        if (a(2)) {
            Log.v("FragmentManager", "add: " + cVar);
        }
        h(cVar);
        if (cVar.z) {
            return;
        }
        this.i.a(cVar);
        cVar.l = false;
        if (cVar.F == null) {
            cVar.L = false;
        }
        if (w(cVar)) {
            this.v = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(androidx.fragment.app.c cVar) {
        if (a(2)) {
            Log.v("FragmentManager", "remove: " + cVar + " nesting=" + cVar.q);
        }
        boolean z = !cVar.a();
        if (!cVar.z || z) {
            this.i.b(cVar);
            if (w(cVar)) {
                this.v = true;
            }
            cVar.l = true;
            t(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(androidx.fragment.app.c cVar) {
        if (a(2)) {
            Log.v("FragmentManager", "hide: " + cVar);
        }
        if (cVar.y) {
            return;
        }
        cVar.y = true;
        cVar.L = true ^ cVar.L;
        t(cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(androidx.fragment.app.c cVar) {
        if (a(2)) {
            Log.v("FragmentManager", "show: " + cVar);
        }
        if (cVar.y) {
            cVar.y = false;
            cVar.L = !cVar.L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(androidx.fragment.app.c cVar) {
        if (a(2)) {
            Log.v("FragmentManager", "detach: " + cVar);
        }
        if (cVar.z) {
            return;
        }
        cVar.z = true;
        if (cVar.k) {
            if (a(2)) {
                Log.v("FragmentManager", "remove from detach: " + cVar);
            }
            this.i.b(cVar);
            if (w(cVar)) {
                this.v = true;
            }
            t(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(androidx.fragment.app.c cVar) {
        if (a(2)) {
            Log.v("FragmentManager", "attach: " + cVar);
        }
        if (cVar.z) {
            cVar.z = false;
            if (cVar.k) {
                return;
            }
            this.i.a(cVar);
            if (a(2)) {
                Log.v("FragmentManager", "add from attach: " + cVar);
            }
            if (w(cVar)) {
                this.v = true;
            }
        }
    }

    public androidx.fragment.app.c c(int i) {
        return this.i.b(i);
    }

    public androidx.fragment.app.c a(String str) {
        return this.i.a(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public androidx.fragment.app.c b(String str) {
        return this.i.d(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public androidx.fragment.app.c c(String str) {
        return this.i.e(str);
    }

    private void C() {
        if (g()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    public boolean g() {
        return this.w || this.x;
    }

    void h() {
        synchronized (this.g) {
            boolean z = (this.D == null || this.D.isEmpty()) ? false : true;
            boolean z2 = this.g.size() == 1;
            if (z || z2) {
                this.c.k().removeCallbacks(this.F);
                this.c.k().post(this.F);
                A();
            }
        }
    }

    private void d(boolean z) {
        if (this.h) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.c == null) {
            if (this.y) {
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            throw new IllegalStateException("FragmentManager has not been attached to a host.");
        } else if (Looper.myLooper() != this.c.k().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        } else {
            if (!z) {
                C();
            }
            if (this.A == null) {
                this.A = new ArrayList<>();
                this.B = new ArrayList<>();
            }
            this.h = true;
            try {
                a((ArrayList<androidx.fragment.app.a>) null, (ArrayList<Boolean>) null);
            } finally {
                this.h = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar, boolean z) {
        if (z && (this.c == null || this.y)) {
            return;
        }
        d(z);
        if (cVar.a(this.A, this.B)) {
            this.h = true;
            try {
                b(this.A, this.B);
            } finally {
                D();
            }
        }
        A();
        G();
        this.i.b();
    }

    private void D() {
        this.h = false;
        this.B.clear();
        this.A.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(boolean z) {
        d(z);
        boolean z2 = false;
        while (c(this.A, this.B)) {
            this.h = true;
            try {
                b(this.A, this.B);
                D();
                z2 = true;
            } catch (Throwable th) {
                D();
                throw th;
            }
        }
        A();
        G();
        this.i.b();
        return z2;
    }

    private void a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        int indexOf;
        int indexOf2;
        int size = this.D == null ? 0 : this.D.size();
        int i = 0;
        while (i < size) {
            d dVar = this.D.get(i);
            if (arrayList != null && !dVar.a && (indexOf2 = arrayList.indexOf(dVar.b)) != -1 && arrayList2 != null && arrayList2.get(indexOf2).booleanValue()) {
                this.D.remove(i);
                i--;
                size--;
                dVar.e();
            } else if (dVar.c() || (arrayList != null && dVar.b.a(arrayList, 0, arrayList.size()))) {
                this.D.remove(i);
                i--;
                size--;
                if (arrayList != null && !dVar.a && (indexOf = arrayList.indexOf(dVar.b)) != -1 && arrayList2 != null && arrayList2.get(indexOf).booleanValue()) {
                    dVar.e();
                } else {
                    dVar.d();
                }
            }
            i++;
        }
    }

    private void b(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        a(arrayList, arrayList2);
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (!arrayList.get(i).s) {
                if (i2 != i) {
                    a(arrayList, arrayList2, i2, i);
                }
                i2 = i + 1;
                if (arrayList2.get(i).booleanValue()) {
                    while (i2 < size && arrayList2.get(i2).booleanValue() && !arrayList.get(i2).s) {
                        i2++;
                    }
                }
                a(arrayList, arrayList2, i, i2);
                i = i2 - 1;
            }
            i++;
        }
        if (i2 != size) {
            a(arrayList, arrayList2, i2, size);
        }
    }

    private void a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        int i3;
        int i4 = i;
        boolean z = arrayList.get(i4).s;
        if (this.C == null) {
            this.C = new ArrayList<>();
        } else {
            this.C.clear();
        }
        this.C.addAll(this.i.e());
        androidx.fragment.app.c v = v();
        boolean z2 = false;
        for (int i5 = i4; i5 < i2; i5++) {
            androidx.fragment.app.a aVar = arrayList.get(i5);
            if (!arrayList2.get(i5).booleanValue()) {
                v = aVar.a(this.C, v);
            } else {
                v = aVar.b(this.C, v);
            }
            z2 = z2 || aVar.j;
        }
        this.C.clear();
        if (!z) {
            u.a(this, arrayList, arrayList2, i4, i2, false, this.q);
        }
        b(arrayList, arrayList2, i, i2);
        if (z) {
            androidx.b.b<androidx.fragment.app.c> bVar = new androidx.b.b<>();
            b(bVar);
            int a2 = a(arrayList, arrayList2, i4, i2, bVar);
            a(bVar);
            i3 = a2;
        } else {
            i3 = i2;
        }
        if (i3 != i4 && z) {
            u.a(this, arrayList, arrayList2, i4, i3, true, this.q);
            a(this.b, true);
        }
        while (i4 < i2) {
            androidx.fragment.app.a aVar2 = arrayList.get(i4);
            if (arrayList2.get(i4).booleanValue() && aVar2.c >= 0) {
                aVar2.c = -1;
            }
            aVar2.a();
            i4++;
        }
        if (z2) {
            H();
        }
    }

    private void a(androidx.b.b<androidx.fragment.app.c> bVar) {
        int size = bVar.size();
        for (int i = 0; i < size; i++) {
            androidx.fragment.app.c b2 = bVar.b(i);
            if (!b2.k) {
                View t = b2.t();
                b2.M = t.getAlpha();
                t.setAlpha(0.0f);
            }
        }
    }

    private int a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, androidx.b.b<androidx.fragment.app.c> bVar) {
        int i3 = i2;
        for (int i4 = i2 - 1; i4 >= i; i4--) {
            androidx.fragment.app.a aVar = arrayList.get(i4);
            boolean booleanValue = arrayList2.get(i4).booleanValue();
            if (aVar.d() && !aVar.a(arrayList, i4 + 1, i2)) {
                if (this.D == null) {
                    this.D = new ArrayList<>();
                }
                d dVar = new d(aVar, booleanValue);
                this.D.add(dVar);
                aVar.a(dVar);
                if (booleanValue) {
                    aVar.c();
                } else {
                    aVar.a(false);
                }
                i3--;
                if (i4 != i3) {
                    arrayList.remove(i4);
                    arrayList.add(i3, aVar);
                }
                b(bVar);
            }
        }
        return i3;
    }

    void a(androidx.fragment.app.a aVar, boolean z, boolean z2, boolean z3) {
        if (z) {
            aVar.a(z3);
        } else {
            aVar.c();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z));
        if (z2) {
            u.a(this, arrayList, arrayList2, 0, 1, true, this.q);
        }
        if (z3) {
            a(this.b, true);
        }
        for (androidx.fragment.app.c cVar : this.i.f()) {
            if (cVar != null && cVar.F != null && cVar.K && aVar.b(cVar.w)) {
                if (cVar.M > 0.0f) {
                    cVar.F.setAlpha(cVar.M);
                }
                if (z3) {
                    cVar.M = 0.0f;
                } else {
                    cVar.M = -1.0f;
                    cVar.K = false;
                }
            }
        }
    }

    private static void b(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        while (i < i2) {
            androidx.fragment.app.a aVar = arrayList.get(i);
            if (arrayList2.get(i).booleanValue()) {
                aVar.a(-1);
                aVar.a(i == i2 + (-1));
            } else {
                aVar.a(1);
                aVar.c();
            }
            i++;
        }
    }

    private void t(androidx.fragment.app.c cVar) {
        ViewGroup u = u(cVar);
        if (u != null) {
            if (u.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                u.setTag(R.id.visible_removing_fragment_view_tag, cVar);
            }
            ((androidx.fragment.app.c) u.getTag(R.id.visible_removing_fragment_view_tag)).a(cVar.Y());
        }
    }

    private ViewGroup u(androidx.fragment.app.c cVar) {
        if (cVar.w > 0 && this.d.a()) {
            View a2 = this.d.a(cVar.w);
            if (a2 instanceof ViewGroup) {
                return (ViewGroup) a2;
            }
        }
        return null;
    }

    private void b(androidx.b.b<androidx.fragment.app.c> bVar) {
        if (this.b < 1) {
            return;
        }
        int min = Math.min(this.b, 3);
        for (androidx.fragment.app.c cVar : this.i.e()) {
            if (cVar.b < min) {
                a(cVar, min);
                if (cVar.F != null && !cVar.y && cVar.K) {
                    bVar.add(cVar);
                }
            }
        }
    }

    private void E() {
        if (this.D != null) {
            while (!this.D.isEmpty()) {
                this.D.remove(0).d();
            }
        }
    }

    private void F() {
        if (this.p.isEmpty()) {
            return;
        }
        for (androidx.fragment.app.c cVar : this.p.keySet()) {
            q(cVar);
            a(cVar, cVar.ae());
        }
    }

    private boolean c(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this.g) {
            if (this.g.isEmpty()) {
                return false;
            }
            int size = this.g.size();
            boolean z = false;
            for (int i = 0; i < size; i++) {
                z |= this.g.get(i).a(arrayList, arrayList2);
            }
            this.g.clear();
            this.c.k().removeCallbacks(this.F);
            return z;
        }
    }

    private void G() {
        if (this.z) {
            this.z = false;
            B();
        }
    }

    private void H() {
        if (this.o != null) {
            for (int i = 0; i < this.o.size(); i++) {
                this.o.get(i).a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(androidx.fragment.app.a aVar) {
        if (this.a == null) {
            this.a = new ArrayList<>();
        }
        this.a.add(aVar);
    }

    boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        int size;
        if (this.a == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size2 = this.a.size() - 1;
            if (size2 < 0) {
                return false;
            }
            arrayList.add(this.a.remove(size2));
            arrayList2.add(true);
        } else {
            if (str != null || i >= 0) {
                size = this.a.size() - 1;
                while (size >= 0) {
                    androidx.fragment.app.a aVar = this.a.get(size);
                    if ((str != null && str.equals(aVar.e())) || (i >= 0 && i == aVar.c)) {
                        break;
                    }
                    size--;
                }
                if (size < 0) {
                    return false;
                }
                if ((i2 & 1) != 0) {
                    size--;
                    while (size >= 0) {
                        androidx.fragment.app.a aVar2 = this.a.get(size);
                        if ((str == null || !str.equals(aVar2.e())) && (i < 0 || i != aVar2.c)) {
                            break;
                        }
                        size--;
                    }
                }
            } else {
                size = -1;
            }
            if (size == this.a.size() - 1) {
                return false;
            }
            for (int size3 = this.a.size() - 1; size3 > size; size3--) {
                arrayList.add(this.a.remove(size3));
                arrayList2.add(true);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Parcelable i() {
        int size;
        E();
        F();
        a(true);
        this.w = true;
        ArrayList<q> c2 = this.i.c();
        androidx.fragment.app.b[] bVarArr = null;
        if (c2.isEmpty()) {
            if (a(2)) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        ArrayList<String> d2 = this.i.d();
        if (this.a != null && (size = this.a.size()) > 0) {
            bVarArr = new androidx.fragment.app.b[size];
            for (int i = 0; i < size; i++) {
                bVarArr[i] = new androidx.fragment.app.b(this.a.get(i));
                if (a(2)) {
                    Log.v("FragmentManager", "saveAllState: adding back stack #" + i + ": " + this.a.get(i));
                }
            }
        }
        o oVar = new o();
        oVar.a = c2;
        oVar.b = d2;
        oVar.c = bVarArr;
        oVar.d = this.n.get();
        if (this.e != null) {
            oVar.e = this.e.f;
        }
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Parcelable parcelable) {
        r rVar;
        if (parcelable == null) {
            return;
        }
        o oVar = (o) parcelable;
        if (oVar.a == null) {
            return;
        }
        this.i.a();
        Iterator<q> it = oVar.a.iterator();
        while (it.hasNext()) {
            q next = it.next();
            if (next != null) {
                androidx.fragment.app.c a2 = this.E.a(next.b);
                if (a2 != null) {
                    if (a(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + a2);
                    }
                    rVar = new r(this.r, a2, next);
                } else {
                    rVar = new r(this.r, this.c.j().getClassLoader(), w(), next);
                }
                androidx.fragment.app.c a3 = rVar.a();
                a3.r = this;
                if (a(2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + a3.f + "): " + a3);
                }
                rVar.a(this.c.j().getClassLoader());
                this.i.a(rVar);
                rVar.a(this.b);
            }
        }
        for (androidx.fragment.app.c cVar : this.E.c()) {
            if (!this.i.b(cVar.f)) {
                if (a(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + cVar + " that was not found in the set of active Fragments " + oVar.a);
                }
                a(cVar, 1);
                cVar.l = true;
                a(cVar, -1);
            }
        }
        this.i.a(oVar.b);
        if (oVar.c != null) {
            this.a = new ArrayList<>(oVar.c.length);
            for (int i = 0; i < oVar.c.length; i++) {
                androidx.fragment.app.a a4 = oVar.c[i].a(this);
                if (a(2)) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i + " (index " + a4.c + "): " + a4);
                    PrintWriter printWriter = new PrintWriter(new androidx.core.f.b("FragmentManager"));
                    a4.a("  ", printWriter, false);
                    printWriter.close();
                }
                this.a.add(a4);
            }
        } else {
            this.a = null;
        }
        this.n.set(oVar.d);
        if (oVar.e != null) {
            this.e = c(oVar.e);
            v(this.e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public androidx.fragment.app.c j() {
        return this.s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public void a(j<?> jVar, f fVar, androidx.fragment.app.c cVar) {
        if (this.c != null) {
            throw new IllegalStateException("Already attached");
        }
        this.c = jVar;
        this.d = fVar;
        this.s = cVar;
        if (this.s != null) {
            A();
        }
        if (jVar instanceof androidx.activity.d) {
            androidx.activity.d dVar = (androidx.activity.d) jVar;
            this.l = dVar.d();
            androidx.fragment.app.c cVar2 = dVar;
            if (cVar != null) {
                cVar2 = cVar;
            }
            this.l.a(cVar2, this.m);
        }
        if (cVar != null) {
            this.E = cVar.r.p(cVar);
        } else if (jVar instanceof androidx.lifecycle.x) {
            this.E = p.a(((androidx.lifecycle.x) jVar).c());
        } else {
            this.E = new p(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        this.w = false;
        this.x = false;
        for (androidx.fragment.app.c cVar : this.i.e()) {
            if (cVar != null) {
                cVar.Q();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        this.w = false;
        this.x = false;
        e(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
        this.w = false;
        this.x = false;
        e(2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
        this.w = false;
        this.x = false;
        e(3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o() {
        this.w = false;
        this.x = false;
        e(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p() {
        e(3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q() {
        this.x = true;
        e(2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r() {
        e(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s() {
        this.y = true;
        a(true);
        F();
        e(-1);
        this.c = null;
        this.d = null;
        this.s = null;
        if (this.l != null) {
            this.m.b();
            this.l = null;
        }
    }

    private void e(int i) {
        try {
            this.h = true;
            this.i.a(i);
            a(i, false);
            this.h = false;
            a(true);
        } catch (Throwable th) {
            this.h = false;
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        for (androidx.fragment.app.c cVar : this.i.e()) {
            if (cVar != null) {
                cVar.e(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(boolean z) {
        for (androidx.fragment.app.c cVar : this.i.e()) {
            if (cVar != null) {
                cVar.f(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Configuration configuration) {
        for (androidx.fragment.app.c cVar : this.i.e()) {
            if (cVar != null) {
                cVar.a(configuration);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t() {
        for (androidx.fragment.app.c cVar : this.i.e()) {
            if (cVar != null) {
                cVar.S();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(Menu menu, MenuInflater menuInflater) {
        if (this.b < 1) {
            return false;
        }
        ArrayList<androidx.fragment.app.c> arrayList = null;
        boolean z = false;
        for (androidx.fragment.app.c cVar : this.i.e()) {
            if (cVar != null && cVar.b(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(cVar);
                z = true;
            }
        }
        if (this.j != null) {
            for (int i = 0; i < this.j.size(); i++) {
                androidx.fragment.app.c cVar2 = this.j.get(i);
                if (arrayList == null || !arrayList.contains(cVar2)) {
                    cVar2.C();
                }
            }
        }
        this.j = arrayList;
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(Menu menu) {
        boolean z = false;
        if (this.b < 1) {
            return false;
        }
        for (androidx.fragment.app.c cVar : this.i.e()) {
            if (cVar != null && cVar.c(menu)) {
                z = true;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(MenuItem menuItem) {
        if (this.b < 1) {
            return false;
        }
        for (androidx.fragment.app.c cVar : this.i.e()) {
            if (cVar != null && cVar.c(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(MenuItem menuItem) {
        if (this.b < 1) {
            return false;
        }
        for (androidx.fragment.app.c cVar : this.i.e()) {
            if (cVar != null && cVar.d(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Menu menu) {
        if (this.b < 1) {
            return;
        }
        for (androidx.fragment.app.c cVar : this.i.e()) {
            if (cVar != null) {
                cVar.d(menu);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(androidx.fragment.app.c cVar) {
        if (cVar != null && (!cVar.equals(c(cVar.f)) || (cVar.s != null && cVar.r != this))) {
            throw new IllegalArgumentException("Fragment " + cVar + " is not an active fragment of FragmentManager " + this);
        }
        androidx.fragment.app.c cVar2 = this.e;
        this.e = cVar;
        v(cVar2);
        v(this.e);
    }

    private void v(androidx.fragment.app.c cVar) {
        if (cVar == null || !cVar.equals(c(cVar.f))) {
            return;
        }
        cVar.R();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u() {
        A();
        v(this.e);
    }

    public androidx.fragment.app.c v() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(androidx.fragment.app.c cVar, f.b bVar) {
        if (!cVar.equals(c(cVar.f)) || (cVar.s != null && cVar.r != this)) {
            throw new IllegalArgumentException("Fragment " + cVar + " is not an active fragment of FragmentManager " + this);
        }
        cVar.P = bVar;
    }

    public i w() {
        if (this.t != null) {
            return this.t;
        }
        if (this.s != null) {
            return this.s.r.w();
        }
        return this.u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l x() {
        return this.r;
    }

    boolean y() {
        boolean z = false;
        for (androidx.fragment.app.c cVar : this.i.f()) {
            if (cVar != null) {
                z = w(cVar);
                continue;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    private boolean w(androidx.fragment.app.c cVar) {
        return (cVar.C && cVar.D) || cVar.t.y();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LayoutInflater.Factory2 z() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentManager.java */
    /* loaded from: classes.dex */
    public static class d implements c.InterfaceC0034c {
        final boolean a;
        final androidx.fragment.app.a b;
        private int c;

        d(androidx.fragment.app.a aVar, boolean z) {
            this.a = z;
            this.b = aVar;
        }

        @Override // androidx.fragment.app.c.InterfaceC0034c
        public void a() {
            this.c--;
            if (this.c != 0) {
                return;
            }
            this.b.a.h();
        }

        @Override // androidx.fragment.app.c.InterfaceC0034c
        public void b() {
            this.c++;
        }

        public boolean c() {
            return this.c == 0;
        }

        void d() {
            boolean z = this.c > 0;
            for (androidx.fragment.app.c cVar : this.b.a.e()) {
                cVar.a((c.InterfaceC0034c) null);
                if (z && cVar.af()) {
                    cVar.L();
                }
            }
            this.b.a.a(this.b, this.a, !z, true);
        }

        void e() {
            this.b.a.a(this.b, this.a, false, false);
        }
    }
}
