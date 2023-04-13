package androidx.lifecycle;
/* compiled from: ViewModelProvider.java */
/* loaded from: classes.dex */
public class v {
    private final a a;
    private final w b;

    /* compiled from: ViewModelProvider.java */
    /* loaded from: classes.dex */
    public interface a {
        <T extends u> T a(Class<T> cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ViewModelProvider.java */
    /* loaded from: classes.dex */
    public static class c {
        void a(u uVar) {
        }

        c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ViewModelProvider.java */
    /* loaded from: classes.dex */
    public static abstract class b extends c implements a {
        public abstract <T extends u> T a(String str, Class<T> cls);

        b() {
        }

        @Override // androidx.lifecycle.v.a
        public <T extends u> T a(Class<T> cls) {
            throw new UnsupportedOperationException("create(String, Class<?>) must be called on implementaions of KeyedFactory");
        }
    }

    public v(w wVar, a aVar) {
        this.a = aVar;
        this.b = wVar;
    }

    public <T extends u> T a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        return (T) a("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
    }

    public <T extends u> T a(String str, Class<T> cls) {
        T t;
        T t2 = (T) this.b.a(str);
        if (cls.isInstance(t2)) {
            if (this.a instanceof c) {
                ((c) this.a).a(t2);
            }
            return t2;
        }
        if (this.a instanceof b) {
            t = (T) ((b) this.a).a(str, cls);
        } else {
            t = (T) this.a.a(cls);
        }
        this.b.a(str, t);
        return t;
    }
}
