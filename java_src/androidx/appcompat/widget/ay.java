package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.Toolbar;
/* compiled from: ToolbarWidgetWrapper.java */
/* loaded from: classes.dex */
public class ay implements ae {
    Toolbar a;
    CharSequence b;
    Window.Callback c;
    boolean d;
    private int e;
    private View f;
    private View g;
    private Drawable h;
    private Drawable i;
    private Drawable j;
    private boolean k;
    private CharSequence l;
    private CharSequence m;
    private c n;
    private int o;
    private int p;
    private Drawable q;

    @Override // androidx.appcompat.widget.ae
    public void b(boolean z) {
    }

    public ay(Toolbar toolbar, boolean z) {
        this(toolbar, z, R.string.abc_action_bar_up_description, R.drawable.abc_ic_ab_back_material);
    }

    public ay(Toolbar toolbar, boolean z, int i, int i2) {
        this.o = 0;
        this.p = 0;
        this.a = toolbar;
        this.b = toolbar.getTitle();
        this.l = toolbar.getSubtitle();
        this.k = this.b != null;
        this.j = toolbar.getNavigationIcon();
        ax a = ax.a(toolbar.getContext(), null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        this.q = a.a(R.styleable.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence c = a.c(R.styleable.ActionBar_title);
            if (!TextUtils.isEmpty(c)) {
                b(c);
            }
            CharSequence c2 = a.c(R.styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(c2)) {
                c(c2);
            }
            Drawable a2 = a.a(R.styleable.ActionBar_logo);
            if (a2 != null) {
                b(a2);
            }
            Drawable a3 = a.a(R.styleable.ActionBar_icon);
            if (a3 != null) {
                a(a3);
            }
            if (this.j == null && this.q != null) {
                c(this.q);
            }
            c(a.a(R.styleable.ActionBar_displayOptions, 0));
            int g = a.g(R.styleable.ActionBar_customNavigationLayout, 0);
            if (g != 0) {
                a(LayoutInflater.from(this.a.getContext()).inflate(g, (ViewGroup) this.a, false));
                c(this.e | 16);
            }
            int f = a.f(R.styleable.ActionBar_height, 0);
            if (f > 0) {
                ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
                layoutParams.height = f;
                this.a.setLayoutParams(layoutParams);
            }
            int d = a.d(R.styleable.ActionBar_contentInsetStart, -1);
            int d2 = a.d(R.styleable.ActionBar_contentInsetEnd, -1);
            if (d >= 0 || d2 >= 0) {
                this.a.a(Math.max(d, 0), Math.max(d2, 0));
            }
            int g2 = a.g(R.styleable.ActionBar_titleTextStyle, 0);
            if (g2 != 0) {
                this.a.a(this.a.getContext(), g2);
            }
            int g3 = a.g(R.styleable.ActionBar_subtitleTextStyle, 0);
            if (g3 != 0) {
                this.a.b(this.a.getContext(), g3);
            }
            int g4 = a.g(R.styleable.ActionBar_popupTheme, 0);
            if (g4 != 0) {
                this.a.setPopupTheme(g4);
            }
        } else {
            this.e = r();
        }
        a.b();
        e(i);
        this.m = this.a.getNavigationContentDescription();
        this.a.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.ay.1
            final androidx.appcompat.view.menu.a a;

            {
                this.a = new androidx.appcompat.view.menu.a(ay.this.a.getContext(), 0, 16908332, 0, 0, ay.this.b);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ay.this.c == null || !ay.this.d) {
                    return;
                }
                ay.this.c.onMenuItemSelected(0, this.a);
            }
        });
    }

    public void e(int i) {
        if (i == this.p) {
            return;
        }
        this.p = i;
        if (TextUtils.isEmpty(this.a.getNavigationContentDescription())) {
            f(this.p);
        }
    }

    private int r() {
        if (this.a.getNavigationIcon() != null) {
            this.q = this.a.getNavigationIcon();
            return 15;
        }
        return 11;
    }

    @Override // androidx.appcompat.widget.ae
    public ViewGroup a() {
        return this.a;
    }

    @Override // androidx.appcompat.widget.ae
    public Context b() {
        return this.a.getContext();
    }

    @Override // androidx.appcompat.widget.ae
    public boolean c() {
        return this.a.g();
    }

    @Override // androidx.appcompat.widget.ae
    public void d() {
        this.a.h();
    }

    @Override // androidx.appcompat.widget.ae
    public void a(Window.Callback callback) {
        this.c = callback;
    }

    @Override // androidx.appcompat.widget.ae
    public void a(CharSequence charSequence) {
        if (this.k) {
            return;
        }
        e(charSequence);
    }

    @Override // androidx.appcompat.widget.ae
    public CharSequence e() {
        return this.a.getTitle();
    }

    public void b(CharSequence charSequence) {
        this.k = true;
        e(charSequence);
    }

    private void e(CharSequence charSequence) {
        this.b = charSequence;
        if ((this.e & 8) != 0) {
            this.a.setTitle(charSequence);
        }
    }

    public void c(CharSequence charSequence) {
        this.l = charSequence;
        if ((this.e & 8) != 0) {
            this.a.setSubtitle(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.ae
    public void f() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.ae
    public void g() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.ae
    public void a(int i) {
        a(i != 0 ? androidx.appcompat.a.a.a.b(b(), i) : null);
    }

    @Override // androidx.appcompat.widget.ae
    public void a(Drawable drawable) {
        this.h = drawable;
        s();
    }

    @Override // androidx.appcompat.widget.ae
    public void b(int i) {
        b(i != 0 ? androidx.appcompat.a.a.a.b(b(), i) : null);
    }

    public void b(Drawable drawable) {
        this.i = drawable;
        s();
    }

    private void s() {
        Drawable drawable;
        if ((this.e & 2) == 0) {
            drawable = null;
        } else if ((this.e & 1) != 0) {
            drawable = this.i != null ? this.i : this.h;
        } else {
            drawable = this.h;
        }
        this.a.setLogo(drawable);
    }

    @Override // androidx.appcompat.widget.ae
    public boolean h() {
        return this.a.a();
    }

    @Override // androidx.appcompat.widget.ae
    public boolean i() {
        return this.a.b();
    }

    @Override // androidx.appcompat.widget.ae
    public boolean j() {
        return this.a.c();
    }

    @Override // androidx.appcompat.widget.ae
    public boolean k() {
        return this.a.d();
    }

    @Override // androidx.appcompat.widget.ae
    public boolean l() {
        return this.a.e();
    }

    @Override // androidx.appcompat.widget.ae
    public void m() {
        this.d = true;
    }

    @Override // androidx.appcompat.widget.ae
    public void a(Menu menu, m.a aVar) {
        if (this.n == null) {
            this.n = new c(this.a.getContext());
            this.n.a(R.id.action_menu_presenter);
        }
        this.n.a(aVar);
        this.a.a((androidx.appcompat.view.menu.g) menu, this.n);
    }

    @Override // androidx.appcompat.widget.ae
    public void n() {
        this.a.f();
    }

    @Override // androidx.appcompat.widget.ae
    public int o() {
        return this.e;
    }

    @Override // androidx.appcompat.widget.ae
    public void c(int i) {
        int i2 = this.e ^ i;
        this.e = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    u();
                }
                t();
            }
            if ((i2 & 3) != 0) {
                s();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.a.setTitle(this.b);
                    this.a.setSubtitle(this.l);
                } else {
                    this.a.setTitle((CharSequence) null);
                    this.a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) == 0 || this.g == null) {
                return;
            }
            if ((i & 16) != 0) {
                this.a.addView(this.g);
            } else {
                this.a.removeView(this.g);
            }
        }
    }

    @Override // androidx.appcompat.widget.ae
    public void a(aq aqVar) {
        if (this.f != null && this.f.getParent() == this.a) {
            this.a.removeView(this.f);
        }
        this.f = aqVar;
        if (aqVar == null || this.o != 2) {
            return;
        }
        this.a.addView(this.f, 0);
        Toolbar.b bVar = (Toolbar.b) this.f.getLayoutParams();
        bVar.width = -2;
        bVar.height = -2;
        bVar.a = 8388691;
        aqVar.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.ae
    public void a(boolean z) {
        this.a.setCollapsible(z);
    }

    @Override // androidx.appcompat.widget.ae
    public int p() {
        return this.o;
    }

    public void a(View view) {
        if (this.g != null && (this.e & 16) != 0) {
            this.a.removeView(this.g);
        }
        this.g = view;
        if (view == null || (this.e & 16) == 0) {
            return;
        }
        this.a.addView(this.g);
    }

    @Override // androidx.appcompat.widget.ae
    public androidx.core.g.x a(final int i, long j) {
        return androidx.core.g.t.e(this.a).a(i == 0 ? 1.0f : 0.0f).a(j).a(new androidx.core.g.z() { // from class: androidx.appcompat.widget.ay.2
            private boolean c = false;

            @Override // androidx.core.g.z, androidx.core.g.y
            public void a(View view) {
                ay.this.a.setVisibility(0);
            }

            @Override // androidx.core.g.z, androidx.core.g.y
            public void b(View view) {
                if (this.c) {
                    return;
                }
                ay.this.a.setVisibility(i);
            }

            @Override // androidx.core.g.z, androidx.core.g.y
            public void c(View view) {
                this.c = true;
            }
        });
    }

    public void c(Drawable drawable) {
        this.j = drawable;
        t();
    }

    private void t() {
        if ((this.e & 4) != 0) {
            this.a.setNavigationIcon(this.j != null ? this.j : this.q);
        } else {
            this.a.setNavigationIcon((Drawable) null);
        }
    }

    public void d(CharSequence charSequence) {
        this.m = charSequence;
        u();
    }

    public void f(int i) {
        d(i == 0 ? null : b().getString(i));
    }

    private void u() {
        if ((this.e & 4) != 0) {
            if (TextUtils.isEmpty(this.m)) {
                this.a.setNavigationContentDescription(this.p);
            } else {
                this.a.setNavigationContentDescription(this.m);
            }
        }
    }

    @Override // androidx.appcompat.widget.ae
    public void d(int i) {
        this.a.setVisibility(i);
    }

    @Override // androidx.appcompat.widget.ae
    public void a(m.a aVar, g.a aVar2) {
        this.a.a(aVar, aVar2);
    }

    @Override // androidx.appcompat.widget.ae
    public Menu q() {
        return this.a.getMenu();
    }
}
