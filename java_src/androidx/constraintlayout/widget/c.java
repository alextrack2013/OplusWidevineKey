package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Arrays;
import java.util.HashMap;
/* compiled from: ConstraintHelper.java */
/* loaded from: classes.dex */
public abstract class c extends View {
    protected int[] a;
    protected int b;
    protected Context c;
    protected androidx.constraintlayout.b.a.i d;
    protected boolean e;
    protected String f;
    protected String g;
    private View[] h;
    private HashMap<Integer, String> i;

    public void a(androidx.constraintlayout.b.a.e eVar, boolean z) {
    }

    public void c(ConstraintLayout constraintLayout) {
    }

    public void d(ConstraintLayout constraintLayout) {
    }

    public void e(ConstraintLayout constraintLayout) {
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    public c(Context context) {
        super(context);
        this.a = new int[32];
        this.e = false;
        this.h = null;
        this.i = new HashMap<>();
        this.c = context;
        a((AttributeSet) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == R.styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    this.f = obtainStyledAttributes.getString(index);
                    setIds(this.f);
                } else if (index == R.styleable.ConstraintLayout_Layout_constraint_referenced_tags) {
                    this.g = obtainStyledAttributes.getString(index);
                    setReferenceTags(this.g);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f != null) {
            setIds(this.f);
        }
        if (this.g != null) {
            setReferenceTags(this.g);
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.a, this.b);
    }

    public void setReferencedIds(int[] iArr) {
        this.f = null;
        this.b = 0;
        for (int i : iArr) {
            a(i);
        }
    }

    private void a(int i) {
        if (i == getId()) {
            return;
        }
        if (this.b + 1 > this.a.length) {
            this.a = Arrays.copyOf(this.a, this.a.length * 2);
        }
        this.a[this.b] = i;
        this.b++;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.e) {
            super.onMeasure(i, i2);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public void b() {
        if (this.d == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.a) {
            ((ConstraintLayout.a) layoutParams).an = (androidx.constraintlayout.b.a.e) this.d;
        }
    }

    private void a(String str) {
        if (str == null || str.length() == 0 || this.c == null) {
            return;
        }
        String trim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
            ConstraintLayout constraintLayout = (ConstraintLayout) getParent();
        }
        int c = c(trim);
        if (c != 0) {
            this.i.put(Integer.valueOf(c), trim);
            a(c);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + trim + "\"");
    }

    private void b(String str) {
        if (str == null || str.length() == 0 || this.c == null) {
            return;
        }
        String trim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            Log.w("ConstraintHelper", "Parent not a ConstraintLayout");
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof ConstraintLayout.a) && trim.equals(((ConstraintLayout.a) layoutParams).V)) {
                if (childAt.getId() == -1) {
                    Log.w("ConstraintHelper", "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID");
                } else {
                    a(childAt.getId());
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int c(java.lang.String r6) {
        /*
            r5 = this;
            android.view.ViewParent r0 = r5.getParent()
            boolean r0 = r0 instanceof androidx.constraintlayout.widget.ConstraintLayout
            r1 = 0
            if (r0 == 0) goto L10
            android.view.ViewParent r0 = r5.getParent()
            androidx.constraintlayout.widget.ConstraintLayout r0 = (androidx.constraintlayout.widget.ConstraintLayout) r0
            goto L11
        L10:
            r0 = r1
        L11:
            boolean r2 = r5.isInEditMode()
            r3 = 0
            if (r2 == 0) goto L28
            if (r0 == 0) goto L28
            java.lang.Object r2 = r0.a(r3, r6)
            boolean r4 = r2 instanceof java.lang.Integer
            if (r4 == 0) goto L28
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r3 = r2.intValue()
        L28:
            if (r3 != 0) goto L30
            if (r0 == 0) goto L30
            int r3 = r5.a(r0, r6)
        L30:
            if (r3 != 0) goto L3d
            java.lang.Class<androidx.constraintlayout.widget.R$id> r0 = androidx.constraintlayout.widget.R.id.class
            java.lang.reflect.Field r0 = r0.getField(r6)     // Catch: java.lang.Exception -> L3d
            int r0 = r0.getInt(r1)     // Catch: java.lang.Exception -> L3d
            goto L3e
        L3d:
            r0 = r3
        L3e:
            if (r0 != 0) goto L52
            android.content.Context r0 = r5.c
            android.content.res.Resources r0 = r0.getResources()
            java.lang.String r1 = "id"
            android.content.Context r5 = r5.c
            java.lang.String r5 = r5.getPackageName()
            int r0 = r0.getIdentifier(r6, r1, r5)
        L52:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.c.c(java.lang.String):int");
    }

    private int a(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        if (str == null || constraintLayout == null || (resources = this.c.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            if (childAt.getId() != -1) {
                String str2 = null;
                try {
                    str2 = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                }
                if (str.equals(str2)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    protected void setIds(String str) {
        this.f = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.b = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                a(str.substring(i));
                return;
            } else {
                a(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    protected void setReferenceTags(String str) {
        this.g = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.b = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                b(str.substring(i));
                return;
            } else {
                b(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    protected void a(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
        for (int i = 0; i < this.b; i++) {
            View b = constraintLayout.b(this.a[i]);
            if (b != null) {
                b.setVisibility(visibility);
                if (elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                    b.setTranslationZ(b.getTranslationZ() + elevation);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        a((ConstraintLayout) parent);
    }

    public void b(ConstraintLayout constraintLayout) {
        String str;
        int a;
        if (isInEditMode()) {
            setIds(this.f);
        }
        if (this.d == null) {
            return;
        }
        this.d.j();
        for (int i = 0; i < this.b; i++) {
            int i2 = this.a[i];
            View b = constraintLayout.b(i2);
            if (b == null && (a = a(constraintLayout, (str = this.i.get(Integer.valueOf(i2))))) != 0) {
                this.a[i] = a;
                this.i.put(Integer.valueOf(a), str);
                b = constraintLayout.b(a);
            }
            if (b != null) {
                this.d.a(constraintLayout.a(b));
            }
        }
        this.d.a(constraintLayout.b);
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        super.setTag(i, obj);
        if (obj == null && this.f == null) {
            a(i);
        }
    }
}
