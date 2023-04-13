package androidx.core.g;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
/* compiled from: ActionProvider.java */
/* loaded from: classes.dex */
public abstract class b {
    private final Context a;
    private a b;
    private InterfaceC0032b c;

    /* compiled from: ActionProvider.java */
    /* loaded from: classes.dex */
    public interface a {
        void d(boolean z);
    }

    /* compiled from: ActionProvider.java */
    /* renamed from: androidx.core.g.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0032b {
        void a(boolean z);
    }

    public abstract View a();

    public void a(SubMenu subMenu) {
    }

    public boolean b() {
        return false;
    }

    public boolean c() {
        return false;
    }

    public boolean d() {
        return false;
    }

    public boolean e() {
        return true;
    }

    public b(Context context) {
        this.a = context;
    }

    public View a(MenuItem menuItem) {
        return a();
    }

    public void a(boolean z) {
        if (this.b != null) {
            this.b.d(z);
        }
    }

    public void a(a aVar) {
        this.b = aVar;
    }

    public void a(InterfaceC0032b interfaceC0032b) {
        if (this.c != null && interfaceC0032b != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.c = interfaceC0032b;
    }

    public void f() {
        this.c = null;
        this.b = null;
    }
}
