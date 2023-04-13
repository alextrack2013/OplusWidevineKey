package androidx.constraintlayout.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.b.a.a.b;
import androidx.constraintlayout.b.a.d;
import androidx.constraintlayout.b.a.e;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    SparseArray<View> a;
    protected androidx.constraintlayout.b.a.f b;
    protected boolean c;
    protected d d;
    int e;
    int f;
    int g;
    int h;
    b i;
    private ArrayList<c> j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private e p;
    private int q;
    private HashMap<String, Integer> r;
    private int s;
    private int t;
    private SparseArray<androidx.constraintlayout.b.a.e> u;
    private g v;
    private int w;
    private int x;

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public void a(int i, Object obj, Object obj2) {
        if (i == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.r == null) {
                this.r = new HashMap<>();
            }
            String str = (String) obj;
            int indexOf = str.indexOf("/");
            if (indexOf != -1) {
                str = str.substring(indexOf + 1);
            }
            this.r.put(str, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    public Object a(int i, Object obj) {
        if (i == 0 && (obj instanceof String)) {
            String str = (String) obj;
            if (this.r == null || !this.r.containsKey(str)) {
                return null;
            }
            return this.r.get(str);
        }
        return null;
    }

    public ConstraintLayout(Context context) {
        super(context);
        this.a = new SparseArray<>();
        this.j = new ArrayList<>(4);
        this.b = new androidx.constraintlayout.b.a.f();
        this.k = 0;
        this.l = 0;
        this.m = Integer.MAX_VALUE;
        this.n = Integer.MAX_VALUE;
        this.c = true;
        this.o = 257;
        this.p = null;
        this.d = null;
        this.q = -1;
        this.r = new HashMap<>();
        this.s = -1;
        this.t = -1;
        this.e = -1;
        this.f = -1;
        this.g = 0;
        this.h = 0;
        this.u = new SparseArray<>();
        this.i = new b(this);
        this.w = 0;
        this.x = 0;
        a((AttributeSet) null, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new SparseArray<>();
        this.j = new ArrayList<>(4);
        this.b = new androidx.constraintlayout.b.a.f();
        this.k = 0;
        this.l = 0;
        this.m = Integer.MAX_VALUE;
        this.n = Integer.MAX_VALUE;
        this.c = true;
        this.o = 257;
        this.p = null;
        this.d = null;
        this.q = -1;
        this.r = new HashMap<>();
        this.s = -1;
        this.t = -1;
        this.e = -1;
        this.f = -1;
        this.g = 0;
        this.h = 0;
        this.u = new SparseArray<>();
        this.i = new b(this);
        this.w = 0;
        this.x = 0;
        a(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new SparseArray<>();
        this.j = new ArrayList<>(4);
        this.b = new androidx.constraintlayout.b.a.f();
        this.k = 0;
        this.l = 0;
        this.m = Integer.MAX_VALUE;
        this.n = Integer.MAX_VALUE;
        this.c = true;
        this.o = 257;
        this.p = null;
        this.d = null;
        this.q = -1;
        this.r = new HashMap<>();
        this.s = -1;
        this.t = -1;
        this.e = -1;
        this.f = -1;
        this.g = 0;
        this.h = 0;
        this.u = new SparseArray<>();
        this.i = new b(this);
        this.w = 0;
        this.x = 0;
        a(attributeSet, i, 0);
    }

    @TargetApi(21)
    public ConstraintLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.a = new SparseArray<>();
        this.j = new ArrayList<>(4);
        this.b = new androidx.constraintlayout.b.a.f();
        this.k = 0;
        this.l = 0;
        this.m = Integer.MAX_VALUE;
        this.n = Integer.MAX_VALUE;
        this.c = true;
        this.o = 257;
        this.p = null;
        this.d = null;
        this.q = -1;
        this.r = new HashMap<>();
        this.s = -1;
        this.t = -1;
        this.e = -1;
        this.f = -1;
        this.g = 0;
        this.h = 0;
        this.u = new SparseArray<>();
        this.i = new b(this);
        this.w = 0;
        this.x = 0;
        a(attributeSet, i, i2);
    }

    @Override // android.view.View
    public void setId(int i) {
        this.a.remove(getId());
        super.setId(i);
        this.a.put(getId(), this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements b.InterfaceC0020b {
        ConstraintLayout a;
        int b;
        int c;
        int d;
        int e;
        int f;
        int g;

        public void a(int i, int i2, int i3, int i4, int i5, int i6) {
            this.b = i3;
            this.c = i4;
            this.d = i5;
            this.e = i6;
            this.f = i;
            this.g = i2;
        }

        public b(ConstraintLayout constraintLayout) {
            this.a = constraintLayout;
        }

        /* JADX WARN: Removed duplicated region for block: B:186:0x028d  */
        /* JADX WARN: Removed duplicated region for block: B:187:0x0294  */
        /* JADX WARN: Removed duplicated region for block: B:189:0x029a  */
        @Override // androidx.constraintlayout.b.a.a.b.InterfaceC0020b
        @android.annotation.SuppressLint({"WrongCall"})
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(androidx.constraintlayout.b.a.e r18, androidx.constraintlayout.b.a.a.b.a r19) {
            /*
                Method dump skipped, instructions count: 762
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.b.a(androidx.constraintlayout.b.a.e, androidx.constraintlayout.b.a.a.b$a):void");
        }

        private boolean a(int i, int i2, int i3) {
            if (i == i2) {
                return true;
            }
            int mode = View.MeasureSpec.getMode(i);
            View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (mode2 == 1073741824) {
                return (mode == Integer.MIN_VALUE || mode == 0) && i3 == size;
            }
            return false;
        }

        @Override // androidx.constraintlayout.b.a.a.b.InterfaceC0020b
        public final void a() {
            int childCount = this.a.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.a.getChildAt(i);
                if (childAt instanceof i) {
                    ((i) childAt).b(this.a);
                }
            }
            int size = this.a.j.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    ((c) this.a.j.get(i2)).d(this.a);
                }
            }
        }
    }

    private void a(AttributeSet attributeSet, int i, int i2) {
        this.b.a(this);
        this.b.a((b.InterfaceC0020b) this.i);
        this.a.put(getId(), this);
        this.p = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout, i, i2);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                if (index == R.styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.k = obtainStyledAttributes.getDimensionPixelOffset(index, this.k);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.l = obtainStyledAttributes.getDimensionPixelOffset(index, this.l);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.m = obtainStyledAttributes.getDimensionPixelOffset(index, this.m);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.n = obtainStyledAttributes.getDimensionPixelOffset(index, this.n);
                } else if (index == R.styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.o = obtainStyledAttributes.getInt(index, this.o);
                } else if (index == R.styleable.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            a(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.d = null;
                        }
                    }
                } else if (index == R.styleable.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        this.p = new e();
                        this.p.b(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.p = null;
                    }
                    this.q = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.b.a(this.o);
    }

    protected void a(int i) {
        this.d = new d(getContext(), this, i);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (Build.VERSION.SDK_INT < 14) {
            onViewAdded(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        super.removeView(view);
        if (Build.VERSION.SDK_INT < 14) {
            onViewRemoved(view);
        }
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        androidx.constraintlayout.b.a.e a2 = a(view);
        if ((view instanceof h) && !(a2 instanceof androidx.constraintlayout.b.a.h)) {
            a aVar = (a) view.getLayoutParams();
            aVar.an = new androidx.constraintlayout.b.a.h();
            aVar.Z = true;
            ((androidx.constraintlayout.b.a.h) aVar.an).a(aVar.S);
        }
        if (view instanceof c) {
            c cVar = (c) view;
            cVar.b();
            ((a) view.getLayoutParams()).aa = true;
            if (!this.j.contains(cVar)) {
                this.j.add(cVar);
            }
        }
        this.a.put(view.getId(), view);
        this.c = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.a.remove(view.getId());
        this.b.c(a(view));
        this.j.remove(view);
        this.c = true;
    }

    public void setMinWidth(int i) {
        if (i == this.k) {
            return;
        }
        this.k = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.l) {
            return;
        }
        this.l = i;
        requestLayout();
    }

    public int getMinWidth() {
        return this.k;
    }

    public int getMinHeight() {
        return this.l;
    }

    public void setMaxWidth(int i) {
        if (i == this.m) {
            return;
        }
        this.m = i;
        requestLayout();
    }

    public void setMaxHeight(int i) {
        if (i == this.n) {
            return;
        }
        this.n = i;
        requestLayout();
    }

    public int getMaxWidth() {
        return this.m;
    }

    public int getMaxHeight() {
        return this.n;
    }

    private boolean c() {
        int childCount = getChildCount();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            } else if (getChildAt(i).isLayoutRequested()) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            d();
        }
        return z;
    }

    private void d() {
        boolean isInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            androidx.constraintlayout.b.a.e a2 = a(getChildAt(i));
            if (a2 != null) {
                a2.s();
            }
        }
        if (isInEditMode) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    a(0, resourceName, Integer.valueOf(childAt.getId()));
                    int indexOf = resourceName.indexOf(47);
                    if (indexOf != -1) {
                        resourceName = resourceName.substring(indexOf + 1);
                    }
                    c(childAt.getId()).a(resourceName);
                } catch (Resources.NotFoundException unused) {
                }
            }
        }
        if (this.q != -1) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt2 = getChildAt(i3);
                if (childAt2.getId() == this.q && (childAt2 instanceof f)) {
                    this.p = ((f) childAt2).getConstraintSet();
                }
            }
        }
        if (this.p != null) {
            this.p.a(this, true);
        }
        this.b.ad();
        int size = this.j.size();
        if (size > 0) {
            for (int i4 = 0; i4 < size; i4++) {
                this.j.get(i4).b(this);
            }
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt3 = getChildAt(i5);
            if (childAt3 instanceof i) {
                ((i) childAt3).a(this);
            }
        }
        this.u.clear();
        this.u.put(0, this.b);
        this.u.put(getId(), this.b);
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt4 = getChildAt(i6);
            this.u.put(childAt4.getId(), a(childAt4));
        }
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt5 = getChildAt(i7);
            androidx.constraintlayout.b.a.e a3 = a(childAt5);
            if (a3 != null) {
                a aVar = (a) childAt5.getLayoutParams();
                this.b.b(a3);
                a(isInEditMode, childAt5, a3, aVar, this.u);
            }
        }
    }

    protected void a(boolean z, View view, androidx.constraintlayout.b.a.e eVar, a aVar, SparseArray<androidx.constraintlayout.b.a.e> sparseArray) {
        int i;
        int i2;
        int i3;
        float f;
        androidx.constraintlayout.b.a.e eVar2;
        androidx.constraintlayout.b.a.e eVar3;
        androidx.constraintlayout.b.a.e eVar4;
        androidx.constraintlayout.b.a.e eVar5;
        aVar.a();
        aVar.ao = false;
        eVar.j(view.getVisibility());
        if (aVar.ab) {
            eVar.d(true);
            eVar.j(8);
        }
        eVar.a(view);
        if (view instanceof c) {
            ((c) view).a(eVar, this.b.Y());
        }
        if (aVar.Z) {
            androidx.constraintlayout.b.a.h hVar = (androidx.constraintlayout.b.a.h) eVar;
            int i4 = aVar.ak;
            int i5 = aVar.al;
            float f2 = aVar.am;
            if (Build.VERSION.SDK_INT < 17) {
                i4 = aVar.a;
                i5 = aVar.b;
                f2 = aVar.c;
            }
            if (f2 != -1.0f) {
                hVar.e(f2);
                return;
            } else if (i4 != -1) {
                hVar.b(i4);
                return;
            } else if (i5 != -1) {
                hVar.y(i5);
                return;
            } else {
                return;
            }
        }
        int i6 = aVar.ad;
        int i7 = aVar.ae;
        int i8 = aVar.af;
        int i9 = aVar.ag;
        int i10 = aVar.ah;
        int i11 = aVar.ai;
        float f3 = aVar.aj;
        if (Build.VERSION.SDK_INT < 17) {
            i6 = aVar.d;
            i = aVar.e;
            int i12 = aVar.f;
            i9 = aVar.g;
            int i13 = aVar.t;
            int i14 = aVar.v;
            f3 = aVar.z;
            if (i6 == -1 && i == -1) {
                if (aVar.q != -1) {
                    i6 = aVar.q;
                } else if (aVar.p != -1) {
                    i = aVar.p;
                }
            }
            if (i12 == -1 && i9 == -1) {
                if (aVar.r != -1) {
                    i12 = aVar.r;
                } else if (aVar.s != -1) {
                    i9 = aVar.s;
                }
            }
            i3 = i12;
            i2 = i14;
            i10 = i13;
        } else {
            i = i7;
            i2 = i11;
            i3 = i8;
        }
        float f4 = f3;
        int i15 = i9;
        if (aVar.m != -1) {
            androidx.constraintlayout.b.a.e eVar6 = sparseArray.get(aVar.m);
            if (eVar6 != null) {
                eVar.a(eVar6, aVar.o, aVar.n);
            }
        } else {
            if (i6 != -1) {
                androidx.constraintlayout.b.a.e eVar7 = sparseArray.get(i6);
                if (eVar7 != null) {
                    f = f4;
                    eVar.a(d.a.LEFT, eVar7, d.a.LEFT, aVar.leftMargin, i10);
                } else {
                    f = f4;
                }
            } else {
                f = f4;
                if (i != -1 && (eVar2 = sparseArray.get(i)) != null) {
                    eVar.a(d.a.LEFT, eVar2, d.a.RIGHT, aVar.leftMargin, i10);
                }
            }
            if (i3 != -1) {
                androidx.constraintlayout.b.a.e eVar8 = sparseArray.get(i3);
                if (eVar8 != null) {
                    eVar.a(d.a.RIGHT, eVar8, d.a.LEFT, aVar.rightMargin, i2);
                }
            } else if (i15 != -1 && (eVar3 = sparseArray.get(i15)) != null) {
                eVar.a(d.a.RIGHT, eVar3, d.a.RIGHT, aVar.rightMargin, i2);
            }
            if (aVar.h != -1) {
                androidx.constraintlayout.b.a.e eVar9 = sparseArray.get(aVar.h);
                if (eVar9 != null) {
                    eVar.a(d.a.TOP, eVar9, d.a.TOP, aVar.topMargin, aVar.u);
                }
            } else if (aVar.i != -1 && (eVar4 = sparseArray.get(aVar.i)) != null) {
                eVar.a(d.a.TOP, eVar4, d.a.BOTTOM, aVar.topMargin, aVar.u);
            }
            if (aVar.j != -1) {
                androidx.constraintlayout.b.a.e eVar10 = sparseArray.get(aVar.j);
                if (eVar10 != null) {
                    eVar.a(d.a.BOTTOM, eVar10, d.a.TOP, aVar.bottomMargin, aVar.w);
                }
            } else if (aVar.k != -1 && (eVar5 = sparseArray.get(aVar.k)) != null) {
                eVar.a(d.a.BOTTOM, eVar5, d.a.BOTTOM, aVar.bottomMargin, aVar.w);
            }
            if (aVar.l != -1) {
                View view2 = this.a.get(aVar.l);
                androidx.constraintlayout.b.a.e eVar11 = sparseArray.get(aVar.l);
                if (eVar11 != null && view2 != null && (view2.getLayoutParams() instanceof a)) {
                    a aVar2 = (a) view2.getLayoutParams();
                    aVar.Y = true;
                    aVar2.Y = true;
                    eVar.a(d.a.BASELINE).a(eVar11.a(d.a.BASELINE), 0, -1, true);
                    eVar.c(true);
                    aVar2.an.c(true);
                    eVar.a(d.a.TOP).l();
                    eVar.a(d.a.BOTTOM).l();
                }
            }
            float f5 = f;
            if (f5 >= 0.0f) {
                eVar.a(f5);
            }
            if (aVar.A >= 0.0f) {
                eVar.b(aVar.A);
            }
        }
        if (z && (aVar.Q != -1 || aVar.R != -1)) {
            eVar.d(aVar.Q, aVar.R);
        }
        if (!aVar.W) {
            if (aVar.width == -1) {
                if (aVar.T) {
                    eVar.a(e.a.MATCH_CONSTRAINT);
                } else {
                    eVar.a(e.a.MATCH_PARENT);
                }
                eVar.a(d.a.LEFT).d = aVar.leftMargin;
                eVar.a(d.a.RIGHT).d = aVar.rightMargin;
            } else {
                eVar.a(e.a.MATCH_CONSTRAINT);
                eVar.o(0);
            }
        } else {
            eVar.a(e.a.FIXED);
            eVar.o(aVar.width);
            if (aVar.width == -2) {
                eVar.a(e.a.WRAP_CONTENT);
            }
        }
        if (!aVar.X) {
            if (aVar.height == -1) {
                if (aVar.U) {
                    eVar.b(e.a.MATCH_CONSTRAINT);
                } else {
                    eVar.b(e.a.MATCH_PARENT);
                }
                eVar.a(d.a.TOP).d = aVar.topMargin;
                eVar.a(d.a.BOTTOM).d = aVar.bottomMargin;
            } else {
                eVar.b(e.a.MATCH_CONSTRAINT);
                eVar.p(0);
            }
        } else {
            eVar.b(e.a.FIXED);
            eVar.p(aVar.height);
            if (aVar.height == -2) {
                eVar.b(e.a.WRAP_CONTENT);
            }
        }
        eVar.b(aVar.B);
        eVar.c(aVar.E);
        eVar.d(aVar.F);
        eVar.t(aVar.G);
        eVar.u(aVar.H);
        eVar.a(aVar.I, aVar.K, aVar.M, aVar.O);
        eVar.b(aVar.J, aVar.L, aVar.N, aVar.P);
    }

    private final androidx.constraintlayout.b.a.e c(int i) {
        if (i == 0) {
            return this.b;
        }
        View view = this.a.get(i);
        if (view == null && (view = findViewById(i)) != null && view != this && view.getParent() == this) {
            onViewAdded(view);
        }
        if (view == this) {
            return this.b;
        }
        if (view == null) {
            return null;
        }
        return ((a) view.getLayoutParams()).an;
    }

    public final androidx.constraintlayout.b.a.e a(View view) {
        if (view == this) {
            return this.b;
        }
        if (view == null) {
            return null;
        }
        return ((a) view.getLayoutParams()).an;
    }

    protected void a(androidx.constraintlayout.b.a.f fVar, int i, int i2, int i3) {
        int max;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int max2 = Math.max(0, getPaddingTop());
        int max3 = Math.max(0, getPaddingBottom());
        int i4 = max2 + max3;
        int paddingWidth = getPaddingWidth();
        this.i.a(i2, i3, max2, max3, paddingWidth, i4);
        if (Build.VERSION.SDK_INT >= 17) {
            int max4 = Math.max(0, getPaddingStart());
            int max5 = Math.max(0, getPaddingEnd());
            if (max4 > 0 || max5 > 0) {
                if (a()) {
                    max4 = max5;
                }
            } else {
                max4 = Math.max(0, getPaddingLeft());
            }
            max = max4;
        } else {
            max = Math.max(0, getPaddingLeft());
        }
        int i5 = size - paddingWidth;
        int i6 = size2 - i4;
        a(fVar, mode, i5, mode2, i6);
        fVar.a(i, mode, i5, mode2, i6, this.s, this.t, max, max2);
    }

    protected void a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        int i5 = this.i.e;
        int i6 = i3 + this.i.d;
        int i7 = i4 + i5;
        if (Build.VERSION.SDK_INT >= 11) {
            int resolveSizeAndState = resolveSizeAndState(i6, i, 0);
            int min = Math.min(this.m, resolveSizeAndState & 16777215);
            int min2 = Math.min(this.n, resolveSizeAndState(i7, i2, 0) & 16777215);
            if (z) {
                min |= 16777216;
            }
            if (z2) {
                min2 |= 16777216;
            }
            setMeasuredDimension(min, min2);
            this.s = min;
            this.t = min2;
            return;
        }
        setMeasuredDimension(i6, i7);
        this.s = i6;
        this.t = i7;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (!this.c) {
            int childCount = getChildCount();
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    break;
                } else if (getChildAt(i3).isLayoutRequested()) {
                    this.c = true;
                    break;
                } else {
                    i3++;
                }
            }
        }
        if (!this.c) {
            if (this.w == i && this.x == i2) {
                a(i, i2, this.b.A(), this.b.B(), this.b.i(), this.b.X());
                return;
            } else if (this.w == i && View.MeasureSpec.getMode(i) == 1073741824 && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && View.MeasureSpec.getMode(this.x) == Integer.MIN_VALUE && View.MeasureSpec.getSize(i2) >= this.b.B()) {
                this.w = i;
                this.x = i2;
                a(i, i2, this.b.A(), this.b.B(), this.b.i(), this.b.X());
                return;
            }
        }
        this.w = i;
        this.x = i2;
        this.b.g(a());
        if (this.c) {
            this.c = false;
            if (c()) {
                this.b.f();
            }
        }
        a(this.b, this.o, i, i2);
        a(i, i2, this.b.A(), this.b.B(), this.b.i(), this.b.X());
    }

    protected boolean a() {
        if (Build.VERSION.SDK_INT >= 17) {
            return ((getContext().getApplicationInfo().flags & 4194304) != 0) && 1 == getLayoutDirection();
        }
        return false;
    }

    private int getPaddingWidth() {
        int max = Math.max(0, getPaddingLeft()) + Math.max(0, getPaddingRight());
        int max2 = Build.VERSION.SDK_INT >= 17 ? Math.max(0, getPaddingStart()) + Math.max(0, getPaddingEnd()) : 0;
        return max2 > 0 ? max2 : max;
    }

    protected void a(androidx.constraintlayout.b.a.f fVar, int i, int i2, int i3, int i4) {
        int i5 = this.i.e;
        int i6 = this.i.d;
        e.a aVar = e.a.FIXED;
        e.a aVar2 = e.a.FIXED;
        int childCount = getChildCount();
        if (i == Integer.MIN_VALUE) {
            aVar = e.a.WRAP_CONTENT;
            if (childCount == 0) {
                i2 = Math.max(0, this.k);
            }
        } else if (i != 0) {
            if (i == 1073741824) {
                i2 = Math.min(this.m - i6, i2);
            }
            i2 = 0;
        } else {
            aVar = e.a.WRAP_CONTENT;
            if (childCount == 0) {
                i2 = Math.max(0, this.k);
            }
            i2 = 0;
        }
        if (i3 == Integer.MIN_VALUE) {
            aVar2 = e.a.WRAP_CONTENT;
            if (childCount == 0) {
                i4 = Math.max(0, this.l);
            }
        } else if (i3 != 0) {
            if (i3 == 1073741824) {
                i4 = Math.min(this.n - i5, i4);
            }
            i4 = 0;
        } else {
            aVar2 = e.a.WRAP_CONTENT;
            if (childCount == 0) {
                i4 = Math.max(0, this.l);
            }
            i4 = 0;
        }
        if (i2 != fVar.A() || i4 != fVar.B()) {
            fVar.c();
        }
        fVar.m(0);
        fVar.n(0);
        fVar.h(this.m - i6);
        fVar.i(this.n - i5);
        fVar.q(0);
        fVar.r(0);
        fVar.a(aVar);
        fVar.o(i2);
        fVar.b(aVar2);
        fVar.p(i4);
        fVar.q(this.k - i6);
        fVar.r(this.l - i5);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View content;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            a aVar = (a) childAt.getLayoutParams();
            androidx.constraintlayout.b.a.e eVar = aVar.an;
            if ((childAt.getVisibility() != 8 || aVar.Z || aVar.aa || aVar.ac || isInEditMode) && !aVar.ab) {
                int y = eVar.y();
                int z2 = eVar.z();
                int A = eVar.A() + y;
                int B = eVar.B() + z2;
                childAt.layout(y, z2, A, B);
                if ((childAt instanceof i) && (content = ((i) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(y, z2, A, B);
                }
            }
        }
        int size = this.j.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                this.j.get(i6).c(this);
            }
        }
    }

    public void setOptimizationLevel(int i) {
        this.o = i;
        this.b.a(i);
    }

    public int getOptimizationLevel() {
        return this.b.h();
    }

    @Override // android.view.ViewGroup
    /* renamed from: a */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: b */
    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    public void setConstraintSet(e eVar) {
        this.p = eVar;
    }

    public View b(int i) {
        return this.a.get(i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        if (this.j != null && (size = this.j.size()) > 0) {
            for (int i = 0; i < size; i++) {
                this.j.get(i).e(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int i3 = (int) ((parseInt / 1080.0f) * width);
                        int i4 = (int) ((parseInt2 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i3;
                        float f2 = i4;
                        float f3 = i3 + ((int) ((parseInt3 / 1080.0f) * width));
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float parseInt4 = i4 + ((int) ((Integer.parseInt(split[3]) / 1920.0f) * height));
                        canvas.drawLine(f3, f2, f3, parseInt4, paint);
                        canvas.drawLine(f3, parseInt4, f, parseInt4, paint);
                        canvas.drawLine(f, parseInt4, f, f2, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f2, f3, parseInt4, paint);
                        canvas.drawLine(f, parseInt4, f3, f2, paint);
                    }
                }
            }
        }
    }

    public void setOnConstraintsChanged(g gVar) {
        this.v = gVar;
        if (this.d != null) {
            this.d.a(gVar);
        }
    }

    /* loaded from: classes.dex */
    public static class a extends ViewGroup.MarginLayoutParams {
        public float A;
        public String B;
        float C;
        int D;
        public float E;
        public float F;
        public int G;
        public int H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public int N;
        public float O;
        public float P;
        public int Q;
        public int R;
        public int S;
        public boolean T;
        public boolean U;
        public String V;
        boolean W;
        boolean X;
        boolean Y;
        boolean Z;
        public int a;
        boolean aa;
        boolean ab;
        boolean ac;
        int ad;
        int ae;
        int af;
        int ag;
        int ah;
        int ai;
        float aj;
        int ak;
        int al;
        float am;
        androidx.constraintlayout.b.a.e an;
        public boolean ao;
        public int b;
        public float c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int l;
        public int m;
        public int n;
        public float o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;
        public int v;
        public int w;
        public int x;
        public int y;
        public float z;

        /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0021a {
            public static final SparseIntArray a = new SparseIntArray();

            static {
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                a.append(R.styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                a.append(R.styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                a.append(R.styleable.ConstraintLayout_Layout_android_orientation, 1);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                a.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                a.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                a.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                a.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                a.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                a.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                a.append(R.styleable.ConstraintLayout_Layout_layout_constraintTag, 51);
            }
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            int i;
            this.a = -1;
            this.b = -1;
            this.c = -1.0f;
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = 0.0f;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 0.0f;
            this.D = 1;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 1.0f;
            this.P = 1.0f;
            this.Q = -1;
            this.R = -1;
            this.S = -1;
            this.T = false;
            this.U = false;
            this.V = null;
            this.W = true;
            this.X = true;
            this.Y = false;
            this.Z = false;
            this.aa = false;
            this.ab = false;
            this.ac = false;
            this.ad = -1;
            this.ae = -1;
            this.af = -1;
            this.ag = -1;
            this.ah = -1;
            this.ai = -1;
            this.aj = 0.5f;
            this.an = new androidx.constraintlayout.b.a.e();
            this.ao = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                switch (C0021a.a.get(index)) {
                    case 1:
                        this.S = obtainStyledAttributes.getInt(index, this.S);
                        break;
                    case 2:
                        this.m = obtainStyledAttributes.getResourceId(index, this.m);
                        if (this.m == -1) {
                            this.m = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.n = obtainStyledAttributes.getDimensionPixelSize(index, this.n);
                        break;
                    case 4:
                        this.o = obtainStyledAttributes.getFloat(index, this.o) % 360.0f;
                        if (this.o < 0.0f) {
                            this.o = (360.0f - this.o) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.a = obtainStyledAttributes.getDimensionPixelOffset(index, this.a);
                        break;
                    case 6:
                        this.b = obtainStyledAttributes.getDimensionPixelOffset(index, this.b);
                        break;
                    case 7:
                        this.c = obtainStyledAttributes.getFloat(index, this.c);
                        break;
                    case 8:
                        this.d = obtainStyledAttributes.getResourceId(index, this.d);
                        if (this.d == -1) {
                            this.d = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        this.e = obtainStyledAttributes.getResourceId(index, this.e);
                        if (this.e == -1) {
                            this.e = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        this.f = obtainStyledAttributes.getResourceId(index, this.f);
                        if (this.f == -1) {
                            this.f = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        this.g = obtainStyledAttributes.getResourceId(index, this.g);
                        if (this.g == -1) {
                            this.g = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        this.h = obtainStyledAttributes.getResourceId(index, this.h);
                        if (this.h == -1) {
                            this.h = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        this.i = obtainStyledAttributes.getResourceId(index, this.i);
                        if (this.i == -1) {
                            this.i = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        this.j = obtainStyledAttributes.getResourceId(index, this.j);
                        if (this.j == -1) {
                            this.j = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        this.k = obtainStyledAttributes.getResourceId(index, this.k);
                        if (this.k == -1) {
                            this.k = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        this.l = obtainStyledAttributes.getResourceId(index, this.l);
                        if (this.l == -1) {
                            this.l = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        this.p = obtainStyledAttributes.getResourceId(index, this.p);
                        if (this.p == -1) {
                            this.p = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        this.q = obtainStyledAttributes.getResourceId(index, this.q);
                        if (this.q == -1) {
                            this.q = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        this.r = obtainStyledAttributes.getResourceId(index, this.r);
                        if (this.r == -1) {
                            this.r = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        this.s = obtainStyledAttributes.getResourceId(index, this.s);
                        if (this.s == -1) {
                            this.s = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.t = obtainStyledAttributes.getDimensionPixelSize(index, this.t);
                        break;
                    case 22:
                        this.u = obtainStyledAttributes.getDimensionPixelSize(index, this.u);
                        break;
                    case 23:
                        this.v = obtainStyledAttributes.getDimensionPixelSize(index, this.v);
                        break;
                    case 24:
                        this.w = obtainStyledAttributes.getDimensionPixelSize(index, this.w);
                        break;
                    case 25:
                        this.x = obtainStyledAttributes.getDimensionPixelSize(index, this.x);
                        break;
                    case 26:
                        this.y = obtainStyledAttributes.getDimensionPixelSize(index, this.y);
                        break;
                    case 27:
                        this.T = obtainStyledAttributes.getBoolean(index, this.T);
                        break;
                    case 28:
                        this.U = obtainStyledAttributes.getBoolean(index, this.U);
                        break;
                    case 29:
                        this.z = obtainStyledAttributes.getFloat(index, this.z);
                        break;
                    case 30:
                        this.A = obtainStyledAttributes.getFloat(index, this.A);
                        break;
                    case 31:
                        this.I = obtainStyledAttributes.getInt(index, 0);
                        if (this.I == 1) {
                            Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 32:
                        this.J = obtainStyledAttributes.getInt(index, 0);
                        if (this.J == 1) {
                            Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 33:
                        try {
                            this.K = obtainStyledAttributes.getDimensionPixelSize(index, this.K);
                            break;
                        } catch (Exception unused) {
                            if (obtainStyledAttributes.getInt(index, this.K) == -2) {
                                this.K = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.M = obtainStyledAttributes.getDimensionPixelSize(index, this.M);
                            break;
                        } catch (Exception unused2) {
                            if (obtainStyledAttributes.getInt(index, this.M) == -2) {
                                this.M = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.O = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.O));
                        this.I = 2;
                        break;
                    case 36:
                        try {
                            this.L = obtainStyledAttributes.getDimensionPixelSize(index, this.L);
                            break;
                        } catch (Exception unused3) {
                            if (obtainStyledAttributes.getInt(index, this.L) == -2) {
                                this.L = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.N = obtainStyledAttributes.getDimensionPixelSize(index, this.N);
                            break;
                        } catch (Exception unused4) {
                            if (obtainStyledAttributes.getInt(index, this.N) == -2) {
                                this.N = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.P = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.P));
                        this.J = 2;
                        break;
                    case 44:
                        this.B = obtainStyledAttributes.getString(index);
                        this.C = Float.NaN;
                        this.D = -1;
                        if (this.B != null) {
                            int length = this.B.length();
                            int indexOf = this.B.indexOf(44);
                            if (indexOf <= 0 || indexOf >= length - 1) {
                                i = 0;
                            } else {
                                String substring = this.B.substring(0, indexOf);
                                if (substring.equalsIgnoreCase("W")) {
                                    this.D = 0;
                                } else if (substring.equalsIgnoreCase("H")) {
                                    this.D = 1;
                                }
                                i = indexOf + 1;
                            }
                            int indexOf2 = this.B.indexOf(58);
                            if (indexOf2 >= 0 && indexOf2 < length - 1) {
                                String substring2 = this.B.substring(i, indexOf2);
                                String substring3 = this.B.substring(indexOf2 + 1);
                                if (substring2.length() > 0 && substring3.length() > 0) {
                                    try {
                                        float parseFloat = Float.parseFloat(substring2);
                                        float parseFloat2 = Float.parseFloat(substring3);
                                        if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                                            if (this.D == 1) {
                                                this.C = Math.abs(parseFloat2 / parseFloat);
                                                break;
                                            } else {
                                                this.C = Math.abs(parseFloat / parseFloat2);
                                                break;
                                            }
                                        }
                                    } catch (NumberFormatException unused5) {
                                        break;
                                    }
                                }
                            } else {
                                String substring4 = this.B.substring(i);
                                if (substring4.length() > 0) {
                                    this.C = Float.parseFloat(substring4);
                                    break;
                                } else {
                                    break;
                                }
                            }
                        } else {
                            break;
                        }
                        break;
                    case 45:
                        this.E = obtainStyledAttributes.getFloat(index, this.E);
                        break;
                    case 46:
                        this.F = obtainStyledAttributes.getFloat(index, this.F);
                        break;
                    case 47:
                        this.G = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 48:
                        this.H = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 49:
                        this.Q = obtainStyledAttributes.getDimensionPixelOffset(index, this.Q);
                        break;
                    case 50:
                        this.R = obtainStyledAttributes.getDimensionPixelOffset(index, this.R);
                        break;
                    case 51:
                        this.V = obtainStyledAttributes.getString(index);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
            a();
        }

        public void a() {
            this.Z = false;
            this.W = true;
            this.X = true;
            if (this.width == -2 && this.T) {
                this.W = false;
                if (this.I == 0) {
                    this.I = 1;
                }
            }
            if (this.height == -2 && this.U) {
                this.X = false;
                if (this.J == 0) {
                    this.J = 1;
                }
            }
            if (this.width == 0 || this.width == -1) {
                this.W = false;
                if (this.width == 0 && this.I == 1) {
                    this.width = -2;
                    this.T = true;
                }
            }
            if (this.height == 0 || this.height == -1) {
                this.X = false;
                if (this.height == 0 && this.J == 1) {
                    this.height = -2;
                    this.U = true;
                }
            }
            if (this.c == -1.0f && this.a == -1 && this.b == -1) {
                return;
            }
            this.Z = true;
            this.W = true;
            this.X = true;
            if (!(this.an instanceof androidx.constraintlayout.b.a.h)) {
                this.an = new androidx.constraintlayout.b.a.h();
            }
            ((androidx.constraintlayout.b.a.h) this.an).a(this.S);
        }

        public a(int i, int i2) {
            super(i, i2);
            this.a = -1;
            this.b = -1;
            this.c = -1.0f;
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = 0.0f;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 0.0f;
            this.D = 1;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 1.0f;
            this.P = 1.0f;
            this.Q = -1;
            this.R = -1;
            this.S = -1;
            this.T = false;
            this.U = false;
            this.V = null;
            this.W = true;
            this.X = true;
            this.Y = false;
            this.Z = false;
            this.aa = false;
            this.ab = false;
            this.ac = false;
            this.ad = -1;
            this.ae = -1;
            this.af = -1;
            this.ag = -1;
            this.ah = -1;
            this.ai = -1;
            this.aj = 0.5f;
            this.an = new androidx.constraintlayout.b.a.e();
            this.ao = false;
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = -1;
            this.b = -1;
            this.c = -1.0f;
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = 0.0f;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 0.0f;
            this.D = 1;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 1.0f;
            this.P = 1.0f;
            this.Q = -1;
            this.R = -1;
            this.S = -1;
            this.T = false;
            this.U = false;
            this.V = null;
            this.W = true;
            this.X = true;
            this.Y = false;
            this.Z = false;
            this.aa = false;
            this.ab = false;
            this.ac = false;
            this.ad = -1;
            this.ae = -1;
            this.af = -1;
            this.ag = -1;
            this.ah = -1;
            this.ai = -1;
            this.aj = 0.5f;
            this.an = new androidx.constraintlayout.b.a.e();
            this.ao = false;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x003f  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0056  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0070  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0078  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x008e  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0098  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00b2  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @android.annotation.TargetApi(17)
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void resolveLayoutDirection(int r7) {
            /*
                Method dump skipped, instructions count: 309
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.a.resolveLayoutDirection(int):void");
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        e();
        super.requestLayout();
    }

    @Override // android.view.View
    public void forceLayout() {
        e();
        super.forceLayout();
    }

    private void e() {
        this.c = true;
        this.s = -1;
        this.t = -1;
        this.e = -1;
        this.f = -1;
        this.g = 0;
        this.h = 0;
    }
}
