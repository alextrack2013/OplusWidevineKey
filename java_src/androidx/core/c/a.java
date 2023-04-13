package androidx.core.c;

import android.os.Build;
import android.os.CancellationSignal;
/* compiled from: CancellationSignal.java */
/* loaded from: classes.dex */
public final class a {
    private boolean a;
    private InterfaceC0026a b;
    private Object c;
    private boolean d;

    /* compiled from: CancellationSignal.java */
    /* renamed from: androidx.core.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0026a {
        void a();
    }

    public boolean a() {
        boolean z;
        synchronized (this) {
            z = this.a;
        }
        return z;
    }

    public void b() {
        synchronized (this) {
            if (this.a) {
                return;
            }
            this.a = true;
            this.d = true;
            InterfaceC0026a interfaceC0026a = this.b;
            Object obj = this.c;
            if (interfaceC0026a != null) {
                try {
                    interfaceC0026a.a();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.d = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            if (obj != null && Build.VERSION.SDK_INT >= 16) {
                ((CancellationSignal) obj).cancel();
            }
            synchronized (this) {
                this.d = false;
                notifyAll();
            }
        }
    }

    public void a(InterfaceC0026a interfaceC0026a) {
        synchronized (this) {
            c();
            if (this.b == interfaceC0026a) {
                return;
            }
            this.b = interfaceC0026a;
            if (this.a && interfaceC0026a != null) {
                interfaceC0026a.a();
            }
        }
    }

    private void c() {
        while (this.d) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }
}
