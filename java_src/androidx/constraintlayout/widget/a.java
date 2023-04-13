package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
/* compiled from: Barrier.java */
/* loaded from: classes.dex */
public class a extends c {
    private int h;
    private int i;
    private androidx.constraintlayout.b.a.a j;

    public a(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public int getType() {
        return this.h;
    }

    public void setType(int i) {
        this.h = i;
    }

    private void a(androidx.constraintlayout.b.a.e eVar, int i, boolean z) {
        this.i = i;
        if (Build.VERSION.SDK_INT < 17) {
            if (this.h == 5) {
                this.i = 0;
            } else if (this.h == 6) {
                this.i = 1;
            }
        } else if (z) {
            if (this.h == 5) {
                this.i = 1;
            } else if (this.h == 6) {
                this.i = 0;
            }
        } else if (this.h == 5) {
            this.i = 0;
        } else if (this.h == 6) {
            this.i = 1;
        }
        if (eVar instanceof androidx.constraintlayout.b.a.a) {
            ((androidx.constraintlayout.b.a.a) eVar).a(this.i);
        }
    }

    @Override // androidx.constraintlayout.widget.c
    public void a(androidx.constraintlayout.b.a.e eVar, boolean z) {
        a(eVar, this.h, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.c
    public void a(AttributeSet attributeSet) {
        super.a(attributeSet);
        this.j = new androidx.constraintlayout.b.a.a();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == R.styleable.ConstraintLayout_Layout_barrierDirection) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.j.a(obtainStyledAttributes.getBoolean(index, true));
                } else if (index == R.styleable.ConstraintLayout_Layout_barrierMargin) {
                    this.j.b(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.d = this.j;
        b();
    }

    public void setAllowsGoneWidget(boolean z) {
        this.j.a(z);
    }

    public boolean a() {
        return this.j.c();
    }

    public void setDpMargin(int i) {
        androidx.constraintlayout.b.a.a aVar = this.j;
        aVar.b((int) ((i * getResources().getDisplayMetrics().density) + 0.5f));
    }

    public int getMargin() {
        return this.j.g();
    }

    public void setMargin(int i) {
        this.j.b(i);
    }
}
