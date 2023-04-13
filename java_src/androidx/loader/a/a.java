package androidx.loader.a;

import androidx.lifecycle.j;
import androidx.lifecycle.x;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* compiled from: LoaderManager.java */
/* loaded from: classes.dex */
public abstract class a {

    /* compiled from: LoaderManager.java */
    /* renamed from: androidx.loader.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0036a<D> {
        void a(androidx.loader.b.a<D> aVar);

        void a(androidx.loader.b.a<D> aVar, D d);
    }

    public abstract void a();

    @Deprecated
    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public static <T extends j & x> a a(T t) {
        return new b(t, t.c());
    }
}
