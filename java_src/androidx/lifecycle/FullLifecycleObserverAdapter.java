package androidx.lifecycle;

import androidx.lifecycle.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FullLifecycleObserverAdapter implements h {
    private final c a;
    private final h b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FullLifecycleObserverAdapter(c cVar, h hVar) {
        this.a = cVar;
        this.b = hVar;
    }

    @Override // androidx.lifecycle.h
    public void a(j jVar, f.a aVar) {
        switch (aVar) {
            case ON_CREATE:
                this.a.a(jVar);
                break;
            case ON_START:
                this.a.b(jVar);
                break;
            case ON_RESUME:
                this.a.c(jVar);
                break;
            case ON_PAUSE:
                this.a.d(jVar);
                break;
            case ON_STOP:
                this.a.e(jVar);
                break;
            case ON_DESTROY:
                this.a.f(jVar);
                break;
            case ON_ANY:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        if (this.b != null) {
            this.b.a(jVar, aVar);
        }
    }
}
