package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.al;
import androidx.appcompat.widget.am;
import androidx.core.g.t;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CascadingMenuPopup.java */
/* loaded from: classes.dex */
public final class d extends k implements View.OnKeyListener, PopupWindow.OnDismissListener, m {
    private static final int g = R.layout.abc_cascading_menu_item_layout;
    private PopupWindow.OnDismissListener A;
    final Handler a;
    View d;
    ViewTreeObserver e;
    boolean f;
    private final Context h;
    private final int i;
    private final int j;
    private final int k;
    private final boolean l;
    private View r;
    private boolean t;
    private boolean u;
    private int v;
    private int w;
    private boolean y;
    private m.a z;
    private final List<g> m = new ArrayList();
    final List<a> b = new ArrayList();
    final ViewTreeObserver.OnGlobalLayoutListener c = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.d.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!d.this.d() || d.this.b.size() <= 0 || d.this.b.get(0).a.i()) {
                return;
            }
            View view = d.this.d;
            if (view == null || !view.isShown()) {
                d.this.c();
                return;
            }
            for (a aVar : d.this.b) {
                aVar.a.b_();
            }
        }
    };
    private final View.OnAttachStateChangeListener n = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.d.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (d.this.e != null) {
                if (!d.this.e.isAlive()) {
                    d.this.e = view.getViewTreeObserver();
                }
                d.this.e.removeGlobalOnLayoutListener(d.this.c);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    private final al o = new al() { // from class: androidx.appcompat.view.menu.d.3
        @Override // androidx.appcompat.widget.al
        public void a(g gVar, MenuItem menuItem) {
            d.this.a.removeCallbacksAndMessages(gVar);
        }

        @Override // androidx.appcompat.widget.al
        public void b(final g gVar, final MenuItem menuItem) {
            d.this.a.removeCallbacksAndMessages(null);
            int size = d.this.b.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (gVar == d.this.b.get(i).b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            final a aVar = i2 < d.this.b.size() ? d.this.b.get(i2) : null;
            d.this.a.postAtTime(new Runnable() { // from class: androidx.appcompat.view.menu.d.3.1
                @Override // java.lang.Runnable
                public void run() {
                    if (aVar != null) {
                        d.this.f = true;
                        aVar.b.a(false);
                        d.this.f = false;
                    }
                    if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                        gVar.a(menuItem, 4);
                    }
                }
            }, gVar, SystemClock.uptimeMillis() + 200);
        }
    };
    private int p = 0;
    private int q = 0;
    private boolean x = false;
    private int s = i();

    @Override // androidx.appcompat.view.menu.m
    public boolean b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.k
    protected boolean f() {
        return false;
    }

    public d(Context context, View view, int i, int i2, boolean z) {
        this.h = context;
        this.r = view;
        this.j = i;
        this.k = i2;
        this.l = z;
        Resources resources = context.getResources();
        this.i = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.a = new Handler();
    }

    @Override // androidx.appcompat.view.menu.k
    public void b(boolean z) {
        this.x = z;
    }

    private am h() {
        am amVar = new am(this.h, null, this.j, this.k);
        amVar.a(this.o);
        amVar.a((AdapterView.OnItemClickListener) this);
        amVar.a((PopupWindow.OnDismissListener) this);
        amVar.b(this.r);
        amVar.f(this.q);
        amVar.a(true);
        amVar.i(2);
        return amVar;
    }

    @Override // androidx.appcompat.view.menu.p
    public void b_() {
        if (d()) {
            return;
        }
        for (g gVar : this.m) {
            c(gVar);
        }
        this.m.clear();
        this.d = this.r;
        if (this.d != null) {
            boolean z = this.e == null;
            this.e = this.d.getViewTreeObserver();
            if (z) {
                this.e.addOnGlobalLayoutListener(this.c);
            }
            this.d.addOnAttachStateChangeListener(this.n);
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public void c() {
        int size = this.b.size();
        if (size > 0) {
            a[] aVarArr = (a[]) this.b.toArray(new a[size]);
            for (int i = size - 1; i >= 0; i--) {
                a aVar = aVarArr[i];
                if (aVar.a.d()) {
                    aVar.a.c();
                }
            }
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i == 82) {
            c();
            return true;
        }
        return false;
    }

    private int i() {
        return t.b(this.r) == 1 ? 0 : 1;
    }

    private int d(int i) {
        ListView a2 = this.b.get(this.b.size() - 1).a();
        int[] iArr = new int[2];
        a2.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.d.getWindowVisibleDisplayFrame(rect);
        return this.s == 1 ? (iArr[0] + a2.getWidth()) + i > rect.right ? 0 : 1 : iArr[0] - i < 0 ? 1 : 0;
    }

    @Override // androidx.appcompat.view.menu.k
    public void a(g gVar) {
        gVar.a(this, this.h);
        if (d()) {
            c(gVar);
        } else {
            this.m.add(gVar);
        }
    }

    private void c(g gVar) {
        a aVar;
        View view;
        int i;
        int i2;
        int width;
        LayoutInflater from = LayoutInflater.from(this.h);
        f fVar = new f(gVar, from, this.l, g);
        if (!d() && this.x) {
            fVar.a(true);
        } else if (d()) {
            fVar.a(k.b(gVar));
        }
        int a2 = a(fVar, null, this.h, this.i);
        am h = h();
        h.a((ListAdapter) fVar);
        h.h(a2);
        h.f(this.q);
        if (this.b.size() > 0) {
            aVar = this.b.get(this.b.size() - 1);
            view = a(aVar, gVar);
        } else {
            aVar = null;
            view = null;
        }
        if (view != null) {
            h.c(false);
            h.a((Object) null);
            int d = d(a2);
            boolean z = d == 1;
            this.s = d;
            if (Build.VERSION.SDK_INT >= 26) {
                h.b(view);
                i2 = 0;
                i = 0;
            } else {
                int[] iArr = new int[2];
                this.r.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                if ((this.q & 7) == 5) {
                    iArr[0] = iArr[0] + this.r.getWidth();
                    iArr2[0] = iArr2[0] + view.getWidth();
                }
                i = iArr2[0] - iArr[0];
                i2 = iArr2[1] - iArr[1];
            }
            if ((this.q & 5) == 5) {
                width = z ? i + a2 : i - view.getWidth();
            } else {
                width = z ? i + view.getWidth() : i - a2;
            }
            h.b(width);
            h.b(true);
            h.a(i2);
        } else {
            if (this.t) {
                h.b(this.v);
            }
            if (this.u) {
                h.a(this.w);
            }
            h.a(g());
        }
        this.b.add(new a(h, gVar, this.s));
        h.b_();
        ListView e = h.e();
        e.setOnKeyListener(this);
        if (aVar == null && this.y && gVar.n() != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) e, false);
            frameLayout.setEnabled(false);
            ((TextView) frameLayout.findViewById(16908310)).setText(gVar.n());
            e.addHeaderView(frameLayout, null, false);
            h.b_();
        }
    }

    private MenuItem a(g gVar, g gVar2) {
        int size = gVar.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = gVar.getItem(i);
            if (item.hasSubMenu() && gVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    private View a(a aVar, g gVar) {
        f fVar;
        int i;
        int firstVisiblePosition;
        MenuItem a2 = a(aVar.b, gVar);
        if (a2 == null) {
            return null;
        }
        ListView a3 = aVar.a();
        ListAdapter adapter = a3.getAdapter();
        int i2 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i = headerViewListAdapter.getHeadersCount();
            fVar = (f) headerViewListAdapter.getWrappedAdapter();
        } else {
            fVar = (f) adapter;
            i = 0;
        }
        int count = fVar.getCount();
        while (true) {
            if (i2 >= count) {
                i2 = -1;
                break;
            } else if (a2 == fVar.getItem(i2)) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 != -1 && (firstVisiblePosition = (i2 + i) - a3.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < a3.getChildCount()) {
            return a3.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean d() {
        return this.b.size() > 0 && this.b.get(0).a.d();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        a aVar;
        int size = this.b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                aVar = null;
                break;
            }
            aVar = this.b.get(i);
            if (!aVar.a.d()) {
                break;
            }
            i++;
        }
        if (aVar != null) {
            aVar.b.a(false);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(boolean z) {
        for (a aVar : this.b) {
            a(aVar.a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(m.a aVar) {
        this.z = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean a(r rVar) {
        for (a aVar : this.b) {
            if (rVar == aVar.b) {
                aVar.a().requestFocus();
                return true;
            }
        }
        if (rVar.hasVisibleItems()) {
            a((g) rVar);
            if (this.z != null) {
                this.z.a(rVar);
            }
            return true;
        }
        return false;
    }

    private int d(g gVar) {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            if (gVar == this.b.get(i).b) {
                return i;
            }
        }
        return -1;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(g gVar, boolean z) {
        int d = d(gVar);
        if (d < 0) {
            return;
        }
        int i = d + 1;
        if (i < this.b.size()) {
            this.b.get(i).b.a(false);
        }
        a remove = this.b.remove(d);
        remove.b.b(this);
        if (this.f) {
            remove.a.b((Object) null);
            remove.a.e(0);
        }
        remove.a.c();
        int size = this.b.size();
        if (size > 0) {
            this.s = this.b.get(size - 1).c;
        } else {
            this.s = i();
        }
        if (size != 0) {
            if (z) {
                this.b.get(0).b.a(false);
                return;
            }
            return;
        }
        c();
        if (this.z != null) {
            this.z.a(gVar, true);
        }
        if (this.e != null) {
            if (this.e.isAlive()) {
                this.e.removeGlobalOnLayoutListener(this.c);
            }
            this.e = null;
        }
        this.d.removeOnAttachStateChangeListener(this.n);
        this.A.onDismiss();
    }

    @Override // androidx.appcompat.view.menu.k
    public void a(int i) {
        if (this.p != i) {
            this.p = i;
            this.q = androidx.core.g.d.a(i, t.b(this.r));
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void a(View view) {
        if (this.r != view) {
            this.r = view;
            this.q = androidx.core.g.d.a(this.p, t.b(this.r));
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.A = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView e() {
        if (this.b.isEmpty()) {
            return null;
        }
        return this.b.get(this.b.size() - 1).a();
    }

    @Override // androidx.appcompat.view.menu.k
    public void b(int i) {
        this.t = true;
        this.v = i;
    }

    @Override // androidx.appcompat.view.menu.k
    public void c(int i) {
        this.u = true;
        this.w = i;
    }

    @Override // androidx.appcompat.view.menu.k
    public void c(boolean z) {
        this.y = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CascadingMenuPopup.java */
    /* loaded from: classes.dex */
    public static class a {
        public final am a;
        public final g b;
        public final int c;

        public a(am amVar, g gVar, int i) {
            this.a = amVar;
            this.b = gVar;
            this.c = i;
        }

        public ListView a() {
            return this.a.e();
        }
    }
}
