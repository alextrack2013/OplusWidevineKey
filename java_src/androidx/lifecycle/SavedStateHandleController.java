package androidx.lifecycle;

import androidx.lifecycle.f;
import androidx.savedstate.a;
/* loaded from: classes.dex */
final class SavedStateHandleController implements h {
    private final String a;
    private boolean b;
    private final t c;

    boolean a() {
        return this.b;
    }

    void a(androidx.savedstate.a aVar, f fVar) {
        if (this.b) {
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
        this.b = true;
        fVar.a(this);
        aVar.a(this.a, this.c.a());
    }

    @Override // androidx.lifecycle.h
    public void a(j jVar, f.a aVar) {
        if (aVar == f.a.ON_DESTROY) {
            this.b = false;
            jVar.b().b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a implements a.InterfaceC0039a {
        a() {
        }

        @Override // androidx.savedstate.a.InterfaceC0039a
        public void a(androidx.savedstate.c cVar) {
            if (!(cVar instanceof x)) {
                throw new IllegalStateException("Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner");
            }
            w c = ((x) cVar).c();
            androidx.savedstate.a e = cVar.e();
            for (String str : c.a()) {
                SavedStateHandleController.a(c.a(str), e, cVar.b());
            }
            if (c.a().isEmpty()) {
                return;
            }
            e.a(a.class);
        }
    }

    static void a(u uVar, androidx.savedstate.a aVar, f fVar) {
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) uVar.b("androidx.lifecycle.savedstate.vm.tag");
        if (savedStateHandleController == null || savedStateHandleController.a()) {
            return;
        }
        savedStateHandleController.a(aVar, fVar);
        b(aVar, fVar);
    }

    private static void b(final androidx.savedstate.a aVar, final f fVar) {
        f.b a2 = fVar.a();
        if (a2 == f.b.INITIALIZED || a2.a(f.b.STARTED)) {
            aVar.a(a.class);
        } else {
            fVar.a(new h() { // from class: androidx.lifecycle.SavedStateHandleController.1
                @Override // androidx.lifecycle.h
                public void a(j jVar, f.a aVar2) {
                    if (aVar2 == f.a.ON_START) {
                        f.this.b(this);
                        aVar.a(a.class);
                    }
                }
            });
        }
    }
}
