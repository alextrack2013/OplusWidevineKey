package androidx.lifecycle;

import androidx.lifecycle.a;
import androidx.lifecycle.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ReflectiveGenericLifecycleObserver implements h {
    private final Object a;
    private final a.C0035a b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.a = obj;
        this.b = a.a.b(this.a.getClass());
    }

    @Override // androidx.lifecycle.h
    public void a(j jVar, f.a aVar) {
        this.b.a(jVar, aVar, this.a);
    }
}
