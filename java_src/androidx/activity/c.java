package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: OnBackPressedCallback.java */
/* loaded from: classes.dex */
public abstract class c {
    private boolean a;
    private CopyOnWriteArrayList<a> b = new CopyOnWriteArrayList<>();

    public abstract void c();

    public c(boolean z) {
        this.a = z;
    }

    public final void a(boolean z) {
        this.a = z;
    }

    public final boolean a() {
        return this.a;
    }

    public final void b() {
        Iterator<a> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        this.b.add(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(a aVar) {
        this.b.remove(aVar);
    }
}
