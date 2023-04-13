package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.g.x;
import androidx.core.g.y;
import androidx.core.g.z;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: ViewPropertyAnimatorCompatSet.java */
/* loaded from: classes.dex */
public class h {
    y b;
    private Interpolator d;
    private boolean e;
    private long c = -1;
    private final z f = new z() { // from class: androidx.appcompat.view.h.1
        private boolean b = false;
        private int c = 0;

        @Override // androidx.core.g.z, androidx.core.g.y
        public void a(View view) {
            if (this.b) {
                return;
            }
            this.b = true;
            if (h.this.b != null) {
                h.this.b.a(null);
            }
        }

        void a() {
            this.c = 0;
            this.b = false;
            h.this.b();
        }

        @Override // androidx.core.g.z, androidx.core.g.y
        public void b(View view) {
            int i = this.c + 1;
            this.c = i;
            if (i == h.this.a.size()) {
                if (h.this.b != null) {
                    h.this.b.b(null);
                }
                a();
            }
        }
    };
    final ArrayList<x> a = new ArrayList<>();

    public h a(x xVar) {
        if (!this.e) {
            this.a.add(xVar);
        }
        return this;
    }

    public h a(x xVar, x xVar2) {
        this.a.add(xVar);
        xVar2.b(xVar.a());
        this.a.add(xVar2);
        return this;
    }

    public void a() {
        if (this.e) {
            return;
        }
        Iterator<x> it = this.a.iterator();
        while (it.hasNext()) {
            x next = it.next();
            if (this.c >= 0) {
                next.a(this.c);
            }
            if (this.d != null) {
                next.a(this.d);
            }
            if (this.b != null) {
                next.a(this.f);
            }
            next.c();
        }
        this.e = true;
    }

    void b() {
        this.e = false;
    }

    public void c() {
        if (this.e) {
            Iterator<x> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
            this.e = false;
        }
    }

    public h a(long j) {
        if (!this.e) {
            this.c = j;
        }
        return this;
    }

    public h a(Interpolator interpolator) {
        if (!this.e) {
            this.d = interpolator;
        }
        return this;
    }

    public h a(y yVar) {
        if (!this.e) {
            this.b = yVar;
        }
        return this;
    }
}
