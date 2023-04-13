package androidx.fragment.app;

import android.util.Log;
import androidx.fragment.app.c;
import androidx.fragment.app.m;
import androidx.fragment.app.t;
import java.io.PrintWriter;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BackStackRecord.java */
/* loaded from: classes.dex */
public final class a extends t implements m.c {
    final m a;
    boolean b;
    int c;

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.c >= 0) {
            sb.append(" #");
            sb.append(this.c);
        }
        if (this.l != null) {
            sb.append(" ");
            sb.append(this.l);
        }
        sb.append("}");
        return sb.toString();
    }

    public void a(String str, PrintWriter printWriter) {
        a(str, printWriter, true);
    }

    public void a(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.l);
            printWriter.print(" mIndex=");
            printWriter.print(this.c);
            printWriter.print(" mCommitted=");
            printWriter.println(this.b);
            if (this.i != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.i));
            }
            if (this.e != 0 || this.f != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.e));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f));
            }
            if (this.g != 0 || this.h != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.g));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.h));
            }
            if (this.m != 0 || this.n != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.m));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.n);
            }
            if (this.o != 0 || this.p != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.o));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.p);
            }
        }
        if (this.d.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.d.size();
        for (int i = 0; i < size; i++) {
            t.a aVar = this.d.get(i);
            switch (aVar.a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + aVar.a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(aVar.b);
            if (z) {
                if (aVar.c != 0 || aVar.d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.d));
                }
                if (aVar.e != 0 || aVar.f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(m mVar) {
        super(mVar.w(), mVar.c != null ? mVar.c.j().getClassLoader() : null);
        this.c = -1;
        this.a = mVar;
    }

    @Override // androidx.fragment.app.t
    void a(int i, c cVar, String str, int i2) {
        super.a(i, cVar, str, i2);
        cVar.r = this.a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        if (this.j) {
            if (m.a(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            int size = this.d.size();
            for (int i2 = 0; i2 < size; i2++) {
                t.a aVar = this.d.get(i2);
                if (aVar.b != null) {
                    aVar.b.q += i;
                    if (m.a(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + aVar.b + " to " + aVar.b.q);
                    }
                }
            }
        }
    }

    public void a() {
        if (this.t != null) {
            for (int i = 0; i < this.t.size(); i++) {
                this.t.get(i).run();
            }
            this.t = null;
        }
    }

    @Override // androidx.fragment.app.t
    public void b() {
        f();
        this.a.a((m.c) this, true);
    }

    @Override // androidx.fragment.app.m.c
    public boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        if (m.a(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(false);
        if (this.j) {
            this.a.a(this);
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(int i) {
        int size = this.d.size();
        for (int i2 = 0; i2 < size; i2++) {
            t.a aVar = this.d.get(i2);
            int i3 = aVar.b != null ? aVar.b.w : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(ArrayList<a> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.d.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            t.a aVar = this.d.get(i4);
            int i5 = aVar.b != null ? aVar.b.w : 0;
            if (i5 != 0 && i5 != i3) {
                for (int i6 = i; i6 < i2; i6++) {
                    a aVar2 = arrayList.get(i6);
                    int size2 = aVar2.d.size();
                    for (int i7 = 0; i7 < size2; i7++) {
                        t.a aVar3 = aVar2.d.get(i7);
                        if ((aVar3.b != null ? aVar3.b.w : 0) == i5) {
                            return true;
                        }
                    }
                }
                i3 = i5;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        int size = this.d.size();
        for (int i = 0; i < size; i++) {
            t.a aVar = this.d.get(i);
            c cVar = aVar.b;
            if (cVar != null) {
                cVar.b(this.i);
            }
            int i2 = aVar.a;
            if (i2 == 1) {
                cVar.a(aVar.c);
                this.a.a(cVar, false);
                this.a.i(cVar);
            } else {
                switch (i2) {
                    case 3:
                        cVar.a(aVar.d);
                        this.a.j(cVar);
                        break;
                    case 4:
                        cVar.a(aVar.d);
                        this.a.k(cVar);
                        break;
                    case 5:
                        cVar.a(aVar.c);
                        this.a.a(cVar, false);
                        this.a.l(cVar);
                        break;
                    case 6:
                        cVar.a(aVar.d);
                        this.a.m(cVar);
                        break;
                    case 7:
                        cVar.a(aVar.c);
                        this.a.a(cVar, false);
                        this.a.n(cVar);
                        break;
                    case 8:
                        this.a.o(cVar);
                        break;
                    case 9:
                        this.a.o(null);
                        break;
                    case 10:
                        this.a.a(cVar, aVar.h);
                        break;
                    default:
                        throw new IllegalArgumentException("Unknown cmd: " + aVar.a);
                }
            }
            if (!this.s && aVar.a != 1 && cVar != null) {
                this.a.g(cVar);
            }
        }
        if (this.s) {
            return;
        }
        this.a.a(this.a.b, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        for (int size = this.d.size() - 1; size >= 0; size--) {
            t.a aVar = this.d.get(size);
            c cVar = aVar.b;
            if (cVar != null) {
                cVar.b(m.d(this.i));
            }
            int i = aVar.a;
            if (i == 1) {
                cVar.a(aVar.f);
                this.a.a(cVar, true);
                this.a.j(cVar);
            } else {
                switch (i) {
                    case 3:
                        cVar.a(aVar.e);
                        this.a.i(cVar);
                        break;
                    case 4:
                        cVar.a(aVar.e);
                        this.a.l(cVar);
                        break;
                    case 5:
                        cVar.a(aVar.f);
                        this.a.a(cVar, true);
                        this.a.k(cVar);
                        break;
                    case 6:
                        cVar.a(aVar.e);
                        this.a.n(cVar);
                        break;
                    case 7:
                        cVar.a(aVar.f);
                        this.a.a(cVar, true);
                        this.a.m(cVar);
                        break;
                    case 8:
                        this.a.o(null);
                        break;
                    case 9:
                        this.a.o(cVar);
                        break;
                    case 10:
                        this.a.a(cVar, aVar.g);
                        break;
                    default:
                        throw new IllegalArgumentException("Unknown cmd: " + aVar.a);
                }
            }
            if (!this.s && aVar.a != 3 && cVar != null) {
                this.a.g(cVar);
            }
        }
        if (this.s || !z) {
            return;
        }
        this.a.a(this.a.b, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c a(ArrayList<c> arrayList, c cVar) {
        c cVar2 = cVar;
        int i = 0;
        while (i < this.d.size()) {
            t.a aVar = this.d.get(i);
            switch (aVar.a) {
                case 1:
                case 7:
                    arrayList.add(aVar.b);
                    break;
                case 2:
                    c cVar3 = aVar.b;
                    int i2 = cVar3.w;
                    c cVar4 = cVar2;
                    int i3 = i;
                    boolean z = false;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        c cVar5 = arrayList.get(size);
                        if (cVar5.w == i2) {
                            if (cVar5 == cVar3) {
                                z = true;
                            } else {
                                if (cVar5 == cVar4) {
                                    this.d.add(i3, new t.a(9, cVar5));
                                    i3++;
                                    cVar4 = null;
                                }
                                t.a aVar2 = new t.a(3, cVar5);
                                aVar2.c = aVar.c;
                                aVar2.e = aVar.e;
                                aVar2.d = aVar.d;
                                aVar2.f = aVar.f;
                                this.d.add(i3, aVar2);
                                arrayList.remove(cVar5);
                                i3++;
                            }
                        }
                    }
                    if (z) {
                        this.d.remove(i3);
                        i3--;
                    } else {
                        aVar.a = 1;
                        arrayList.add(cVar3);
                    }
                    i = i3;
                    cVar2 = cVar4;
                    break;
                case 3:
                case 6:
                    arrayList.remove(aVar.b);
                    if (aVar.b == cVar2) {
                        this.d.add(i, new t.a(9, aVar.b));
                        i++;
                        cVar2 = null;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    this.d.add(i, new t.a(9, cVar2));
                    i++;
                    cVar2 = aVar.b;
                    break;
            }
            i++;
        }
        return cVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c b(ArrayList<c> arrayList, c cVar) {
        for (int size = this.d.size() - 1; size >= 0; size--) {
            t.a aVar = this.d.get(size);
            int i = aVar.a;
            if (i != 1) {
                if (i != 3) {
                    switch (i) {
                        case 8:
                            cVar = null;
                            break;
                        case 9:
                            cVar = aVar.b;
                            break;
                        case 10:
                            aVar.h = aVar.g;
                            break;
                    }
                }
                arrayList.add(aVar.b);
            }
            arrayList.remove(aVar.b);
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        for (int i = 0; i < this.d.size(); i++) {
            if (b(this.d.get(i))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c.InterfaceC0034c interfaceC0034c) {
        for (int i = 0; i < this.d.size(); i++) {
            t.a aVar = this.d.get(i);
            if (b(aVar)) {
                aVar.b.a(interfaceC0034c);
            }
        }
    }

    private static boolean b(t.a aVar) {
        c cVar = aVar.b;
        return (cVar == null || !cVar.k || cVar.F == null || cVar.z || cVar.y || !cVar.af()) ? false : true;
    }

    public String e() {
        return this.l;
    }
}
