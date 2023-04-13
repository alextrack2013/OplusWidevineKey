package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.R;
import androidx.appcompat.app.a;
import androidx.appcompat.view.b;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ae;
import androidx.appcompat.widget.aq;
import androidx.core.g.aa;
import androidx.core.g.t;
import androidx.core.g.x;
import androidx.core.g.y;
import androidx.core.g.z;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* compiled from: WindowDecorActionBar.java */
/* loaded from: classes.dex */
public class m extends androidx.appcompat.app.a implements ActionBarOverlayLayout.a {
    private static final Interpolator s = new AccelerateInterpolator();
    private static final Interpolator t = new DecelerateInterpolator();
    private boolean B;
    private boolean D;
    private boolean F;
    Context a;
    ActionBarOverlayLayout b;
    ActionBarContainer c;
    ae d;
    ActionBarContextView e;
    View f;
    aq g;
    a h;
    androidx.appcompat.view.b i;
    b.a j;
    boolean l;
    boolean m;
    androidx.appcompat.view.h n;
    boolean o;
    private Context u;
    private Activity v;
    private boolean y;
    private boolean z;
    private ArrayList<Object> w = new ArrayList<>();
    private int x = -1;
    private ArrayList<a.b> A = new ArrayList<>();
    private int C = 0;
    boolean k = true;
    private boolean E = true;
    final y p = new z() { // from class: androidx.appcompat.app.m.1
        @Override // androidx.core.g.z, androidx.core.g.y
        public void b(View view) {
            if (m.this.k && m.this.f != null) {
                m.this.f.setTranslationY(0.0f);
                m.this.c.setTranslationY(0.0f);
            }
            m.this.c.setVisibility(8);
            m.this.c.setTransitioning(false);
            m.this.n = null;
            m.this.h();
            if (m.this.b != null) {
                t.h(m.this.b);
            }
        }
    };
    final y q = new z() { // from class: androidx.appcompat.app.m.2
        @Override // androidx.core.g.z, androidx.core.g.y
        public void b(View view) {
            m.this.n = null;
            m.this.c.requestLayout();
        }
    };
    final aa r = new aa() { // from class: androidx.appcompat.app.m.3
        @Override // androidx.core.g.aa
        public void a(View view) {
            ((View) m.this.c.getParent()).invalidate();
        }
    };

    static boolean a(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return (z || z2) ? false : true;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.a
    public void m() {
    }

    public m(Activity activity, boolean z) {
        this.v = activity;
        View decorView = activity.getWindow().getDecorView();
        a(decorView);
        if (z) {
            return;
        }
        this.f = decorView.findViewById(16908290);
    }

    public m(Dialog dialog) {
        a(dialog.getWindow().getDecorView());
    }

    private void a(View view) {
        this.b = (ActionBarOverlayLayout) view.findViewById(R.id.decor_content_parent);
        if (this.b != null) {
            this.b.setActionBarVisibilityCallback(this);
        }
        this.d = b(view.findViewById(R.id.action_bar));
        this.e = (ActionBarContextView) view.findViewById(R.id.action_context_bar);
        this.c = (ActionBarContainer) view.findViewById(R.id.action_bar_container);
        if (this.d == null || this.e == null || this.c == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.a = this.d.b();
        boolean z = (this.d.o() & 4) != 0;
        if (z) {
            this.y = true;
        }
        androidx.appcompat.view.a a2 = androidx.appcompat.view.a.a(this.a);
        a(a2.f() || z);
        k(a2.d());
        TypedArray obtainStyledAttributes = this.a.obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(R.styleable.ActionBar_hideOnContentScroll, false)) {
            b(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            a(dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    private ae b(View view) {
        if (view instanceof ae) {
            return (ae) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != null ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb.toString());
    }

    @Override // androidx.appcompat.app.a
    public void a(float f) {
        t.a(this.c, f);
    }

    @Override // androidx.appcompat.app.a
    public void a(Configuration configuration) {
        k(androidx.appcompat.view.a.a(this.a).d());
    }

    private void k(boolean z) {
        this.B = z;
        if (!this.B) {
            this.d.a((aq) null);
            this.c.setTabContainer(this.g);
        } else {
            this.c.setTabContainer(null);
            this.d.a(this.g);
        }
        boolean z2 = true;
        boolean z3 = i() == 2;
        if (this.g != null) {
            if (z3) {
                this.g.setVisibility(0);
                if (this.b != null) {
                    t.h(this.b);
                }
            } else {
                this.g.setVisibility(8);
            }
        }
        this.d.a(!this.B && z3);
        ActionBarOverlayLayout actionBarOverlayLayout = this.b;
        if (this.B || !z3) {
            z2 = false;
        }
        actionBarOverlayLayout.setHasNonEmbeddedTabs(z2);
    }

    void h() {
        if (this.j != null) {
            this.j.a(this.i);
            this.i = null;
            this.j = null;
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.a
    public void a(int i) {
        this.C = i;
    }

    @Override // androidx.appcompat.app.a
    public void d(boolean z) {
        this.F = z;
        if (z || this.n == null) {
            return;
        }
        this.n.c();
    }

    @Override // androidx.appcompat.app.a
    public void e(boolean z) {
        if (z == this.z) {
            return;
        }
        this.z = z;
        int size = this.A.size();
        for (int i = 0; i < size; i++) {
            this.A.get(i).a(z);
        }
    }

    public void f(boolean z) {
        a(z ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.a
    public void a(boolean z) {
        this.d.b(z);
    }

    @Override // androidx.appcompat.app.a
    public void a(CharSequence charSequence) {
        this.d.a(charSequence);
    }

    public void a(int i, int i2) {
        int o = this.d.o();
        if ((i2 & 4) != 0) {
            this.y = true;
        }
        this.d.c((i & i2) | ((~i2) & o));
    }

    public int i() {
        return this.d.p();
    }

    @Override // androidx.appcompat.app.a
    public int a() {
        return this.d.o();
    }

    @Override // androidx.appcompat.app.a
    public androidx.appcompat.view.b a(b.a aVar) {
        if (this.h != null) {
            this.h.c();
        }
        this.b.setHideOnContentScrollEnabled(false);
        this.e.c();
        a aVar2 = new a(this.e.getContext(), aVar);
        if (aVar2.e()) {
            this.h = aVar2;
            aVar2.d();
            this.e.a(aVar2);
            j(true);
            this.e.sendAccessibilityEvent(32);
            return aVar2;
        }
        return null;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.a
    public void g(boolean z) {
        this.k = z;
    }

    private void n() {
        if (this.D) {
            return;
        }
        this.D = true;
        if (this.b != null) {
            this.b.setShowingForActionMode(true);
        }
        l(false);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.a
    public void j() {
        if (this.m) {
            this.m = false;
            l(true);
        }
    }

    private void o() {
        if (this.D) {
            this.D = false;
            if (this.b != null) {
                this.b.setShowingForActionMode(false);
            }
            l(false);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.a
    public void k() {
        if (this.m) {
            return;
        }
        this.m = true;
        l(true);
    }

    @Override // androidx.appcompat.app.a
    public void b(boolean z) {
        if (z && !this.b.a()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.o = z;
        this.b.setHideOnContentScrollEnabled(z);
    }

    private void l(boolean z) {
        if (a(this.l, this.m, this.D)) {
            if (this.E) {
                return;
            }
            this.E = true;
            h(z);
        } else if (this.E) {
            this.E = false;
            i(z);
        }
    }

    public void h(boolean z) {
        int[] iArr;
        if (this.n != null) {
            this.n.c();
        }
        this.c.setVisibility(0);
        if (this.C == 0 && (this.F || z)) {
            this.c.setTranslationY(0.0f);
            float f = -this.c.getHeight();
            if (z) {
                this.c.getLocationInWindow(new int[]{0, 0});
                f -= iArr[1];
            }
            this.c.setTranslationY(f);
            androidx.appcompat.view.h hVar = new androidx.appcompat.view.h();
            x b = t.e(this.c).b(0.0f);
            b.a(this.r);
            hVar.a(b);
            if (this.k && this.f != null) {
                this.f.setTranslationY(f);
                hVar.a(t.e(this.f).b(0.0f));
            }
            hVar.a(t);
            hVar.a(250L);
            hVar.a(this.q);
            this.n = hVar;
            hVar.a();
        } else {
            this.c.setAlpha(1.0f);
            this.c.setTranslationY(0.0f);
            if (this.k && this.f != null) {
                this.f.setTranslationY(0.0f);
            }
            this.q.b(null);
        }
        if (this.b != null) {
            t.h(this.b);
        }
    }

    public void i(boolean z) {
        int[] iArr;
        if (this.n != null) {
            this.n.c();
        }
        if (this.C == 0 && (this.F || z)) {
            this.c.setAlpha(1.0f);
            this.c.setTransitioning(true);
            androidx.appcompat.view.h hVar = new androidx.appcompat.view.h();
            float f = -this.c.getHeight();
            if (z) {
                this.c.getLocationInWindow(new int[]{0, 0});
                f -= iArr[1];
            }
            x b = t.e(this.c).b(f);
            b.a(this.r);
            hVar.a(b);
            if (this.k && this.f != null) {
                hVar.a(t.e(this.f).b(f));
            }
            hVar.a(s);
            hVar.a(250L);
            hVar.a(this.p);
            this.n = hVar;
            hVar.a();
            return;
        }
        this.p.b(null);
    }

    public void j(boolean z) {
        x a2;
        x a3;
        if (z) {
            n();
        } else {
            o();
        }
        if (!p()) {
            if (z) {
                this.d.d(4);
                this.e.setVisibility(0);
                return;
            }
            this.d.d(0);
            this.e.setVisibility(8);
            return;
        }
        if (z) {
            x a4 = this.d.a(4, 100L);
            a2 = this.e.a(0, 200L);
            a3 = a4;
        } else {
            a2 = this.d.a(0, 200L);
            a3 = this.e.a(8, 100L);
        }
        androidx.appcompat.view.h hVar = new androidx.appcompat.view.h();
        hVar.a(a3, a2);
        hVar.a();
    }

    private boolean p() {
        return t.m(this.c);
    }

    @Override // androidx.appcompat.app.a
    public Context b() {
        if (this.u == null) {
            TypedValue typedValue = new TypedValue();
            this.a.getTheme().resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.u = new ContextThemeWrapper(this.a, i);
            } else {
                this.u = this.a;
            }
        }
        return this.u;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.a
    public void l() {
        if (this.n != null) {
            this.n.c();
            this.n = null;
        }
    }

    @Override // androidx.appcompat.app.a
    public boolean f() {
        if (this.d == null || !this.d.c()) {
            return false;
        }
        this.d.d();
        return true;
    }

    /* compiled from: WindowDecorActionBar.java */
    /* loaded from: classes.dex */
    public class a extends androidx.appcompat.view.b implements g.a {
        private final Context b;
        private final androidx.appcompat.view.menu.g c;
        private b.a d;
        private WeakReference<View> e;

        public a(Context context, b.a aVar) {
            this.b = context;
            this.d = aVar;
            this.c = new androidx.appcompat.view.menu.g(context).a(1);
            this.c.a(this);
        }

        @Override // androidx.appcompat.view.b
        public MenuInflater a() {
            return new androidx.appcompat.view.g(this.b);
        }

        @Override // androidx.appcompat.view.b
        public Menu b() {
            return this.c;
        }

        @Override // androidx.appcompat.view.b
        public void c() {
            if (m.this.h != this) {
                return;
            }
            if (!m.a(m.this.l, m.this.m, false)) {
                m.this.i = this;
                m.this.j = this.d;
            } else {
                this.d.a(this);
            }
            this.d = null;
            m.this.j(false);
            m.this.e.b();
            m.this.d.a().sendAccessibilityEvent(32);
            m.this.b.setHideOnContentScrollEnabled(m.this.o);
            m.this.h = null;
        }

        @Override // androidx.appcompat.view.b
        public void d() {
            if (m.this.h != this) {
                return;
            }
            this.c.h();
            try {
                this.d.b(this, this.c);
            } finally {
                this.c.i();
            }
        }

        public boolean e() {
            this.c.h();
            try {
                return this.d.a(this, this.c);
            } finally {
                this.c.i();
            }
        }

        @Override // androidx.appcompat.view.b
        public void a(View view) {
            m.this.e.setCustomView(view);
            this.e = new WeakReference<>(view);
        }

        @Override // androidx.appcompat.view.b
        public void a(CharSequence charSequence) {
            m.this.e.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.view.b
        public void b(CharSequence charSequence) {
            m.this.e.setTitle(charSequence);
        }

        @Override // androidx.appcompat.view.b
        public void a(int i) {
            b(m.this.a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.b
        public void b(int i) {
            a((CharSequence) m.this.a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.b
        public CharSequence f() {
            return m.this.e.getTitle();
        }

        @Override // androidx.appcompat.view.b
        public CharSequence g() {
            return m.this.e.getSubtitle();
        }

        @Override // androidx.appcompat.view.b
        public void a(boolean z) {
            super.a(z);
            m.this.e.setTitleOptional(z);
        }

        @Override // androidx.appcompat.view.b
        public boolean h() {
            return m.this.e.d();
        }

        @Override // androidx.appcompat.view.b
        public View i() {
            if (this.e != null) {
                return this.e.get();
            }
            return null;
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
            if (this.d != null) {
                return this.d.a(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void a(androidx.appcompat.view.menu.g gVar) {
            if (this.d == null) {
                return;
            }
            d();
            m.this.e.a();
        }
    }

    @Override // androidx.appcompat.app.a
    public void c(boolean z) {
        if (this.y) {
            return;
        }
        f(z);
    }

    @Override // androidx.appcompat.app.a
    public boolean a(int i, KeyEvent keyEvent) {
        Menu b;
        if (this.h == null || (b = this.h.b()) == null) {
            return false;
        }
        b.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return b.performShortcut(i, keyEvent, 0);
    }
}
