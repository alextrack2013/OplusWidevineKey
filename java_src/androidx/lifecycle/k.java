package androidx.lifecycle;

import androidx.lifecycle.f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* compiled from: LifecycleRegistry.java */
/* loaded from: classes.dex */
public class k extends f {
    private final WeakReference<j> d;
    private androidx.a.a.b.a<i, a> b = new androidx.a.a.b.a<>();
    private int e = 0;
    private boolean f = false;
    private boolean g = false;
    private ArrayList<f.b> h = new ArrayList<>();
    private f.b c = f.b.INITIALIZED;

    public k(j jVar) {
        this.d = new WeakReference<>(jVar);
    }

    @Deprecated
    public void a(f.b bVar) {
        b(bVar);
    }

    public void b(f.b bVar) {
        c(bVar);
    }

    public void a(f.a aVar) {
        c(b(aVar));
    }

    private void c(f.b bVar) {
        if (this.c == bVar) {
            return;
        }
        this.c = bVar;
        if (this.f || this.e != 0) {
            this.g = true;
            return;
        }
        this.f = true;
        d();
        this.f = false;
    }

    private boolean b() {
        if (this.b.a() == 0) {
            return true;
        }
        f.b bVar = this.b.d().getValue().a;
        f.b bVar2 = this.b.e().getValue().a;
        return bVar == bVar2 && this.c == bVar2;
    }

    private f.b c(i iVar) {
        Map.Entry<i, a> d = this.b.d(iVar);
        return a(a(this.c, d != null ? d.getValue().a : null), this.h.isEmpty() ? null : this.h.get(this.h.size() - 1));
    }

    @Override // androidx.lifecycle.f
    public void a(i iVar) {
        j jVar;
        a aVar = new a(iVar, this.c == f.b.DESTROYED ? f.b.DESTROYED : f.b.INITIALIZED);
        if (this.b.a(iVar, aVar) == null && (jVar = this.d.get()) != null) {
            boolean z = this.e != 0 || this.f;
            f.b c = c(iVar);
            this.e++;
            while (aVar.a.compareTo(c) < 0 && this.b.c(iVar)) {
                d(aVar.a);
                aVar.a(jVar, f(aVar.a));
                c();
                c = c(iVar);
            }
            if (!z) {
                d();
            }
            this.e--;
        }
    }

    private void c() {
        this.h.remove(this.h.size() - 1);
    }

    private void d(f.b bVar) {
        this.h.add(bVar);
    }

    @Override // androidx.lifecycle.f
    public void b(i iVar) {
        this.b.b(iVar);
    }

    @Override // androidx.lifecycle.f
    public f.b a() {
        return this.c;
    }

    static f.b b(f.a aVar) {
        switch (aVar) {
            case ON_CREATE:
            case ON_STOP:
                return f.b.CREATED;
            case ON_START:
            case ON_PAUSE:
                return f.b.STARTED;
            case ON_RESUME:
                return f.b.RESUMED;
            case ON_DESTROY:
                return f.b.DESTROYED;
            default:
                throw new IllegalArgumentException("Unexpected event value " + aVar);
        }
    }

    private static f.a e(f.b bVar) {
        switch (bVar) {
            case INITIALIZED:
                throw new IllegalArgumentException();
            case CREATED:
                return f.a.ON_DESTROY;
            case STARTED:
                return f.a.ON_STOP;
            case RESUMED:
                return f.a.ON_PAUSE;
            case DESTROYED:
                throw new IllegalArgumentException();
            default:
                throw new IllegalArgumentException("Unexpected state value " + bVar);
        }
    }

    private static f.a f(f.b bVar) {
        switch (bVar) {
            case INITIALIZED:
            case DESTROYED:
                return f.a.ON_CREATE;
            case CREATED:
                return f.a.ON_START;
            case STARTED:
                return f.a.ON_RESUME;
            case RESUMED:
                throw new IllegalArgumentException();
            default:
                throw new IllegalArgumentException("Unexpected state value " + bVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(j jVar) {
        androidx.a.a.b.b<i, a>.d c = this.b.c();
        while (c.hasNext() && !this.g) {
            Map.Entry next = c.next();
            a aVar = (a) next.getValue();
            while (aVar.a.compareTo(this.c) < 0 && !this.g && this.b.c(next.getKey())) {
                d(aVar.a);
                aVar.a(jVar, f(aVar.a));
                c();
            }
        }
    }

    private void b(j jVar) {
        Iterator<Map.Entry<i, a>> b = this.b.b();
        while (b.hasNext() && !this.g) {
            Map.Entry<i, a> next = b.next();
            a value = next.getValue();
            while (value.a.compareTo(this.c) > 0 && !this.g && this.b.c(next.getKey())) {
                f.a e = e(value.a);
                d(b(e));
                value.a(jVar, e);
                c();
            }
        }
    }

    private void d() {
        j jVar = this.d.get();
        if (jVar == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
        }
        while (!b()) {
            this.g = false;
            if (this.c.compareTo(this.b.d().getValue().a) < 0) {
                b(jVar);
            }
            Map.Entry<i, a> e = this.b.e();
            if (!this.g && e != null && this.c.compareTo(e.getValue().a) > 0) {
                a(jVar);
            }
        }
        this.g = false;
    }

    static f.b a(f.b bVar, f.b bVar2) {
        return (bVar2 == null || bVar2.compareTo(bVar) >= 0) ? bVar : bVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LifecycleRegistry.java */
    /* loaded from: classes.dex */
    public static class a {
        f.b a;
        h b;

        a(i iVar, f.b bVar) {
            this.b = m.a(iVar);
            this.a = bVar;
        }

        void a(j jVar, f.a aVar) {
            f.b b = k.b(aVar);
            this.a = k.a(this.a, b);
            this.b.a(jVar, aVar);
            this.a = b;
        }
    }
}
