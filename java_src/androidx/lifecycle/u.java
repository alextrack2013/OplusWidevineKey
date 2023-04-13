package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* compiled from: ViewModel.java */
/* loaded from: classes.dex */
public abstract class u {
    private final Map<String, Object> a = new HashMap();
    private volatile boolean b = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        this.b = true;
        if (this.a != null) {
            synchronized (this.a) {
                for (Object obj : this.a.values()) {
                    a(obj);
                }
            }
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> T b(String str) {
        T t;
        if (this.a == null) {
            return null;
        }
        synchronized (this.a) {
            t = (T) this.a.get(str);
        }
        return t;
    }

    private static void a(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
