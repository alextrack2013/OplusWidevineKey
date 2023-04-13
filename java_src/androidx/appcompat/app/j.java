package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.Window;
import androidx.appcompat.app.a;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.ae;
import androidx.core.g.t;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ToolbarActionBar.java */
/* loaded from: classes.dex */
public class j extends androidx.appcompat.app.a {
    ae a;
    Window.Callback b;
    private boolean c;
    private boolean d;
    private ArrayList<a.b> e;
    private final Runnable f;

    @Override // androidx.appcompat.app.a
    public void a(boolean z) {
    }

    @Override // androidx.appcompat.app.a
    public void c(boolean z) {
    }

    @Override // androidx.appcompat.app.a
    public void d(boolean z) {
    }

    @Override // androidx.appcompat.app.a
    public void a(float f) {
        t.a(this.a.a(), f);
    }

    @Override // androidx.appcompat.app.a
    public Context b() {
        return this.a.b();
    }

    @Override // androidx.appcompat.app.a
    public void a(Configuration configuration) {
        super.a(configuration);
    }

    @Override // androidx.appcompat.app.a
    public void a(CharSequence charSequence) {
        this.a.a(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public int a() {
        return this.a.o();
    }

    @Override // androidx.appcompat.app.a
    public boolean c() {
        return this.a.k();
    }

    @Override // androidx.appcompat.app.a
    public boolean d() {
        return this.a.l();
    }

    @Override // androidx.appcompat.app.a
    public boolean e() {
        this.a.a().removeCallbacks(this.f);
        t.a(this.a.a(), this.f);
        return true;
    }

    @Override // androidx.appcompat.app.a
    public boolean f() {
        if (this.a.c()) {
            this.a.d();
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.a
    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            c();
        }
        return true;
    }

    @Override // androidx.appcompat.app.a
    public boolean a(int i, KeyEvent keyEvent) {
        Menu h = h();
        if (h != null) {
            h.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
            return h.performShortcut(i, keyEvent, 0);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.app.a
    public void g() {
        this.a.a().removeCallbacks(this.f);
    }

    @Override // androidx.appcompat.app.a
    public void e(boolean z) {
        if (z == this.d) {
            return;
        }
        this.d = z;
        int size = this.e.size();
        for (int i = 0; i < size; i++) {
            this.e.get(i).a(z);
        }
    }

    private Menu h() {
        if (!this.c) {
            this.a.a(new a(), new b());
            this.c = true;
        }
        return this.a.q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ToolbarActionBar.java */
    /* loaded from: classes.dex */
    public final class a implements m.a {
        private boolean b;

        a() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean a(androidx.appcompat.view.menu.g gVar) {
            if (j.this.b != null) {
                j.this.b.onMenuOpened(108, gVar);
                return true;
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void a(androidx.appcompat.view.menu.g gVar, boolean z) {
            if (this.b) {
                return;
            }
            this.b = true;
            j.this.a.n();
            if (j.this.b != null) {
                j.this.b.onPanelClosed(108, gVar);
            }
            this.b = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ToolbarActionBar.java */
    /* loaded from: classes.dex */
    public final class b implements g.a {
        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
            return false;
        }

        b() {
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void a(androidx.appcompat.view.menu.g gVar) {
            if (j.this.b != null) {
                if (j.this.a.i()) {
                    j.this.b.onPanelClosed(108, gVar);
                } else if (j.this.b.onPreparePanel(0, null, gVar)) {
                    j.this.b.onMenuOpened(108, gVar);
                }
            }
        }
    }
}
