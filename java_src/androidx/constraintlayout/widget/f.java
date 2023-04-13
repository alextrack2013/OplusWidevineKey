package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
/* compiled from: Constraints.java */
/* loaded from: classes.dex */
public class f extends ViewGroup {
    e a;

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.ViewGroup
    /* renamed from: a */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    /* compiled from: Constraints.java */
    /* loaded from: classes.dex */
    public static class a extends ConstraintLayout.a {
        public float aA;
        public float aB;
        public float ap;
        public boolean aq;
        public float ar;
        public float as;
        public float at;
        public float au;
        public float av;
        public float aw;
        public float ax;
        public float ay;
        public float az;

        public a(int i, int i2) {
            super(i, i2);
            this.ap = 1.0f;
            this.aq = false;
            this.ar = 0.0f;
            this.as = 0.0f;
            this.at = 0.0f;
            this.au = 0.0f;
            this.av = 1.0f;
            this.aw = 1.0f;
            this.ax = 0.0f;
            this.ay = 0.0f;
            this.az = 0.0f;
            this.aA = 0.0f;
            this.aB = 0.0f;
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.ap = 1.0f;
            this.aq = false;
            this.ar = 0.0f;
            this.as = 0.0f;
            this.at = 0.0f;
            this.au = 0.0f;
            this.av = 1.0f;
            this.aw = 1.0f;
            this.ax = 0.0f;
            this.ay = 0.0f;
            this.az = 0.0f;
            this.aA = 0.0f;
            this.aB = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ConstraintSet);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == R.styleable.ConstraintSet_android_alpha) {
                    this.ap = obtainStyledAttributes.getFloat(index, this.ap);
                } else if (index == R.styleable.ConstraintSet_android_elevation) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        this.ar = obtainStyledAttributes.getFloat(index, this.ar);
                        this.aq = true;
                    }
                } else if (index == R.styleable.ConstraintSet_android_rotationX) {
                    this.at = obtainStyledAttributes.getFloat(index, this.at);
                } else if (index == R.styleable.ConstraintSet_android_rotationY) {
                    this.au = obtainStyledAttributes.getFloat(index, this.au);
                } else if (index == R.styleable.ConstraintSet_android_rotation) {
                    this.as = obtainStyledAttributes.getFloat(index, this.as);
                } else if (index == R.styleable.ConstraintSet_android_scaleX) {
                    this.av = obtainStyledAttributes.getFloat(index, this.av);
                } else if (index == R.styleable.ConstraintSet_android_scaleY) {
                    this.aw = obtainStyledAttributes.getFloat(index, this.aw);
                } else if (index == R.styleable.ConstraintSet_android_transformPivotX) {
                    this.ax = obtainStyledAttributes.getFloat(index, this.ax);
                } else if (index == R.styleable.ConstraintSet_android_transformPivotY) {
                    this.ay = obtainStyledAttributes.getFloat(index, this.ay);
                } else if (index == R.styleable.ConstraintSet_android_translationX) {
                    this.az = obtainStyledAttributes.getFloat(index, this.az);
                } else if (index == R.styleable.ConstraintSet_android_translationY) {
                    this.aA = obtainStyledAttributes.getFloat(index, this.aA);
                } else if (index == R.styleable.ConstraintSet_android_translationZ && Build.VERSION.SDK_INT >= 21) {
                    this.aB = obtainStyledAttributes.getFloat(index, this.aB);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: a */
    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.a(layoutParams);
    }

    public e getConstraintSet() {
        if (this.a == null) {
            this.a = new e();
        }
        this.a.a(this);
        return this.a;
    }
}
