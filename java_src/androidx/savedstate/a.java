package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.e;
import androidx.lifecycle.f;
import androidx.lifecycle.j;
import androidx.savedstate.Recreator;
import java.util.Map;
/* compiled from: SavedStateRegistry.java */
@SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
public final class a {
    private Bundle c;
    private boolean d;
    private Recreator.a e;
    private androidx.a.a.b.b<String, b> b = new androidx.a.a.b.b<>();
    boolean a = true;

    /* compiled from: SavedStateRegistry.java */
    /* renamed from: androidx.savedstate.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0039a {
        void a(c cVar);
    }

    /* compiled from: SavedStateRegistry.java */
    /* loaded from: classes.dex */
    public interface b {
        Bundle a();
    }

    public Bundle a(String str) {
        if (!this.d) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        if (this.c != null) {
            Bundle bundle = this.c.getBundle(str);
            this.c.remove(str);
            if (this.c.isEmpty()) {
                this.c = null;
            }
            return bundle;
        }
        return null;
    }

    public void a(String str, b bVar) {
        if (this.b.a(str, bVar) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    public void a(Class<? extends InterfaceC0039a> cls) {
        if (!this.a) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.e == null) {
            this.e = new Recreator.a(this);
        }
        try {
            cls.getDeclaredConstructor(new Class[0]);
            this.e.a(cls.getName());
        } catch (NoSuchMethodException e) {
            throw new IllegalArgumentException("Class" + cls.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(f fVar, Bundle bundle) {
        if (this.d) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        if (bundle != null) {
            this.c = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
        }
        fVar.a(new e() { // from class: androidx.savedstate.SavedStateRegistry$1
            @Override // androidx.lifecycle.h
            public void a(j jVar, f.a aVar) {
                if (aVar == f.a.ON_START) {
                    a.this.a = true;
                } else if (aVar == f.a.ON_STOP) {
                    a.this.a = false;
                }
            }
        });
        this.d = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (this.c != null) {
            bundle2.putAll(this.c);
        }
        androidx.a.a.b.b<String, b>.d c = this.b.c();
        while (c.hasNext()) {
            Map.Entry next = c.next();
            bundle2.putBundle((String) next.getKey(), ((b) next.getValue()).a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
