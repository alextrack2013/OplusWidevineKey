package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
/* compiled from: FragmentController.java */
/* loaded from: classes.dex */
public class h {
    private final j<?> a;

    public static h a(j<?> jVar) {
        return new h((j) androidx.core.f.d.a(jVar, "callbacks == null"));
    }

    private h(j<?> jVar) {
        this.a = jVar;
    }

    public m a() {
        return this.a.b;
    }

    public c a(String str) {
        return this.a.b.b(str);
    }

    public void a(c cVar) {
        this.a.b.a(this.a, this.a, cVar);
    }

    public View a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.a.b.z().onCreateView(view, str, context, attributeSet);
    }

    public void b() {
        this.a.b.k();
    }

    public Parcelable c() {
        return this.a.b.i();
    }

    public void a(Parcelable parcelable) {
        if (!(this.a instanceof androidx.lifecycle.x)) {
            throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
        }
        this.a.b.a(parcelable);
    }

    public void d() {
        this.a.b.l();
    }

    public void e() {
        this.a.b.m();
    }

    public void f() {
        this.a.b.n();
    }

    public void g() {
        this.a.b.o();
    }

    public void h() {
        this.a.b.p();
    }

    public void i() {
        this.a.b.q();
    }

    public void j() {
        this.a.b.s();
    }

    public void a(boolean z) {
        this.a.b.b(z);
    }

    public void b(boolean z) {
        this.a.b.c(z);
    }

    public void a(Configuration configuration) {
        this.a.b.a(configuration);
    }

    public void k() {
        this.a.b.t();
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        return this.a.b.a(menu, menuInflater);
    }

    public boolean a(Menu menu) {
        return this.a.b.a(menu);
    }

    public boolean a(MenuItem menuItem) {
        return this.a.b.a(menuItem);
    }

    public boolean b(MenuItem menuItem) {
        return this.a.b.b(menuItem);
    }

    public void b(Menu menu) {
        this.a.b.b(menu);
    }

    public boolean l() {
        return this.a.b.a(true);
    }
}
