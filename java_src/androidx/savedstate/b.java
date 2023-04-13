package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.f;
/* compiled from: SavedStateRegistryController.java */
/* loaded from: classes.dex */
public final class b {
    private final c a;
    private final a b = new a();

    private b(c cVar) {
        this.a = cVar;
    }

    public a a() {
        return this.b;
    }

    public void a(Bundle bundle) {
        f b = this.a.b();
        if (b.a() != f.b.INITIALIZED) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        b.a(new Recreator(this.a));
        this.b.a(b, bundle);
    }

    public void b(Bundle bundle) {
        this.b.a(bundle);
    }

    public static b a(c cVar) {
        return new b(cVar);
    }
}
