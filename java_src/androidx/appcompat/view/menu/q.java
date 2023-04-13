package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.am;
import androidx.core.g.t;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StandardMenuPopup.java */
/* loaded from: classes.dex */
public final class q extends k implements View.OnKeyListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener, m {
    private static final int e = R.layout.abc_popup_menu_item_layout;
    final am a;
    View c;
    ViewTreeObserver d;
    private final Context f;
    private final g g;
    private final f h;
    private final boolean i;
    private final int j;
    private final int k;
    private final int l;
    private PopupWindow.OnDismissListener n;
    private View o;
    private m.a p;
    private boolean q;
    private boolean r;
    private int s;
    private boolean u;
    final ViewTreeObserver.OnGlobalLayoutListener b = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.q.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!q.this.d() || q.this.a.i()) {
                return;
            }
            View view = q.this.c;
            if (view == null || !view.isShown()) {
                q.this.c();
            } else {
                q.this.a.b_();
            }
        }
    };
    private final View.OnAttachStateChangeListener m = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.q.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (q.this.d != null) {
                if (!q.this.d.isAlive()) {
                    q.this.d = view.getViewTreeObserver();
                }
                q.this.d.removeGlobalOnLayoutListener(q.this.b);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    private int t = 0;

    @Override // androidx.appcompat.view.menu.k
    public void a(g gVar) {
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean b() {
        return false;
    }

    public q(Context context, g gVar, View view, int i, int i2, boolean z) {
        this.f = context;
        this.g = gVar;
        this.i = z;
        this.h = new f(gVar, LayoutInflater.from(context), this.i, e);
        this.k = i;
        this.l = i2;
        Resources resources = context.getResources();
        this.j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.o = view;
        this.a = new am(this.f, null, this.k, this.l);
        gVar.a(this, context);
    }

    @Override // androidx.appcompat.view.menu.k
    public void b(boolean z) {
        this.h.a(z);
    }

    @Override // androidx.appcompat.view.menu.k
    public void a(int i) {
        this.t = i;
    }

    private boolean h() {
        if (d()) {
            return true;
        }
        if (this.q || this.o == null) {
            return false;
        }
        this.c = this.o;
        this.a.a((PopupWindow.OnDismissListener) this);
        this.a.a((AdapterView.OnItemClickListener) this);
        this.a.a(true);
        View view = this.c;
        boolean z = this.d == null;
        this.d = view.getViewTreeObserver();
        if (z) {
            this.d.addOnGlobalLayoutListener(this.b);
        }
        view.addOnAttachStateChangeListener(this.m);
        this.a.b(view);
        this.a.f(this.t);
        if (!this.r) {
            this.s = a(this.h, null, this.f, this.j);
            this.r = true;
        }
        this.a.h(this.s);
        this.a.i(2);
        this.a.a(g());
        this.a.b_();
        ListView e2 = this.a.e();
        e2.setOnKeyListener(this);
        if (this.u && this.g.n() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) e2, false);
            TextView textView = (TextView) frameLayout.findViewById(16908310);
            if (textView != null) {
                textView.setText(this.g.n());
            }
            frameLayout.setEnabled(false);
            e2.addHeaderView(frameLayout, null, false);
        }
        this.a.a((ListAdapter) this.h);
        this.a.b_();
        return true;
    }

    @Override // androidx.appcompat.view.menu.p
    public void b_() {
        if (!h()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public void c() {
        if (d()) {
            this.a.c();
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean d() {
        return !this.q && this.a.d();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.q = true;
        this.g.close();
        if (this.d != null) {
            if (!this.d.isAlive()) {
                this.d = this.c.getViewTreeObserver();
            }
            this.d.removeGlobalOnLayoutListener(this.b);
            this.d = null;
        }
        this.c.removeOnAttachStateChangeListener(this.m);
        if (this.n != null) {
            this.n.onDismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(boolean z) {
        this.r = false;
        if (this.h != null) {
            this.h.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(m.a aVar) {
        this.p = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean a(r rVar) {
        if (rVar.hasVisibleItems()) {
            l lVar = new l(this.f, rVar, this.c, this.i, this.k, this.l);
            lVar.a(this.p);
            lVar.a(k.b(rVar));
            lVar.a(this.n);
            this.n = null;
            this.g.a(false);
            int f = this.a.f();
            int a_ = this.a.a_();
            if ((Gravity.getAbsoluteGravity(this.t, t.b(this.o)) & 7) == 5) {
                f += this.o.getWidth();
            }
            if (lVar.a(f, a_)) {
                if (this.p != null) {
                    this.p.a(rVar);
                    return true;
                }
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(g gVar, boolean z) {
        if (gVar != this.g) {
            return;
        }
        c();
        if (this.p != null) {
            this.p.a(gVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void a(View view) {
        this.o = view;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i == 82) {
            c();
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.k
    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.n = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView e() {
        return this.a.e();
    }

    @Override // androidx.appcompat.view.menu.k
    public void b(int i) {
        this.a.b(i);
    }

    @Override // androidx.appcompat.view.menu.k
    public void c(int i) {
        this.a.a(i);
    }

    @Override // androidx.appcompat.view.menu.k
    public void c(boolean z) {
        this.u = z;
    }
}
