package androidx.loader.a;

import android.os.Bundle;
import android.util.Log;
import androidx.b.h;
import androidx.lifecycle.j;
import androidx.lifecycle.o;
import androidx.lifecycle.p;
import androidx.lifecycle.u;
import androidx.lifecycle.v;
import androidx.lifecycle.w;
import androidx.loader.a.a;
import androidx.loader.b.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LoaderManagerImpl.java */
/* loaded from: classes.dex */
public class b extends androidx.loader.a.a {
    static boolean a = false;
    private final j b;
    private final c c;

    /* compiled from: LoaderManagerImpl.java */
    /* loaded from: classes.dex */
    public static class a<D> extends o<D> implements a.InterfaceC0038a<D> {
        private final int e;
        private final Bundle f;
        private final androidx.loader.b.a<D> g;
        private j h;
        private C0037b<D> i;
        private androidx.loader.b.a<D> j;

        androidx.loader.b.a<D> e() {
            return this.g;
        }

        @Override // androidx.lifecycle.LiveData
        protected void b() {
            if (b.a) {
                Log.v("LoaderManager", "  Starting: " + this);
            }
            this.g.a();
        }

        @Override // androidx.lifecycle.LiveData
        protected void c() {
            if (b.a) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.g.e();
        }

        void f() {
            j jVar = this.h;
            C0037b<D> c0037b = this.i;
            if (jVar == null || c0037b == null) {
                return;
            }
            super.a((p) c0037b);
            a(jVar, c0037b);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public void a(p<? super D> pVar) {
            super.a((p) pVar);
            this.h = null;
            this.i = null;
        }

        androidx.loader.b.a<D> a(boolean z) {
            if (b.a) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.g.c();
            this.g.g();
            C0037b<D> c0037b = this.i;
            if (c0037b != null) {
                a((p) c0037b);
                if (z) {
                    c0037b.b();
                }
            }
            this.g.a((a.InterfaceC0038a) this);
            if ((c0037b != null && !c0037b.a()) || z) {
                this.g.i();
                return this.j;
            }
            return this.g;
        }

        @Override // androidx.lifecycle.o, androidx.lifecycle.LiveData
        public void a(D d) {
            super.a((a<D>) d);
            if (this.j != null) {
                this.j.i();
                this.j = null;
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.e);
            sb.append(" : ");
            androidx.core.f.a.a(this.g, sb);
            sb.append("}}");
            return sb.toString();
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.e);
            printWriter.print(" mArgs=");
            printWriter.println(this.f);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.g);
            androidx.loader.b.a<D> aVar = this.g;
            aVar.a(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.i != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.i);
                C0037b<D> c0037b = this.i;
                c0037b.a(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(e().a((androidx.loader.b.a<D>) a()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(d());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoaderManagerImpl.java */
    /* renamed from: androidx.loader.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0037b<D> implements p<D> {
        private final androidx.loader.b.a<D> a;
        private final a.InterfaceC0036a<D> b;
        private boolean c;

        @Override // androidx.lifecycle.p
        public void a(D d) {
            if (b.a) {
                Log.v("LoaderManager", "  onLoadFinished in " + this.a + ": " + this.a.a((androidx.loader.b.a<D>) d));
            }
            this.b.a(this.a, d);
            this.c = true;
        }

        boolean a() {
            return this.c;
        }

        void b() {
            if (this.c) {
                if (b.a) {
                    Log.v("LoaderManager", "  Resetting: " + this.a);
                }
                this.b.a(this.a);
            }
        }

        public String toString() {
            return this.b.toString();
        }

        public void a(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.c);
        }
    }

    /* compiled from: LoaderManagerImpl.java */
    /* loaded from: classes.dex */
    static class c extends u {
        private static final v.a a = new v.a() { // from class: androidx.loader.a.b.c.1
            @Override // androidx.lifecycle.v.a
            public <T extends u> T a(Class<T> cls) {
                return new c();
            }
        };
        private h<a> b = new h<>();
        private boolean c = false;

        c() {
        }

        static c a(w wVar) {
            return (c) new v(wVar, a).a(c.class);
        }

        void b() {
            int b = this.b.b();
            for (int i = 0; i < b; i++) {
                this.b.d(i).f();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.lifecycle.u
        public void a() {
            super.a();
            int b = this.b.b();
            for (int i = 0; i < b; i++) {
                this.b.d(i).a(true);
            }
            this.b.c();
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.b.b() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i = 0; i < this.b.b(); i++) {
                    a d = this.b.d(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.b.c(i));
                    printWriter.print(": ");
                    printWriter.println(d.toString());
                    d.a(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(j jVar, w wVar) {
        this.b = jVar;
        this.c = c.a(wVar);
    }

    @Override // androidx.loader.a.a
    public void a() {
        this.c.b();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        androidx.core.f.a.a(this.b, sb);
        sb.append("}}");
        return sb.toString();
    }

    @Override // androidx.loader.a.a
    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.c.a(str, fileDescriptor, printWriter, strArr);
    }
}
