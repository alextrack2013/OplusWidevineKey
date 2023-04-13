package androidx.fragment.app;

import android.view.ViewGroup;
import androidx.lifecycle.f;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* compiled from: FragmentTransaction.java */
/* loaded from: classes.dex */
public abstract class t {
    private final i a;
    private final ClassLoader b;
    int e;
    int f;
    int g;
    int h;
    int i;
    boolean j;
    String l;
    int m;
    CharSequence n;
    int o;
    CharSequence p;
    ArrayList<String> q;
    ArrayList<String> r;
    ArrayList<Runnable> t;
    ArrayList<a> d = new ArrayList<>();
    boolean k = true;
    boolean s = false;

    public abstract void b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentTransaction.java */
    /* loaded from: classes.dex */
    public static final class a {
        int a;
        c b;
        int c;
        int d;
        int e;
        int f;
        f.b g;
        f.b h;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i, c cVar) {
            this.a = i;
            this.b = cVar;
            this.g = f.b.RESUMED;
            this.h = f.b.RESUMED;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(i iVar, ClassLoader classLoader) {
        this.a = iVar;
        this.b = classLoader;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        this.d.add(aVar);
        aVar.c = this.e;
        aVar.d = this.f;
        aVar.e = this.g;
        aVar.f = this.h;
    }

    public t a(int i, c cVar, String str) {
        a(i, cVar, str, 1);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t a(ViewGroup viewGroup, c cVar, String str) {
        cVar.E = viewGroup;
        return a(viewGroup.getId(), cVar, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, c cVar, String str, int i2) {
        Class<?> cls = cVar.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            if (cVar.x != null && !str.equals(cVar.x)) {
                throw new IllegalStateException("Can't change tag of fragment " + cVar + ": was " + cVar.x + " now " + str);
            }
            cVar.x = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + cVar + " with tag " + str + " to container view with no id");
            } else if (cVar.v != 0 && cVar.v != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + cVar + ": was " + cVar.v + " now " + i);
            } else {
                cVar.v = i;
                cVar.w = i;
            }
        }
        a(new a(i2, cVar));
    }

    public t f() {
        if (this.j) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.k = false;
        return this;
    }

    public t b(boolean z) {
        this.s = z;
        return this;
    }
}
