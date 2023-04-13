package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Lifecycle.java */
/* loaded from: classes.dex */
public abstract class f {
    AtomicReference<Object> a = new AtomicReference<>();

    /* compiled from: Lifecycle.java */
    /* loaded from: classes.dex */
    public enum a {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY
    }

    public abstract b a();

    public abstract void a(i iVar);

    public abstract void b(i iVar);

    /* compiled from: Lifecycle.java */
    /* loaded from: classes.dex */
    public enum b {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        public boolean a(b bVar) {
            return compareTo(bVar) >= 0;
        }
    }
}
