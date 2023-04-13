package androidx.fragment.app;

import androidx.lifecycle.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentViewLifecycleOwner.java */
/* loaded from: classes.dex */
public class x implements androidx.lifecycle.j {
    private androidx.lifecycle.k a = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.a == null) {
            this.a = new androidx.lifecycle.k(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return this.a != null;
    }

    @Override // androidx.lifecycle.j
    public androidx.lifecycle.f b() {
        a();
        return this.a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(f.a aVar) {
        this.a.a(aVar);
    }
}
