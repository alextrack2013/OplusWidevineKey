package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.app.a;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.ActionMenuView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class Toolbar extends ViewGroup {
    private ColorStateList A;
    private ColorStateList B;
    private boolean C;
    private boolean D;
    private final ArrayList<View> E;
    private final ArrayList<View> F;
    private final int[] G;
    private final ActionMenuView.e H;
    private ay I;
    private androidx.appcompat.widget.c J;
    private a K;
    private m.a L;
    private g.a M;
    private boolean N;
    private final Runnable O;
    ImageButton a;
    View b;
    int c;
    c d;
    private ActionMenuView e;
    private TextView f;
    private TextView g;
    private ImageButton h;
    private ImageView i;
    private Drawable j;
    private CharSequence k;
    private Context l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private ap u;
    private int v;
    private int w;
    private int x;
    private CharSequence y;
    private CharSequence z;

    /* loaded from: classes.dex */
    public interface c {
        boolean a(MenuItem menuItem);
    }

    public Toolbar(Context context) {
        this(context, null);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.x = 8388627;
        this.E = new ArrayList<>();
        this.F = new ArrayList<>();
        this.G = new int[2];
        this.H = new ActionMenuView.e() { // from class: androidx.appcompat.widget.Toolbar.1
            @Override // androidx.appcompat.widget.ActionMenuView.e
            public boolean a(MenuItem menuItem) {
                if (Toolbar.this.d != null) {
                    return Toolbar.this.d.a(menuItem);
                }
                return false;
            }
        };
        this.O = new Runnable() { // from class: androidx.appcompat.widget.Toolbar.2
            @Override // java.lang.Runnable
            public void run() {
                Toolbar.this.d();
            }
        };
        ax a2 = ax.a(getContext(), attributeSet, R.styleable.Toolbar, i, 0);
        androidx.core.g.t.a(this, context, R.styleable.Toolbar, attributeSet, a2.a(), i, 0);
        this.n = a2.g(R.styleable.Toolbar_titleTextAppearance, 0);
        this.o = a2.g(R.styleable.Toolbar_subtitleTextAppearance, 0);
        this.x = a2.c(R.styleable.Toolbar_android_gravity, this.x);
        this.c = a2.c(R.styleable.Toolbar_buttonGravity, 48);
        int d2 = a2.d(R.styleable.Toolbar_titleMargin, 0);
        d2 = a2.g(R.styleable.Toolbar_titleMargins) ? a2.d(R.styleable.Toolbar_titleMargins, d2) : d2;
        this.t = d2;
        this.s = d2;
        this.r = d2;
        this.q = d2;
        int d3 = a2.d(R.styleable.Toolbar_titleMarginStart, -1);
        if (d3 >= 0) {
            this.q = d3;
        }
        int d4 = a2.d(R.styleable.Toolbar_titleMarginEnd, -1);
        if (d4 >= 0) {
            this.r = d4;
        }
        int d5 = a2.d(R.styleable.Toolbar_titleMarginTop, -1);
        if (d5 >= 0) {
            this.s = d5;
        }
        int d6 = a2.d(R.styleable.Toolbar_titleMarginBottom, -1);
        if (d6 >= 0) {
            this.t = d6;
        }
        this.p = a2.e(R.styleable.Toolbar_maxButtonHeight, -1);
        int d7 = a2.d(R.styleable.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int d8 = a2.d(R.styleable.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int e = a2.e(R.styleable.Toolbar_contentInsetLeft, 0);
        int e2 = a2.e(R.styleable.Toolbar_contentInsetRight, 0);
        s();
        this.u.b(e, e2);
        if (d7 != Integer.MIN_VALUE || d8 != Integer.MIN_VALUE) {
            this.u.a(d7, d8);
        }
        this.v = a2.d(R.styleable.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.w = a2.d(R.styleable.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.j = a2.a(R.styleable.Toolbar_collapseIcon);
        this.k = a2.c(R.styleable.Toolbar_collapseContentDescription);
        CharSequence c2 = a2.c(R.styleable.Toolbar_title);
        if (!TextUtils.isEmpty(c2)) {
            setTitle(c2);
        }
        CharSequence c3 = a2.c(R.styleable.Toolbar_subtitle);
        if (!TextUtils.isEmpty(c3)) {
            setSubtitle(c3);
        }
        this.l = getContext();
        setPopupTheme(a2.g(R.styleable.Toolbar_popupTheme, 0));
        Drawable a3 = a2.a(R.styleable.Toolbar_navigationIcon);
        if (a3 != null) {
            setNavigationIcon(a3);
        }
        CharSequence c4 = a2.c(R.styleable.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(c4)) {
            setNavigationContentDescription(c4);
        }
        Drawable a4 = a2.a(R.styleable.Toolbar_logo);
        if (a4 != null) {
            setLogo(a4);
        }
        CharSequence c5 = a2.c(R.styleable.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(c5)) {
            setLogoDescription(c5);
        }
        if (a2.g(R.styleable.Toolbar_titleTextColor)) {
            setTitleTextColor(a2.e(R.styleable.Toolbar_titleTextColor));
        }
        if (a2.g(R.styleable.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(a2.e(R.styleable.Toolbar_subtitleTextColor));
        }
        if (a2.g(R.styleable.Toolbar_menu)) {
            a(a2.g(R.styleable.Toolbar_menu, 0));
        }
        a2.b();
    }

    public void setPopupTheme(int i) {
        if (this.m != i) {
            this.m = i;
            if (i == 0) {
                this.l = getContext();
            } else {
                this.l = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public int getPopupTheme() {
        return this.m;
    }

    public int getTitleMarginStart() {
        return this.q;
    }

    public void setTitleMarginStart(int i) {
        this.q = i;
        requestLayout();
    }

    public int getTitleMarginTop() {
        return this.s;
    }

    public void setTitleMarginTop(int i) {
        this.s = i;
        requestLayout();
    }

    public int getTitleMarginEnd() {
        return this.r;
    }

    public void setTitleMarginEnd(int i) {
        this.r = i;
        requestLayout();
    }

    public int getTitleMarginBottom() {
        return this.t;
    }

    public void setTitleMarginBottom(int i) {
        this.t = i;
        requestLayout();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        s();
        this.u.a(i == 1);
    }

    public void setLogo(int i) {
        setLogo(androidx.appcompat.a.a.a.b(getContext(), i));
    }

    public boolean a() {
        return getVisibility() == 0 && this.e != null && this.e.a();
    }

    public boolean b() {
        return this.e != null && this.e.g();
    }

    public boolean c() {
        return this.e != null && this.e.h();
    }

    public boolean d() {
        return this.e != null && this.e.e();
    }

    public boolean e() {
        return this.e != null && this.e.f();
    }

    public void a(androidx.appcompat.view.menu.g gVar, androidx.appcompat.widget.c cVar) {
        if (gVar == null && this.e == null) {
            return;
        }
        o();
        androidx.appcompat.view.menu.g d2 = this.e.d();
        if (d2 == gVar) {
            return;
        }
        if (d2 != null) {
            d2.b(this.J);
            d2.b(this.K);
        }
        if (this.K == null) {
            this.K = new a();
        }
        cVar.c(true);
        if (gVar != null) {
            gVar.a(cVar, this.l);
            gVar.a(this.K, this.l);
        } else {
            cVar.a(this.l, (androidx.appcompat.view.menu.g) null);
            this.K.a(this.l, (androidx.appcompat.view.menu.g) null);
            cVar.a(true);
            this.K.a(true);
        }
        this.e.setPopupTheme(this.m);
        this.e.setPresenter(cVar);
        this.J = cVar;
    }

    public void f() {
        if (this.e != null) {
            this.e.i();
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            m();
            if (!d(this.i)) {
                a((View) this.i, true);
            }
        } else if (this.i != null && d(this.i)) {
            removeView(this.i);
            this.F.remove(this.i);
        }
        if (this.i != null) {
            this.i.setImageDrawable(drawable);
        }
    }

    public Drawable getLogo() {
        if (this.i != null) {
            return this.i.getDrawable();
        }
        return null;
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m();
        }
        if (this.i != null) {
            this.i.setContentDescription(charSequence);
        }
    }

    public CharSequence getLogoDescription() {
        if (this.i != null) {
            return this.i.getContentDescription();
        }
        return null;
    }

    private void m() {
        if (this.i == null) {
            this.i = new p(getContext());
        }
    }

    public boolean g() {
        return (this.K == null || this.K.b == null) ? false : true;
    }

    public void h() {
        androidx.appcompat.view.menu.i iVar = this.K == null ? null : this.K.b;
        if (iVar != null) {
            iVar.collapseActionView();
        }
    }

    public CharSequence getTitle() {
        return this.y;
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f == null) {
                Context context = getContext();
                this.f = new aa(context);
                this.f.setSingleLine();
                this.f.setEllipsize(TextUtils.TruncateAt.END);
                if (this.n != 0) {
                    this.f.setTextAppearance(context, this.n);
                }
                if (this.A != null) {
                    this.f.setTextColor(this.A);
                }
            }
            if (!d(this.f)) {
                a((View) this.f, true);
            }
        } else if (this.f != null && d(this.f)) {
            removeView(this.f);
            this.F.remove(this.f);
        }
        if (this.f != null) {
            this.f.setText(charSequence);
        }
        this.y = charSequence;
    }

    public CharSequence getSubtitle() {
        return this.z;
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.g == null) {
                Context context = getContext();
                this.g = new aa(context);
                this.g.setSingleLine();
                this.g.setEllipsize(TextUtils.TruncateAt.END);
                if (this.o != 0) {
                    this.g.setTextAppearance(context, this.o);
                }
                if (this.B != null) {
                    this.g.setTextColor(this.B);
                }
            }
            if (!d(this.g)) {
                a((View) this.g, true);
            }
        } else if (this.g != null && d(this.g)) {
            removeView(this.g);
            this.F.remove(this.g);
        }
        if (this.g != null) {
            this.g.setText(charSequence);
        }
        this.z = charSequence;
    }

    public void a(Context context, int i) {
        this.n = i;
        if (this.f != null) {
            this.f.setTextAppearance(context, i);
        }
    }

    public void b(Context context, int i) {
        this.o = i;
        if (this.g != null) {
            this.g.setTextAppearance(context, i);
        }
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.A = colorStateList;
        if (this.f != null) {
            this.f.setTextColor(colorStateList);
        }
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.B = colorStateList;
        if (this.g != null) {
            this.g.setTextColor(colorStateList);
        }
    }

    public CharSequence getNavigationContentDescription() {
        if (this.h != null) {
            return this.h.getContentDescription();
        }
        return null;
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            p();
        }
        if (this.h != null) {
            this.h.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(androidx.appcompat.a.a.a.b(getContext(), i));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            p();
            if (!d(this.h)) {
                a((View) this.h, true);
            }
        } else if (this.h != null && d(this.h)) {
            removeView(this.h);
            this.F.remove(this.h);
        }
        if (this.h != null) {
            this.h.setImageDrawable(drawable);
        }
    }

    public Drawable getNavigationIcon() {
        if (this.h != null) {
            return this.h.getDrawable();
        }
        return null;
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        p();
        this.h.setOnClickListener(onClickListener);
    }

    public CharSequence getCollapseContentDescription() {
        if (this.a != null) {
            return this.a.getContentDescription();
        }
        return null;
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            i();
        }
        if (this.a != null) {
            this.a.setContentDescription(charSequence);
        }
    }

    public Drawable getCollapseIcon() {
        if (this.a != null) {
            return this.a.getDrawable();
        }
        return null;
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(androidx.appcompat.a.a.a.b(getContext(), i));
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            i();
            this.a.setImageDrawable(drawable);
        } else if (this.a != null) {
            this.a.setImageDrawable(this.j);
        }
    }

    public Menu getMenu() {
        n();
        return this.e.getMenu();
    }

    public void setOverflowIcon(Drawable drawable) {
        n();
        this.e.setOverflowIcon(drawable);
    }

    public Drawable getOverflowIcon() {
        n();
        return this.e.getOverflowIcon();
    }

    private void n() {
        o();
        if (this.e.d() == null) {
            androidx.appcompat.view.menu.g gVar = (androidx.appcompat.view.menu.g) this.e.getMenu();
            if (this.K == null) {
                this.K = new a();
            }
            this.e.setExpandedActionViewsExclusive(true);
            gVar.a(this.K, this.l);
        }
    }

    private void o() {
        if (this.e == null) {
            this.e = new ActionMenuView(getContext());
            this.e.setPopupTheme(this.m);
            this.e.setOnMenuItemClickListener(this.H);
            this.e.a(this.L, this.M);
            b generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.a = 8388613 | (this.c & 112);
            this.e.setLayoutParams(generateDefaultLayoutParams);
            a((View) this.e, false);
        }
    }

    private MenuInflater getMenuInflater() {
        return new androidx.appcompat.view.g(getContext());
    }

    public void a(int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    public void setOnMenuItemClickListener(c cVar) {
        this.d = cVar;
    }

    public void a(int i, int i2) {
        s();
        this.u.a(i, i2);
    }

    public int getContentInsetStart() {
        if (this.u != null) {
            return this.u.c();
        }
        return 0;
    }

    public int getContentInsetEnd() {
        if (this.u != null) {
            return this.u.d();
        }
        return 0;
    }

    public int getContentInsetLeft() {
        if (this.u != null) {
            return this.u.a();
        }
        return 0;
    }

    public int getContentInsetRight() {
        if (this.u != null) {
            return this.u.b();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        if (this.v != Integer.MIN_VALUE) {
            return this.v;
        }
        return getContentInsetStart();
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.v) {
            this.v = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public int getContentInsetEndWithActions() {
        if (this.w != Integer.MIN_VALUE) {
            return this.w;
        }
        return getContentInsetEnd();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.w) {
            this.w = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public int getCurrentContentInsetStart() {
        if (getNavigationIcon() != null) {
            return Math.max(getContentInsetStart(), Math.max(this.v, 0));
        }
        return getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        androidx.appcompat.view.menu.g d2;
        if ((this.e == null || (d2 = this.e.d()) == null || !d2.hasVisibleItems()) ? false : true) {
            return Math.max(getContentInsetEnd(), Math.max(this.w, 0));
        }
        return getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        if (androidx.core.g.t.b(this) == 1) {
            return getCurrentContentInsetEnd();
        }
        return getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        if (androidx.core.g.t.b(this) == 1) {
            return getCurrentContentInsetStart();
        }
        return getCurrentContentInsetEnd();
    }

    private void p() {
        if (this.h == null) {
            this.h = new n(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            b generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.a = 8388611 | (this.c & 112);
            this.h.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    void i() {
        if (this.a == null) {
            this.a = new n(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.a.setImageDrawable(this.j);
            this.a.setContentDescription(this.k);
            b generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.a = 8388611 | (this.c & 112);
            generateDefaultLayoutParams.b = 2;
            this.a.setLayoutParams(generateDefaultLayoutParams);
            this.a.setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.Toolbar.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Toolbar.this.h();
                }
            });
        }
    }

    private void a(View view, boolean z) {
        b bVar;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            bVar = generateDefaultLayoutParams();
        } else if (!checkLayoutParams(layoutParams)) {
            bVar = generateLayoutParams(layoutParams);
        } else {
            bVar = (b) layoutParams;
        }
        bVar.b = 1;
        if (z && this.b != null) {
            view.setLayoutParams(bVar);
            this.F.add(view);
            return;
        }
        addView(view, bVar);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        d dVar = new d(super.onSaveInstanceState());
        if (this.K != null && this.K.b != null) {
            dVar.a = this.K.b.getItemId();
        }
        dVar.b = b();
        return dVar;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof d)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        d dVar = (d) parcelable;
        super.onRestoreInstanceState(dVar.a());
        androidx.appcompat.view.menu.g d2 = this.e != null ? this.e.d() : null;
        if (dVar.a != 0 && this.K != null && d2 != null && (findItem = d2.findItem(dVar.a)) != null) {
            findItem.expandActionView();
        }
        if (dVar.b) {
            q();
        }
    }

    private void q() {
        removeCallbacks(this.O);
        post(this.O);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.O);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.C = false;
        }
        if (!this.C) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.C = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.C = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.D = false;
        }
        if (!this.D) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.D = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.D = false;
        }
        return true;
    }

    private void a(View view, int i, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i5 >= 0) {
            if (mode != 0) {
                i5 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i5);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    private int a(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + max + i2, marginLayoutParams.width), getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    private boolean r() {
        if (this.N) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (a(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        char c2;
        char c3;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int[] iArr = this.G;
        if (bd.a(this)) {
            c3 = 1;
            c2 = 0;
        } else {
            c2 = 1;
            c3 = 0;
        }
        if (a(this.h)) {
            a(this.h, i, 0, i2, 0, this.p);
            i3 = this.h.getMeasuredWidth() + b(this.h);
            i4 = Math.max(0, this.h.getMeasuredHeight() + c(this.h));
            i5 = View.combineMeasuredStates(0, this.h.getMeasuredState());
        } else {
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        if (a(this.a)) {
            a(this.a, i, 0, i2, 0, this.p);
            i3 = this.a.getMeasuredWidth() + b(this.a);
            i4 = Math.max(i4, this.a.getMeasuredHeight() + c(this.a));
            i5 = View.combineMeasuredStates(i5, this.a.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = Math.max(currentContentInsetStart, i3) + 0;
        iArr[c3] = Math.max(0, currentContentInsetStart - i3);
        if (a(this.e)) {
            a(this.e, i, max, i2, 0, this.p);
            i6 = this.e.getMeasuredWidth() + b(this.e);
            i4 = Math.max(i4, this.e.getMeasuredHeight() + c(this.e));
            i5 = View.combineMeasuredStates(i5, this.e.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max2 = max + Math.max(currentContentInsetEnd, i6);
        iArr[c2] = Math.max(0, currentContentInsetEnd - i6);
        if (a(this.b)) {
            max2 += a(this.b, i, max2, i2, 0, iArr);
            i4 = Math.max(i4, this.b.getMeasuredHeight() + c(this.b));
            i5 = View.combineMeasuredStates(i5, this.b.getMeasuredState());
        }
        if (a(this.i)) {
            max2 += a(this.i, i, max2, i2, 0, iArr);
            i4 = Math.max(i4, this.i.getMeasuredHeight() + c(this.i));
            i5 = View.combineMeasuredStates(i5, this.i.getMeasuredState());
        }
        int childCount = getChildCount();
        int i10 = i4;
        int i11 = max2;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (((b) childAt.getLayoutParams()).b == 0 && a(childAt)) {
                i11 += a(childAt, i, i11, i2, 0, iArr);
                i10 = Math.max(i10, childAt.getMeasuredHeight() + c(childAt));
                i5 = View.combineMeasuredStates(i5, childAt.getMeasuredState());
            }
        }
        int i13 = this.s + this.t;
        int i14 = this.q + this.r;
        if (a(this.f)) {
            a(this.f, i, i11 + i14, i2, i13, iArr);
            int measuredWidth = this.f.getMeasuredWidth() + b(this.f);
            i7 = this.f.getMeasuredHeight() + c(this.f);
            i8 = View.combineMeasuredStates(i5, this.f.getMeasuredState());
            i9 = measuredWidth;
        } else {
            i7 = 0;
            i8 = i5;
            i9 = 0;
        }
        if (a(this.g)) {
            i9 = Math.max(i9, a(this.g, i, i11 + i14, i2, i7 + i13, iArr));
            i7 += this.g.getMeasuredHeight() + c(this.g);
            i8 = View.combineMeasuredStates(i8, this.g.getMeasuredState());
        }
        int max3 = Math.max(i10, i7);
        int paddingLeft = i11 + i9 + getPaddingLeft() + getPaddingRight();
        int paddingTop = max3 + getPaddingTop() + getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i, (-16777216) & i8);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, i8 << 16);
        if (r()) {
            resolveSizeAndState2 = 0;
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x02aa A[LOOP:0: B:104:0x02a8->B:105:0x02aa, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02cc A[LOOP:1: B:107:0x02ca->B:108:0x02cc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0306 A[LOOP:2: B:116:0x0304->B:117:0x0306, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x022b  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onLayout(boolean r25, int r26, int r27, int r28, int r29) {
        /*
            Method dump skipped, instructions count: 795
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    private int a(List<View> list, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int size = list.size();
        int i3 = 0;
        int i4 = i2;
        int i5 = 0;
        while (i5 < size) {
            View view = list.get(i5);
            b bVar = (b) view.getLayoutParams();
            int i6 = bVar.leftMargin - i;
            int i7 = bVar.rightMargin - i4;
            int max = Math.max(0, i6);
            int max2 = Math.max(0, i7);
            int max3 = Math.max(0, -i6);
            int max4 = Math.max(0, -i7);
            i3 += max + view.getMeasuredWidth() + max2;
            i5++;
            i4 = max4;
            i = max3;
        }
        return i3;
    }

    private int a(View view, int i, int[] iArr, int i2) {
        b bVar = (b) view.getLayoutParams();
        int i3 = bVar.leftMargin - iArr[0];
        int max = i + Math.max(0, i3);
        iArr[0] = Math.max(0, -i3);
        int a2 = a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, a2, max + measuredWidth, view.getMeasuredHeight() + a2);
        return max + measuredWidth + bVar.rightMargin;
    }

    private int b(View view, int i, int[] iArr, int i2) {
        b bVar = (b) view.getLayoutParams();
        int i3 = bVar.rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int a2 = a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, a2, max, view.getMeasuredHeight() + a2);
        return max - (measuredWidth + bVar.leftMargin);
    }

    private int a(View view, int i) {
        b bVar = (b) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int b2 = b(bVar.a);
        if (b2 != 48) {
            if (b2 == 80) {
                return (((getHeight() - getPaddingBottom()) - measuredHeight) - bVar.bottomMargin) - i2;
            }
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int height = getHeight();
            int i3 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
            if (i3 < bVar.topMargin) {
                i3 = bVar.topMargin;
            } else {
                int i4 = (((height - paddingBottom) - measuredHeight) - i3) - paddingTop;
                if (i4 < bVar.bottomMargin) {
                    i3 = Math.max(0, i3 - (bVar.bottomMargin - i4));
                }
            }
            return paddingTop + i3;
        }
        return getPaddingTop() - i2;
    }

    private int b(int i) {
        int i2 = i & 112;
        return (i2 == 16 || i2 == 48 || i2 == 80) ? i2 : this.x & 112;
    }

    private void a(List<View> list, int i) {
        boolean z = androidx.core.g.t.b(this) == 1;
        int childCount = getChildCount();
        int a2 = androidx.core.g.d.a(i, androidx.core.g.t.b(this));
        list.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                b bVar = (b) childAt.getLayoutParams();
                if (bVar.b == 0 && a(childAt) && c(bVar.a) == a2) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            View childAt2 = getChildAt(i3);
            b bVar2 = (b) childAt2.getLayoutParams();
            if (bVar2.b == 0 && a(childAt2) && c(bVar2.a) == a2) {
                list.add(childAt2);
            }
        }
    }

    private int c(int i) {
        int b2 = androidx.core.g.t.b(this);
        int a2 = androidx.core.g.d.a(i, b2) & 7;
        return (a2 == 1 || a2 == 3 || a2 == 5) ? a2 : b2 == 1 ? 5 : 3;
    }

    private boolean a(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    private int b(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return androidx.core.g.g.a(marginLayoutParams) + androidx.core.g.g.b(marginLayoutParams);
    }

    private int c(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    @Override // android.view.ViewGroup
    /* renamed from: a */
    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: a */
    public b generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof b) {
            return new b((b) layoutParams);
        }
        if (layoutParams instanceof a.C0012a) {
            return new b((a.C0012a) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new b((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new b(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: j */
    public b generateDefaultLayoutParams() {
        return new b(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof b);
    }

    public ae getWrapper() {
        if (this.I == null) {
            this.I = new ay(this, true);
        }
        return this.I;
    }

    void k() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((b) childAt.getLayoutParams()).b != 2 && childAt != this.e) {
                removeViewAt(childCount);
                this.F.add(childAt);
            }
        }
    }

    void l() {
        for (int size = this.F.size() - 1; size >= 0; size--) {
            addView(this.F.get(size));
        }
        this.F.clear();
    }

    private boolean d(View view) {
        return view.getParent() == this || this.F.contains(view);
    }

    public void setCollapsible(boolean z) {
        this.N = z;
        requestLayout();
    }

    public void a(m.a aVar, g.a aVar2) {
        this.L = aVar;
        this.M = aVar2;
        if (this.e != null) {
            this.e.a(aVar, aVar2);
        }
    }

    private void s() {
        if (this.u == null) {
            this.u = new ap();
        }
    }

    final TextView getTitleTextView() {
        return this.f;
    }

    final TextView getSubtitleTextView() {
        return this.g;
    }

    androidx.appcompat.widget.c getOuterActionMenuPresenter() {
        return this.J;
    }

    Context getPopupContext() {
        return this.l;
    }

    /* loaded from: classes.dex */
    public static class b extends a.C0012a {
        int b;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.b = 0;
        }

        public b(int i, int i2) {
            super(i, i2);
            this.b = 0;
            this.a = 8388627;
        }

        public b(b bVar) {
            super((a.C0012a) bVar);
            this.b = 0;
            this.b = bVar.b;
        }

        public b(a.C0012a c0012a) {
            super(c0012a);
            this.b = 0;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.b = 0;
            a(marginLayoutParams);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.b = 0;
        }

        void a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
        }
    }

    /* loaded from: classes.dex */
    public static class d extends androidx.customview.a.a {
        public static final Parcelable.Creator<d> CREATOR = new Parcelable.ClassLoaderCreator<d>() { // from class: androidx.appcompat.widget.Toolbar.d.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: a */
            public d createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new d(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public d createFromParcel(Parcel parcel) {
                return new d(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public d[] newArray(int i) {
                return new d[i];
            }
        };
        int a;
        boolean b;

        public d(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.a = parcel.readInt();
            this.b = parcel.readInt() != 0;
        }

        public d(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a);
            parcel.writeInt(this.b ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements androidx.appcompat.view.menu.m {
        androidx.appcompat.view.menu.g a;
        androidx.appcompat.view.menu.i b;

        @Override // androidx.appcompat.view.menu.m
        public void a(androidx.appcompat.view.menu.g gVar, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.m
        public void a(m.a aVar) {
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean a(androidx.appcompat.view.menu.r rVar) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean b() {
            return false;
        }

        a() {
        }

        @Override // androidx.appcompat.view.menu.m
        public void a(Context context, androidx.appcompat.view.menu.g gVar) {
            if (this.a != null && this.b != null) {
                this.a.d(this.b);
            }
            this.a = gVar;
        }

        @Override // androidx.appcompat.view.menu.m
        public void a(boolean z) {
            if (this.b != null) {
                boolean z2 = false;
                if (this.a != null) {
                    int size = this.a.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        } else if (this.a.getItem(i) == this.b) {
                            z2 = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                if (z2) {
                    return;
                }
                b(this.a, this.b);
            }
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean a(androidx.appcompat.view.menu.g gVar, androidx.appcompat.view.menu.i iVar) {
            Toolbar.this.i();
            ViewParent parent = Toolbar.this.a.getParent();
            if (parent != Toolbar.this) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(Toolbar.this.a);
                }
                Toolbar.this.addView(Toolbar.this.a);
            }
            Toolbar.this.b = iVar.getActionView();
            this.b = iVar;
            ViewParent parent2 = Toolbar.this.b.getParent();
            if (parent2 != Toolbar.this) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(Toolbar.this.b);
                }
                b generateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                generateDefaultLayoutParams.a = 8388611 | (Toolbar.this.c & 112);
                generateDefaultLayoutParams.b = 2;
                Toolbar.this.b.setLayoutParams(generateDefaultLayoutParams);
                Toolbar.this.addView(Toolbar.this.b);
            }
            Toolbar.this.k();
            Toolbar.this.requestLayout();
            iVar.e(true);
            if (Toolbar.this.b instanceof androidx.appcompat.view.c) {
                ((androidx.appcompat.view.c) Toolbar.this.b).a();
            }
            return true;
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean b(androidx.appcompat.view.menu.g gVar, androidx.appcompat.view.menu.i iVar) {
            if (Toolbar.this.b instanceof androidx.appcompat.view.c) {
                ((androidx.appcompat.view.c) Toolbar.this.b).b();
            }
            Toolbar.this.removeView(Toolbar.this.b);
            Toolbar.this.removeView(Toolbar.this.a);
            Toolbar.this.b = null;
            Toolbar.this.l();
            this.b = null;
            Toolbar.this.requestLayout();
            iVar.e(false);
            return true;
        }
    }
}
