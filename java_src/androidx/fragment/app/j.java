package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
/* compiled from: FragmentHostCallback.java */
/* loaded from: classes.dex */
public abstract class j<E> extends f {
    private final Activity a;
    final m b;
    private final Context c;
    private final Handler d;
    private final int e;

    @Override // androidx.fragment.app.f
    public View a(int i) {
        return null;
    }

    @Override // androidx.fragment.app.f
    public boolean a() {
        return true;
    }

    public boolean a(c cVar) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(c cVar) {
    }

    public void g() {
    }

    public abstract E h();

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(d dVar) {
        this(dVar, dVar, new Handler(), 0);
    }

    j(Activity activity, Context context, Handler handler, int i) {
        this.b = new n();
        this.a = activity;
        this.c = (Context) androidx.core.f.d.a(context, "context == null");
        this.d = (Handler) androidx.core.f.d.a(handler, "handler == null");
        this.e = i;
    }

    public LayoutInflater e() {
        return LayoutInflater.from(this.c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Activity i() {
        return this.a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Context j() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Handler k() {
        return this.d;
    }
}
