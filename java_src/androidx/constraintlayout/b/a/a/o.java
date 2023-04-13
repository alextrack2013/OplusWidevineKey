package androidx.constraintlayout.b.a.a;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: WidgetGroup.java */
/* loaded from: classes.dex */
public class o {
    static int b;
    int c;
    int e;
    ArrayList<androidx.constraintlayout.b.a.e> a = new ArrayList<>();
    boolean d = false;
    ArrayList<a> f = null;
    private int g = -1;

    public o(int i) {
        this.c = -1;
        this.e = 0;
        int i2 = b;
        b = i2 + 1;
        this.c = i2;
        this.e = i;
    }

    public int a() {
        return this.e;
    }

    public int b() {
        return this.c;
    }

    public boolean a(androidx.constraintlayout.b.a.e eVar) {
        if (this.a.contains(eVar)) {
            return false;
        }
        this.a.add(eVar);
        return true;
    }

    public void a(boolean z) {
        this.d = z;
    }

    private String c() {
        return this.e == 0 ? "Horizontal" : this.e == 1 ? "Vertical" : this.e == 2 ? "Both" : "Unknown";
    }

    public String toString() {
        Iterator<androidx.constraintlayout.b.a.e> it;
        String str = c() + " [" + this.c + "] <";
        while (this.a.iterator().hasNext()) {
            str = str + " " + it.next().x();
        }
        return str + " >";
    }

    public void a(int i, o oVar) {
        Iterator<androidx.constraintlayout.b.a.e> it = this.a.iterator();
        while (it.hasNext()) {
            androidx.constraintlayout.b.a.e next = it.next();
            oVar.a(next);
            if (i == 0) {
                next.ak = oVar.b();
            } else {
                next.al = oVar.b();
            }
        }
        this.g = oVar.c;
    }

    public int a(androidx.constraintlayout.b.d dVar, int i) {
        if (this.a.size() == 0) {
            return 0;
        }
        return a(dVar, this.a, i);
    }

    private int a(androidx.constraintlayout.b.d dVar, ArrayList<androidx.constraintlayout.b.a.e> arrayList, int i) {
        androidx.constraintlayout.b.a.f fVar = (androidx.constraintlayout.b.a.f) arrayList.get(0).v();
        dVar.b();
        fVar.a(dVar, false);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList.get(i2).a(dVar, false);
        }
        if (i == 0 && fVar.au > 0) {
            androidx.constraintlayout.b.a.b.a(fVar, dVar, arrayList, 0);
        }
        if (i == 1 && fVar.av > 0) {
            androidx.constraintlayout.b.a.b.a(fVar, dVar, arrayList, 1);
        }
        try {
            dVar.f();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f = new ArrayList<>();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            this.f.add(new a(arrayList.get(i3), dVar, i));
        }
        if (i == 0) {
            int b2 = dVar.b(fVar.w);
            int b3 = dVar.b(fVar.y);
            dVar.b();
            return b3 - b2;
        }
        int b4 = dVar.b(fVar.x);
        int b5 = dVar.b(fVar.z);
        dVar.b();
        return b5 - b4;
    }

    public void a(int i) {
        this.e = i;
    }

    public void a(ArrayList<o> arrayList) {
        int size = this.a.size();
        if (this.g != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                o oVar = arrayList.get(i);
                if (this.g == oVar.c) {
                    a(this.e, oVar);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WidgetGroup.java */
    /* loaded from: classes.dex */
    public class a {
        WeakReference<androidx.constraintlayout.b.a.e> a;
        int b;
        int c;
        int d;
        int e;
        int f;
        int g;

        public a(androidx.constraintlayout.b.a.e eVar, androidx.constraintlayout.b.d dVar, int i) {
            this.a = new WeakReference<>(eVar);
            this.b = dVar.b(eVar.w);
            this.c = dVar.b(eVar.x);
            this.d = dVar.b(eVar.y);
            this.e = dVar.b(eVar.z);
            this.f = dVar.b(eVar.A);
            this.g = i;
        }
    }
}
