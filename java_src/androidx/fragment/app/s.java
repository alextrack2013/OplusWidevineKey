package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentStore.java */
/* loaded from: classes.dex */
public class s {
    private final ArrayList<c> a = new ArrayList<>();
    private final HashMap<String, r> b = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.b.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(List<String> list) {
        this.a.clear();
        if (list != null) {
            for (String str : list) {
                c e = e(str);
                if (e == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
                if (m.a(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + e);
                }
                a(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(r rVar) {
        this.b.put(rVar.a().f, rVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar) {
        if (this.a.contains(cVar)) {
            throw new IllegalStateException("Fragment already added: " + cVar);
        }
        synchronized (this.a) {
            this.a.add(cVar);
        }
        cVar.k = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        Iterator<c> it = this.a.iterator();
        while (it.hasNext()) {
            r rVar = this.b.get(it.next().f);
            if (rVar != null) {
                rVar.a(i);
            }
        }
        for (r rVar2 : this.b.values()) {
            if (rVar2 != null) {
                rVar2.a(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(c cVar) {
        synchronized (this.a) {
            this.a.remove(cVar);
        }
        cVar.k = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(r rVar) {
        c a = rVar.a();
        for (r rVar2 : this.b.values()) {
            if (rVar2 != null) {
                c a2 = rVar2.a();
                if (a.f.equals(a2.i)) {
                    a2.h = a;
                    a2.i = null;
                }
            }
        }
        this.b.put(a.f, null);
        if (a.i != null) {
            a.h = e(a.i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.b.values().removeAll(Collections.singleton(null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<q> c() {
        ArrayList<q> arrayList = new ArrayList<>(this.b.size());
        for (r rVar : this.b.values()) {
            if (rVar != null) {
                c a = rVar.a();
                q k = rVar.k();
                arrayList.add(k);
                if (m.a(2)) {
                    Log.v("FragmentManager", "Saved state of " + a + ": " + k.m);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<String> d() {
        synchronized (this.a) {
            if (this.a.isEmpty()) {
                return null;
            }
            ArrayList<String> arrayList = new ArrayList<>(this.a.size());
            Iterator<c> it = this.a.iterator();
            while (it.hasNext()) {
                c next = it.next();
                arrayList.add(next.f);
                if (m.a(2)) {
                    Log.v("FragmentManager", "saveAllState: adding fragment (" + next.f + "): " + next);
                }
            }
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<c> e() {
        ArrayList arrayList;
        if (this.a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.a) {
            arrayList = new ArrayList(this.a);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<c> f() {
        ArrayList arrayList = new ArrayList();
        for (r rVar : this.b.values()) {
            if (rVar != null) {
                arrayList.add(rVar.a());
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c b(int i) {
        for (int size = this.a.size() - 1; size >= 0; size--) {
            c cVar = this.a.get(size);
            if (cVar != null && cVar.v == i) {
                return cVar;
            }
        }
        for (r rVar : this.b.values()) {
            if (rVar != null) {
                c a = rVar.a();
                if (a.v == i) {
                    return a;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c a(String str) {
        if (str != null) {
            for (int size = this.a.size() - 1; size >= 0; size--) {
                c cVar = this.a.get(size);
                if (cVar != null && str.equals(cVar.x)) {
                    return cVar;
                }
            }
        }
        if (str != null) {
            for (r rVar : this.b.values()) {
                if (rVar != null) {
                    c a = rVar.a();
                    if (str.equals(a.x)) {
                        return a;
                    }
                }
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(String str) {
        return this.b.containsKey(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r c(String str) {
        return this.b.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c d(String str) {
        c a;
        for (r rVar : this.b.values()) {
            if (rVar != null && (a = rVar.a().a(str)) != null) {
                return a;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c e(String str) {
        r rVar = this.b.get(str);
        if (rVar != null) {
            return rVar.a();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c c(c cVar) {
        ViewGroup viewGroup = cVar.E;
        View view = cVar.F;
        if (viewGroup == null || view == null) {
            return null;
        }
        for (int indexOf = this.a.indexOf(cVar) - 1; indexOf >= 0; indexOf--) {
            c cVar2 = this.a.get(indexOf);
            if (cVar2.E == viewGroup && cVar2.F != null) {
                return cVar2;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.b.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments:");
            for (r rVar : this.b.values()) {
                printWriter.print(str);
                if (rVar != null) {
                    c a = rVar.a();
                    printWriter.println(a);
                    a.a(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size = this.a.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(this.a.get(i).toString());
            }
        }
    }
}
