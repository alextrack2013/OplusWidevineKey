package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R;
import java.lang.reflect.Method;
/* compiled from: ListPopupWindow.java */
/* loaded from: classes.dex */
public class ak implements androidx.appcompat.view.menu.p {
    private static Method a;
    private static Method b;
    private static Method h;
    private AdapterView.OnItemClickListener A;
    private AdapterView.OnItemSelectedListener B;
    private final d C;
    private final c D;
    private final a E;
    private Runnable F;
    private final Rect G;
    private Rect H;
    private boolean I;
    ag c;
    int d;
    final e e;
    final Handler f;
    PopupWindow g;
    private Context i;
    private ListAdapter j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private boolean p;
    private boolean q;
    private boolean r;
    private int s;
    private boolean t;
    private boolean u;
    private View v;
    private int w;
    private DataSetObserver x;
    private View y;
    private Drawable z;

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                a = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                h = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                b = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException unused3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public ak(Context context) {
        this(context, null, R.attr.listPopupWindowStyle);
    }

    public ak(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ak(Context context, AttributeSet attributeSet, int i, int i2) {
        this.k = -2;
        this.l = -2;
        this.o = 1002;
        this.s = 0;
        this.t = false;
        this.u = false;
        this.d = Integer.MAX_VALUE;
        this.w = 0;
        this.e = new e();
        this.C = new d();
        this.D = new c();
        this.E = new a();
        this.G = new Rect();
        this.i = context;
        this.f = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ListPopupWindow, i, i2);
        this.m = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        this.n = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        if (this.n != 0) {
            this.p = true;
        }
        obtainStyledAttributes.recycle();
        this.g = new r(context, attributeSet, i, i2);
        this.g.setInputMethodMode(1);
    }

    public void a(ListAdapter listAdapter) {
        if (this.x == null) {
            this.x = new b();
        } else if (this.j != null) {
            this.j.unregisterDataSetObserver(this.x);
        }
        this.j = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.x);
        }
        if (this.c != null) {
            this.c.setAdapter(this.j);
        }
    }

    public void d(int i) {
        this.w = i;
    }

    public void a(boolean z) {
        this.I = z;
        this.g.setFocusable(z);
    }

    public boolean i() {
        return this.I;
    }

    public Drawable b() {
        return this.g.getBackground();
    }

    public void a(Drawable drawable) {
        this.g.setBackgroundDrawable(drawable);
    }

    public void e(int i) {
        this.g.setAnimationStyle(i);
    }

    public View j() {
        return this.y;
    }

    public void b(View view) {
        this.y = view;
    }

    public int f() {
        return this.m;
    }

    public void b(int i) {
        this.m = i;
    }

    public int a_() {
        if (this.p) {
            return this.n;
        }
        return 0;
    }

    public void a(int i) {
        this.n = i;
        this.p = true;
    }

    public void a(Rect rect) {
        this.H = rect != null ? new Rect(rect) : null;
    }

    public void f(int i) {
        this.s = i;
    }

    public int k() {
        return this.l;
    }

    public void g(int i) {
        this.l = i;
    }

    public void h(int i) {
        Drawable background = this.g.getBackground();
        if (background != null) {
            background.getPadding(this.G);
            this.l = this.G.left + this.G.right + i;
            return;
        }
        g(i);
    }

    public void a(AdapterView.OnItemClickListener onItemClickListener) {
        this.A = onItemClickListener;
    }

    @Override // androidx.appcompat.view.menu.p
    public void b_() {
        int i;
        int i2;
        int h2 = h();
        boolean m = m();
        androidx.core.widget.h.a(this.g, this.o);
        boolean z = true;
        if (this.g.isShowing()) {
            if (androidx.core.g.t.n(j())) {
                if (this.l == -1) {
                    i2 = -1;
                } else if (this.l == -2) {
                    i2 = j().getWidth();
                } else {
                    i2 = this.l;
                }
                if (this.k == -1) {
                    if (!m) {
                        h2 = -1;
                    }
                    if (m) {
                        this.g.setWidth(this.l == -1 ? -1 : 0);
                        this.g.setHeight(0);
                    } else {
                        this.g.setWidth(this.l == -1 ? -1 : 0);
                        this.g.setHeight(-1);
                    }
                } else if (this.k != -2) {
                    h2 = this.k;
                }
                PopupWindow popupWindow = this.g;
                if (this.u || this.t) {
                    z = false;
                }
                popupWindow.setOutsideTouchable(z);
                this.g.update(j(), this.m, this.n, i2 < 0 ? -1 : i2, h2 < 0 ? -1 : h2);
                return;
            }
            return;
        }
        if (this.l == -1) {
            i = -1;
        } else if (this.l == -2) {
            i = j().getWidth();
        } else {
            i = this.l;
        }
        if (this.k == -1) {
            h2 = -1;
        } else if (this.k != -2) {
            h2 = this.k;
        }
        this.g.setWidth(i);
        this.g.setHeight(h2);
        c(true);
        this.g.setOutsideTouchable((this.u || this.t) ? false : true);
        this.g.setTouchInterceptor(this.C);
        if (this.r) {
            androidx.core.widget.h.a(this.g, this.q);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            if (h != null) {
                try {
                    h.invoke(this.g, this.H);
                } catch (Exception e2) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e2);
                }
            }
        } else {
            this.g.setEpicenterBounds(this.H);
        }
        androidx.core.widget.h.a(this.g, j(), this.m, this.n, this.s);
        this.c.setSelection(-1);
        if (!this.I || this.c.isInTouchMode()) {
            l();
        }
        if (this.I) {
            return;
        }
        this.f.post(this.E);
    }

    @Override // androidx.appcompat.view.menu.p
    public void c() {
        this.g.dismiss();
        g();
        this.g.setContentView(null);
        this.c = null;
        this.f.removeCallbacks(this.e);
    }

    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.g.setOnDismissListener(onDismissListener);
    }

    private void g() {
        if (this.v != null) {
            ViewParent parent = this.v.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.v);
            }
        }
    }

    public void i(int i) {
        this.g.setInputMethodMode(i);
    }

    public void j(int i) {
        ag agVar = this.c;
        if (!d() || agVar == null) {
            return;
        }
        agVar.setListSelectionHidden(false);
        agVar.setSelection(i);
        if (agVar.getChoiceMode() != 0) {
            agVar.setItemChecked(i, true);
        }
    }

    public void l() {
        ag agVar = this.c;
        if (agVar != null) {
            agVar.setListSelectionHidden(true);
            agVar.requestLayout();
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean d() {
        return this.g.isShowing();
    }

    public boolean m() {
        return this.g.getInputMethodMode() == 2;
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView e() {
        return this.c;
    }

    ag a(Context context, boolean z) {
        return new ag(context, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int h() {
        int i;
        int i2;
        int makeMeasureSpec;
        int i3;
        int i4;
        if (this.c == null) {
            Context context = this.i;
            this.F = new Runnable() { // from class: androidx.appcompat.widget.ak.1
                @Override // java.lang.Runnable
                public void run() {
                    View j = ak.this.j();
                    if (j == null || j.getWindowToken() == null) {
                        return;
                    }
                    ak.this.b_();
                }
            };
            this.c = a(context, !this.I);
            if (this.z != null) {
                this.c.setSelector(this.z);
            }
            this.c.setAdapter(this.j);
            this.c.setOnItemClickListener(this.A);
            this.c.setFocusable(true);
            this.c.setFocusableInTouchMode(true);
            this.c.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.ak.2
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view, int i5, long j) {
                    ag agVar;
                    if (i5 == -1 || (agVar = ak.this.c) == null) {
                        return;
                    }
                    agVar.setListSelectionHidden(false);
                }
            });
            this.c.setOnScrollListener(this.D);
            if (this.B != null) {
                this.c.setOnItemSelectedListener(this.B);
            }
            ag agVar = this.c;
            View view = this.v;
            if (view != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                switch (this.w) {
                    case 0:
                        linearLayout.addView(view);
                        linearLayout.addView(agVar, layoutParams);
                        break;
                    case 1:
                        linearLayout.addView(agVar, layoutParams);
                        linearLayout.addView(view);
                        break;
                    default:
                        Log.e("ListPopupWindow", "Invalid hint position " + this.w);
                        break;
                }
                if (this.l >= 0) {
                    i3 = this.l;
                    i4 = Integer.MIN_VALUE;
                } else {
                    i3 = 0;
                    i4 = 0;
                }
                view.measure(View.MeasureSpec.makeMeasureSpec(i3, i4), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view.getLayoutParams();
                i = view.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                agVar = linearLayout;
            } else {
                i = 0;
            }
            this.g.setContentView(agVar);
        } else {
            ViewGroup viewGroup = (ViewGroup) this.g.getContentView();
            View view2 = this.v;
            if (view2 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                i = view2.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                i = 0;
            }
        }
        Drawable background = this.g.getBackground();
        if (background != null) {
            background.getPadding(this.G);
            i2 = this.G.top + this.G.bottom;
            if (!this.p) {
                this.n = -this.G.top;
            }
        } else {
            this.G.setEmpty();
            i2 = 0;
        }
        int a2 = a(j(), this.n, this.g.getInputMethodMode() == 2);
        if (this.t || this.k == -1) {
            return a2 + i2;
        }
        switch (this.l) {
            case -2:
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.i.getResources().getDisplayMetrics().widthPixels - (this.G.left + this.G.right), Integer.MIN_VALUE);
                break;
            case -1:
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.i.getResources().getDisplayMetrics().widthPixels - (this.G.left + this.G.right), 1073741824);
                break;
            default:
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.l, 1073741824);
                break;
        }
        int a3 = this.c.a(makeMeasureSpec, 0, -1, a2 - i, -1);
        if (a3 > 0) {
            i += i2 + this.c.getPaddingTop() + this.c.getPaddingBottom();
        }
        return a3 + i;
    }

    public void b(boolean z) {
        this.r = true;
        this.q = z;
    }

    /* compiled from: ListPopupWindow.java */
    /* loaded from: classes.dex */
    private class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (ak.this.d()) {
                ak.this.b_();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ak.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ListPopupWindow.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ak.this.l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ListPopupWindow.java */
    /* loaded from: classes.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ak.this.c == null || !androidx.core.g.t.n(ak.this.c) || ak.this.c.getCount() <= ak.this.c.getChildCount() || ak.this.c.getChildCount() > ak.this.d) {
                return;
            }
            ak.this.g.setInputMethodMode(2);
            ak.this.b_();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ListPopupWindow.java */
    /* loaded from: classes.dex */
    public class d implements View.OnTouchListener {
        d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && ak.this.g != null && ak.this.g.isShowing() && x >= 0 && x < ak.this.g.getWidth() && y >= 0 && y < ak.this.g.getHeight()) {
                ak.this.f.postDelayed(ak.this.e, 250L);
                return false;
            } else if (action == 1) {
                ak.this.f.removeCallbacks(ak.this.e);
                return false;
            } else {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ListPopupWindow.java */
    /* loaded from: classes.dex */
    public class c implements AbsListView.OnScrollListener {
        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        c() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i != 1 || ak.this.m() || ak.this.g.getContentView() == null) {
                return;
            }
            ak.this.f.removeCallbacks(ak.this.e);
            ak.this.e.run();
        }
    }

    private void c(boolean z) {
        if (Build.VERSION.SDK_INT <= 28) {
            if (a != null) {
                try {
                    a.invoke(this.g, Boolean.valueOf(z));
                    return;
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                    return;
                }
            }
            return;
        }
        this.g.setIsClippedToScreen(z);
    }

    private int a(View view, int i, boolean z) {
        if (Build.VERSION.SDK_INT <= 23) {
            if (b != null) {
                try {
                    return ((Integer) b.invoke(this.g, view, Integer.valueOf(i), Boolean.valueOf(z))).intValue();
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
                }
            }
            return this.g.getMaxAvailableHeight(view, i);
        }
        return this.g.getMaxAvailableHeight(view, i, z);
    }
}
