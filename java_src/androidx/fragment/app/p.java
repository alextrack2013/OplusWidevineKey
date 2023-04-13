package androidx.fragment.app;

import android.util.Log;
import androidx.lifecycle.v;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentManagerViewModel.java */
/* loaded from: classes.dex */
public final class p extends androidx.lifecycle.u {
    private static final v.a a = new v.a() { // from class: androidx.fragment.app.p.1
        @Override // androidx.lifecycle.v.a
        public <T extends androidx.lifecycle.u> T a(Class<T> cls) {
            return new p(true);
        }
    };
    private final boolean e;
    private final HashMap<String, c> b = new HashMap<>();
    private final HashMap<String, p> c = new HashMap<>();
    private final HashMap<String, androidx.lifecycle.w> d = new HashMap<>();
    private boolean f = false;
    private boolean g = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static p a(androidx.lifecycle.w wVar) {
        return (p) new androidx.lifecycle.v(wVar, a).a(p.class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(boolean z) {
        this.e = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.u
    public void a() {
        if (m.a(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(c cVar) {
        if (this.b.containsKey(cVar.f)) {
            return false;
        }
        this.b.put(cVar.f, cVar);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c a(String str) {
        return this.b.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Collection<c> c() {
        return this.b.values();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(c cVar) {
        if (this.b.containsKey(cVar.f)) {
            if (this.e) {
                return this.f;
            }
            return !this.g;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(c cVar) {
        return this.b.remove(cVar.f) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p d(c cVar) {
        p pVar = this.c.get(cVar.f);
        if (pVar == null) {
            p pVar2 = new p(this.e);
            this.c.put(cVar.f, pVar2);
            return pVar2;
        }
        return pVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public androidx.lifecycle.w e(c cVar) {
        androidx.lifecycle.w wVar = this.d.get(cVar.f);
        if (wVar == null) {
            androidx.lifecycle.w wVar2 = new androidx.lifecycle.w();
            this.d.put(cVar.f, wVar2);
            return wVar2;
        }
        return wVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(c cVar) {
        if (m.a(3)) {
            Log.d("FragmentManager", "Clearing non-config state for " + cVar);
        }
        p pVar = this.c.get(cVar.f);
        if (pVar != null) {
            pVar.a();
            this.c.remove(cVar.f);
        }
        androidx.lifecycle.w wVar = this.d.get(cVar.f);
        if (wVar != null) {
            wVar.b();
            this.d.remove(cVar.f);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        return this.b.equals(pVar.b) && this.c.equals(pVar.c) && this.d.equals(pVar.d);
    }

    public int hashCode() {
        return (((this.b.hashCode() * 31) + this.c.hashCode()) * 31) + this.d.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<c> it = this.b.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.c.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.d.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
