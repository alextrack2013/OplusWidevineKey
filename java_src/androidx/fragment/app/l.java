package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.m;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentLifecycleCallbacksDispatcher.java */
/* loaded from: classes.dex */
public class l {
    private final CopyOnWriteArrayList<a> a = new CopyOnWriteArrayList<>();
    private final m b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FragmentLifecycleCallbacksDispatcher.java */
    /* loaded from: classes.dex */
    public static final class a {
        final m.a a;
        final boolean b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(m mVar) {
        this.b = mVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar, Context context, boolean z) {
        c j = this.b.j();
        if (j != null) {
            j.m().x().a(cVar, context, true);
        }
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (!z || next.b) {
                next.a.a(this.b, cVar, context);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(c cVar, Context context, boolean z) {
        c j = this.b.j();
        if (j != null) {
            j.m().x().b(cVar, context, true);
        }
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (!z || next.b) {
                next.a.b(this.b, cVar, context);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar, Bundle bundle, boolean z) {
        c j = this.b.j();
        if (j != null) {
            j.m().x().a(cVar, bundle, true);
        }
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (!z || next.b) {
                next.a.a(this.b, cVar, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(c cVar, Bundle bundle, boolean z) {
        c j = this.b.j();
        if (j != null) {
            j.m().x().b(cVar, bundle, true);
        }
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (!z || next.b) {
                next.a.b(this.b, cVar, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(c cVar, Bundle bundle, boolean z) {
        c j = this.b.j();
        if (j != null) {
            j.m().x().c(cVar, bundle, true);
        }
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (!z || next.b) {
                next.a.c(this.b, cVar, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar, View view, Bundle bundle, boolean z) {
        c j = this.b.j();
        if (j != null) {
            j.m().x().a(cVar, view, bundle, true);
        }
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (!z || next.b) {
                next.a.a(this.b, cVar, view, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar, boolean z) {
        c j = this.b.j();
        if (j != null) {
            j.m().x().a(cVar, true);
        }
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (!z || next.b) {
                next.a.a(this.b, cVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(c cVar, boolean z) {
        c j = this.b.j();
        if (j != null) {
            j.m().x().b(cVar, true);
        }
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (!z || next.b) {
                next.a.b(this.b, cVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(c cVar, boolean z) {
        c j = this.b.j();
        if (j != null) {
            j.m().x().c(cVar, true);
        }
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (!z || next.b) {
                next.a.c(this.b, cVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(c cVar, boolean z) {
        c j = this.b.j();
        if (j != null) {
            j.m().x().d(cVar, true);
        }
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (!z || next.b) {
                next.a.d(this.b, cVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(c cVar, Bundle bundle, boolean z) {
        c j = this.b.j();
        if (j != null) {
            j.m().x().d(cVar, bundle, true);
        }
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (!z || next.b) {
                next.a.d(this.b, cVar, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(c cVar, boolean z) {
        c j = this.b.j();
        if (j != null) {
            j.m().x().e(cVar, true);
        }
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (!z || next.b) {
                next.a.e(this.b, cVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(c cVar, boolean z) {
        c j = this.b.j();
        if (j != null) {
            j.m().x().f(cVar, true);
        }
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (!z || next.b) {
                next.a.f(this.b, cVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(c cVar, boolean z) {
        c j = this.b.j();
        if (j != null) {
            j.m().x().g(cVar, true);
        }
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (!z || next.b) {
                next.a.g(this.b, cVar);
            }
        }
    }
}
