package androidx.fragment.app;

import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentTransition.java */
/* loaded from: classes.dex */
public class u {
    private static final int[] a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};
    private static final w b;
    private static final w c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentTransition.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(c cVar, androidx.core.c.a aVar);

        void b(c cVar, androidx.core.c.a aVar);
    }

    static {
        b = Build.VERSION.SDK_INT >= 21 ? new v() : null;
        c = a();
    }

    private static w a() {
        try {
            return (w) Class.forName("androidx.transition.FragmentTransitionSupport").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(m mVar, ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z, a aVar) {
        if (mVar.b < 1) {
            return;
        }
        SparseArray sparseArray = new SparseArray();
        for (int i3 = i; i3 < i2; i3++) {
            androidx.fragment.app.a aVar2 = arrayList.get(i3);
            if (arrayList2.get(i3).booleanValue()) {
                b(aVar2, sparseArray, z);
            } else {
                a(aVar2, sparseArray, z);
            }
        }
        if (sparseArray.size() != 0) {
            View view = new View(mVar.c.j());
            int size = sparseArray.size();
            for (int i4 = 0; i4 < size; i4++) {
                int keyAt = sparseArray.keyAt(i4);
                androidx.b.a<String, String> a2 = a(keyAt, arrayList, arrayList2, i, i2);
                b bVar = (b) sparseArray.valueAt(i4);
                if (z) {
                    a(mVar, keyAt, bVar, view, a2, aVar);
                } else {
                    b(mVar, keyAt, bVar, view, a2, aVar);
                }
            }
        }
    }

    private static androidx.b.a<String, String> a(int i, ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        androidx.b.a<String, String> aVar = new androidx.b.a<>();
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            androidx.fragment.app.a aVar2 = arrayList.get(i4);
            if (aVar2.b(i)) {
                boolean booleanValue = arrayList2.get(i4).booleanValue();
                if (aVar2.q != null) {
                    int size = aVar2.q.size();
                    if (booleanValue) {
                        arrayList3 = aVar2.q;
                        arrayList4 = aVar2.r;
                    } else {
                        ArrayList<String> arrayList5 = aVar2.q;
                        arrayList3 = aVar2.r;
                        arrayList4 = arrayList5;
                    }
                    for (int i5 = 0; i5 < size; i5++) {
                        String str = arrayList4.get(i5);
                        String str2 = arrayList3.get(i5);
                        String remove = aVar.remove(str2);
                        if (remove != null) {
                            aVar.put(str, remove);
                        } else {
                            aVar.put(str, str2);
                        }
                    }
                }
            }
        }
        return aVar;
    }

    private static void a(m mVar, int i, b bVar, View view, androidx.b.a<String, String> aVar, final a aVar2) {
        c cVar;
        final c cVar2;
        w a2;
        Object obj;
        ViewGroup viewGroup = mVar.d.a() ? (ViewGroup) mVar.d.a(i) : null;
        if (viewGroup == null || (a2 = a((cVar2 = bVar.d), (cVar = bVar.a))) == null) {
            return;
        }
        boolean z = bVar.b;
        boolean z2 = bVar.e;
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object a3 = a(a2, cVar, z);
        Object b2 = b(a2, cVar2, z2);
        Object a4 = a(a2, viewGroup, view, aVar, bVar, arrayList2, arrayList, a3, b2);
        if (a3 == null && a4 == null) {
            obj = b2;
            if (obj == null) {
                return;
            }
        } else {
            obj = b2;
        }
        ArrayList<View> a5 = a(a2, obj, cVar2, arrayList2, view);
        ArrayList<View> a6 = a(a2, a3, cVar, arrayList, view);
        a(a6, 4);
        Object a7 = a(a2, a3, obj, a4, cVar, z);
        if (cVar2 != null && a5 != null && (a5.size() > 0 || arrayList2.size() > 0)) {
            final androidx.core.c.a aVar3 = new androidx.core.c.a();
            aVar2.a(cVar2, aVar3);
            a2.a(cVar2, a7, aVar3, new Runnable() { // from class: androidx.fragment.app.u.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.b(cVar2, aVar3);
                }
            });
        }
        if (a7 != null) {
            a(a2, obj, cVar2, a5);
            ArrayList<String> a8 = a2.a(arrayList);
            a2.a(a7, a3, a6, obj, a5, a4, arrayList);
            a2.a(viewGroup, a7);
            a2.a(viewGroup, arrayList2, arrayList, a8, aVar);
            a(a6, 0);
            a2.a(a4, arrayList2, arrayList);
        }
    }

    private static void a(w wVar, Object obj, c cVar, final ArrayList<View> arrayList) {
        if (cVar != null && obj != null && cVar.k && cVar.y && cVar.L) {
            cVar.g(true);
            wVar.b(obj, cVar.s(), arrayList);
            androidx.core.g.r.a(cVar.E, new Runnable() { // from class: androidx.fragment.app.u.2
                @Override // java.lang.Runnable
                public void run() {
                    u.a(arrayList, 4);
                }
            });
        }
    }

    private static void b(m mVar, int i, b bVar, View view, androidx.b.a<String, String> aVar, final a aVar2) {
        c cVar;
        final c cVar2;
        w a2;
        Object obj;
        ViewGroup viewGroup = mVar.d.a() ? (ViewGroup) mVar.d.a(i) : null;
        if (viewGroup == null || (a2 = a((cVar2 = bVar.d), (cVar = bVar.a))) == null) {
            return;
        }
        boolean z = bVar.b;
        boolean z2 = bVar.e;
        Object a3 = a(a2, cVar, z);
        Object b2 = b(a2, cVar2, z2);
        ArrayList arrayList = new ArrayList();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object b3 = b(a2, viewGroup, view, aVar, bVar, arrayList, arrayList2, a3, b2);
        if (a3 == null && b3 == null) {
            obj = b2;
            if (obj == null) {
                return;
            }
        } else {
            obj = b2;
        }
        ArrayList<View> a4 = a(a2, obj, cVar2, arrayList, view);
        Object obj2 = (a4 == null || a4.isEmpty()) ? null : obj;
        a2.b(a3, view);
        Object a5 = a(a2, a3, obj2, b3, cVar, bVar.b);
        if (cVar2 != null && a4 != null && (a4.size() > 0 || arrayList.size() > 0)) {
            final androidx.core.c.a aVar3 = new androidx.core.c.a();
            aVar2.a(cVar2, aVar3);
            a2.a(cVar2, a5, aVar3, new Runnable() { // from class: androidx.fragment.app.u.3
                @Override // java.lang.Runnable
                public void run() {
                    a.this.b(cVar2, aVar3);
                }
            });
        }
        if (a5 != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            a2.a(a5, a3, arrayList3, obj2, a4, b3, arrayList2);
            a(a2, viewGroup, cVar, view, arrayList2, a3, arrayList3, obj2, a4);
            a2.a((View) viewGroup, arrayList2, (Map<String, String>) aVar);
            a2.a(viewGroup, a5);
            a2.a(viewGroup, arrayList2, (Map<String, String>) aVar);
        }
    }

    private static void a(final w wVar, ViewGroup viewGroup, final c cVar, final View view, final ArrayList<View> arrayList, final Object obj, final ArrayList<View> arrayList2, final Object obj2, final ArrayList<View> arrayList3) {
        androidx.core.g.r.a(viewGroup, new Runnable() { // from class: androidx.fragment.app.u.4
            @Override // java.lang.Runnable
            public void run() {
                if (obj != null) {
                    wVar.c(obj, view);
                    arrayList2.addAll(u.a(wVar, obj, cVar, arrayList, view));
                }
                if (arrayList3 != null) {
                    if (obj2 != null) {
                        ArrayList<View> arrayList4 = new ArrayList<>();
                        arrayList4.add(view);
                        wVar.b(obj2, arrayList3, arrayList4);
                    }
                    arrayList3.clear();
                    arrayList3.add(view);
                }
            }
        });
    }

    private static w a(c cVar, c cVar2) {
        ArrayList arrayList = new ArrayList();
        if (cVar != null) {
            Object F = cVar.F();
            if (F != null) {
                arrayList.add(F);
            }
            Object E = cVar.E();
            if (E != null) {
                arrayList.add(E);
            }
            Object I = cVar.I();
            if (I != null) {
                arrayList.add(I);
            }
        }
        if (cVar2 != null) {
            Object D = cVar2.D();
            if (D != null) {
                arrayList.add(D);
            }
            Object G = cVar2.G();
            if (G != null) {
                arrayList.add(G);
            }
            Object H = cVar2.H();
            if (H != null) {
                arrayList.add(H);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        if (b != null && a(b, arrayList)) {
            return b;
        }
        if (c != null && a(c, arrayList)) {
            return c;
        }
        if (b == null && c == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    private static boolean a(w wVar, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!wVar.a(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static Object a(w wVar, c cVar, c cVar2, boolean z) {
        Object H;
        if (cVar == null || cVar2 == null) {
            return null;
        }
        if (z) {
            H = cVar2.I();
        } else {
            H = cVar.H();
        }
        return wVar.c(wVar.b(H));
    }

    private static Object a(w wVar, c cVar, boolean z) {
        Object D;
        if (cVar == null) {
            return null;
        }
        if (z) {
            D = cVar.G();
        } else {
            D = cVar.D();
        }
        return wVar.b(D);
    }

    private static Object b(w wVar, c cVar, boolean z) {
        Object F;
        if (cVar == null) {
            return null;
        }
        if (z) {
            F = cVar.E();
        } else {
            F = cVar.F();
        }
        return wVar.b(F);
    }

    private static Object a(final w wVar, ViewGroup viewGroup, View view, androidx.b.a<String, String> aVar, b bVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        final View view2;
        final Rect rect;
        final c cVar = bVar.a;
        final c cVar2 = bVar.d;
        if (cVar != null) {
            cVar.t().setVisibility(0);
        }
        if (cVar == null || cVar2 == null) {
            return null;
        }
        final boolean z = bVar.b;
        Object a2 = aVar.isEmpty() ? null : a(wVar, cVar, cVar2, z);
        androidx.b.a<String, View> b2 = b(wVar, aVar, a2, bVar);
        final androidx.b.a<String, View> a3 = a(wVar, aVar, a2, bVar);
        if (aVar.isEmpty()) {
            if (b2 != null) {
                b2.clear();
            }
            if (a3 != null) {
                a3.clear();
            }
            obj3 = null;
        } else {
            a(arrayList, b2, aVar.keySet());
            a(arrayList2, a3, aVar.values());
            obj3 = a2;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        a(cVar, cVar2, z, b2, true);
        if (obj3 != null) {
            arrayList2.add(view);
            wVar.a(obj3, view, arrayList);
            a(wVar, obj3, obj2, b2, bVar.e, bVar.f);
            Rect rect2 = new Rect();
            View a4 = a(a3, bVar, obj, z);
            if (a4 != null) {
                wVar.a(obj, rect2);
            }
            rect = rect2;
            view2 = a4;
        } else {
            view2 = null;
            rect = null;
        }
        androidx.core.g.r.a(viewGroup, new Runnable() { // from class: androidx.fragment.app.u.5
            @Override // java.lang.Runnable
            public void run() {
                u.a(c.this, cVar2, z, (androidx.b.a<String, View>) a3, false);
                if (view2 != null) {
                    wVar.a(view2, rect);
                }
            }
        });
        return obj3;
    }

    private static void a(ArrayList<View> arrayList, androidx.b.a<String, View> aVar, Collection<String> collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View c2 = aVar.c(size);
            if (collection.contains(androidx.core.g.t.f(c2))) {
                arrayList.add(c2);
            }
        }
    }

    private static Object b(final w wVar, ViewGroup viewGroup, final View view, androidx.b.a<String, String> aVar, final b bVar, final ArrayList<View> arrayList, final ArrayList<View> arrayList2, final Object obj, Object obj2) {
        Object a2;
        androidx.b.a<String, String> aVar2;
        Object obj3;
        Rect rect;
        final c cVar = bVar.a;
        final c cVar2 = bVar.d;
        if (cVar == null || cVar2 == null) {
            return null;
        }
        final boolean z = bVar.b;
        if (aVar.isEmpty()) {
            aVar2 = aVar;
            a2 = null;
        } else {
            a2 = a(wVar, cVar, cVar2, z);
            aVar2 = aVar;
        }
        androidx.b.a<String, View> b2 = b(wVar, aVar2, a2, bVar);
        if (aVar.isEmpty()) {
            obj3 = null;
        } else {
            arrayList.addAll(b2.values());
            obj3 = a2;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        a(cVar, cVar2, z, b2, true);
        if (obj3 != null) {
            rect = new Rect();
            wVar.a(obj3, view, arrayList);
            a(wVar, obj3, obj2, b2, bVar.e, bVar.f);
            if (obj != null) {
                wVar.a(obj, rect);
            }
        } else {
            rect = null;
        }
        final androidx.b.a<String, String> aVar3 = aVar2;
        final Object obj4 = obj3;
        final Rect rect2 = rect;
        androidx.core.g.r.a(viewGroup, new Runnable() { // from class: androidx.fragment.app.u.6
            @Override // java.lang.Runnable
            public void run() {
                androidx.b.a<String, View> a3 = u.a(w.this, aVar3, obj4, bVar);
                if (a3 != null) {
                    arrayList2.addAll(a3.values());
                    arrayList2.add(view);
                }
                u.a(cVar, cVar2, z, a3, false);
                if (obj4 != null) {
                    w.this.a(obj4, arrayList, arrayList2);
                    View a4 = u.a(a3, bVar, obj, z);
                    if (a4 != null) {
                        w.this.a(a4, rect2);
                    }
                }
            }
        });
        return obj3;
    }

    private static androidx.b.a<String, View> b(w wVar, androidx.b.a<String, String> aVar, Object obj, b bVar) {
        androidx.core.app.g ab;
        ArrayList<String> arrayList;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        c cVar = bVar.d;
        androidx.b.a<String, View> aVar2 = new androidx.b.a<>();
        wVar.a((Map<String, View>) aVar2, cVar.t());
        androidx.fragment.app.a aVar3 = bVar.f;
        if (bVar.e) {
            ab = cVar.aa();
            arrayList = aVar3.r;
        } else {
            ab = cVar.ab();
            arrayList = aVar3.q;
        }
        if (arrayList != null) {
            aVar2.a((Collection<?>) arrayList);
        }
        if (ab != null) {
            ab.a(arrayList, aVar2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = aVar2.get(str);
                if (view == null) {
                    aVar.remove(str);
                } else if (!str.equals(androidx.core.g.t.f(view))) {
                    aVar.put(androidx.core.g.t.f(view), aVar.remove(str));
                }
            }
        } else {
            aVar.a((Collection<?>) aVar2.keySet());
        }
        return aVar2;
    }

    static androidx.b.a<String, View> a(w wVar, androidx.b.a<String, String> aVar, Object obj, b bVar) {
        androidx.core.app.g aa;
        ArrayList<String> arrayList;
        String a2;
        c cVar = bVar.a;
        View s = cVar.s();
        if (aVar.isEmpty() || obj == null || s == null) {
            aVar.clear();
            return null;
        }
        androidx.b.a<String, View> aVar2 = new androidx.b.a<>();
        wVar.a((Map<String, View>) aVar2, s);
        androidx.fragment.app.a aVar3 = bVar.c;
        if (bVar.b) {
            aa = cVar.ab();
            arrayList = aVar3.q;
        } else {
            aa = cVar.aa();
            arrayList = aVar3.r;
        }
        if (arrayList != null) {
            aVar2.a((Collection<?>) arrayList);
            aVar2.a((Collection<?>) aVar.values());
        }
        if (aa != null) {
            aa.a(arrayList, aVar2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = aVar2.get(str);
                if (view == null) {
                    String a3 = a(aVar, str);
                    if (a3 != null) {
                        aVar.remove(a3);
                    }
                } else if (!str.equals(androidx.core.g.t.f(view)) && (a2 = a(aVar, str)) != null) {
                    aVar.put(a2, androidx.core.g.t.f(view));
                }
            }
        } else {
            a(aVar, aVar2);
        }
        return aVar2;
    }

    private static String a(androidx.b.a<String, String> aVar, String str) {
        int size = aVar.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(aVar.c(i))) {
                return aVar.b(i);
            }
        }
        return null;
    }

    static View a(androidx.b.a<String, View> aVar, b bVar, Object obj, boolean z) {
        String str;
        androidx.fragment.app.a aVar2 = bVar.c;
        if (obj == null || aVar == null || aVar2.q == null || aVar2.q.isEmpty()) {
            return null;
        }
        if (z) {
            str = aVar2.q.get(0);
        } else {
            str = aVar2.r.get(0);
        }
        return aVar.get(str);
    }

    private static void a(w wVar, Object obj, Object obj2, androidx.b.a<String, View> aVar, boolean z, androidx.fragment.app.a aVar2) {
        String str;
        if (aVar2.q == null || aVar2.q.isEmpty()) {
            return;
        }
        if (z) {
            str = aVar2.r.get(0);
        } else {
            str = aVar2.q.get(0);
        }
        View view = aVar.get(str);
        wVar.a(obj, view);
        if (obj2 != null) {
            wVar.a(obj2, view);
        }
    }

    private static void a(androidx.b.a<String, String> aVar, androidx.b.a<String, View> aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey(aVar.c(size))) {
                aVar.d(size);
            }
        }
    }

    static void a(c cVar, c cVar2, boolean z, androidx.b.a<String, View> aVar, boolean z2) {
        androidx.core.app.g aa;
        if (z) {
            aa = cVar2.aa();
        } else {
            aa = cVar.aa();
        }
        if (aa != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = aVar == null ? 0 : aVar.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(aVar.b(i));
                arrayList.add(aVar.c(i));
            }
            if (z2) {
                aa.a(arrayList2, arrayList, null);
            } else {
                aa.b(arrayList2, arrayList, null);
            }
        }
    }

    static ArrayList<View> a(w wVar, Object obj, c cVar, ArrayList<View> arrayList, View view) {
        if (obj != null) {
            ArrayList<View> arrayList2 = new ArrayList<>();
            View s = cVar.s();
            if (s != null) {
                wVar.a(arrayList2, s);
            }
            if (arrayList != null) {
                arrayList2.removeAll(arrayList);
            }
            if (arrayList2.isEmpty()) {
                return arrayList2;
            }
            arrayList2.add(view);
            wVar.a(obj, arrayList2);
            return arrayList2;
        }
        return null;
    }

    static void a(ArrayList<View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    private static Object a(w wVar, Object obj, Object obj2, Object obj3, c cVar, boolean z) {
        boolean z2;
        if (obj == null || obj2 == null || cVar == null) {
            z2 = true;
        } else if (z) {
            z2 = cVar.K();
        } else {
            z2 = cVar.J();
        }
        if (z2) {
            return wVar.a(obj2, obj, obj3);
        }
        return wVar.b(obj2, obj, obj3);
    }

    public static void a(androidx.fragment.app.a aVar, SparseArray<b> sparseArray, boolean z) {
        int size = aVar.d.size();
        for (int i = 0; i < size; i++) {
            a(aVar, aVar.d.get(i), sparseArray, false, z);
        }
    }

    public static void b(androidx.fragment.app.a aVar, SparseArray<b> sparseArray, boolean z) {
        if (aVar.a.d.a()) {
            for (int size = aVar.d.size() - 1; size >= 0; size--) {
                a(aVar, aVar.d.get(size), sparseArray, true, z);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x002d, code lost:
        if (r0.k != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0065, code lost:
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0081, code lost:
        if (r0.y == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0083, code lost:
        r9 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x009f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00bf A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00d1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:92:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(androidx.fragment.app.a r8, androidx.fragment.app.t.a r9, android.util.SparseArray<androidx.fragment.app.u.b> r10, boolean r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.u.a(androidx.fragment.app.a, androidx.fragment.app.t$a, android.util.SparseArray, boolean, boolean):void");
    }

    private static b a(b bVar, SparseArray<b> sparseArray, int i) {
        if (bVar == null) {
            b bVar2 = new b();
            sparseArray.put(i, bVar2);
            return bVar2;
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentTransition.java */
    /* loaded from: classes.dex */
    public static class b {
        public c a;
        public boolean b;
        public androidx.fragment.app.a c;
        public c d;
        public boolean e;
        public androidx.fragment.app.a f;

        b() {
        }
    }
}
