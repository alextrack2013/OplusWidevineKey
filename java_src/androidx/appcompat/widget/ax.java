package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.core.a.a.f;
/* compiled from: TintTypedArray.java */
/* loaded from: classes.dex */
public class ax {
    private final Context a;
    private final TypedArray b;
    private TypedValue c;

    public static ax a(Context context, AttributeSet attributeSet, int[] iArr) {
        return new ax(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static ax a(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new ax(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    public static ax a(Context context, int i, int[] iArr) {
        return new ax(context, context.obtainStyledAttributes(i, iArr));
    }

    private ax(Context context, TypedArray typedArray) {
        this.a = context;
        this.b = typedArray;
    }

    public TypedArray a() {
        return this.b;
    }

    public Drawable a(int i) {
        int resourceId;
        if (this.b.hasValue(i) && (resourceId = this.b.getResourceId(i, 0)) != 0) {
            return androidx.appcompat.a.a.a.b(this.a, resourceId);
        }
        return this.b.getDrawable(i);
    }

    public Drawable b(int i) {
        int resourceId;
        if (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0) {
            return null;
        }
        return k.b().a(this.a, resourceId, true);
    }

    public Typeface a(int i, int i2, f.a aVar) {
        int resourceId = this.b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.c == null) {
            this.c = new TypedValue();
        }
        return androidx.core.a.a.f.a(this.a, resourceId, this.c, i2, aVar);
    }

    public CharSequence c(int i) {
        return this.b.getText(i);
    }

    public String d(int i) {
        return this.b.getString(i);
    }

    public boolean a(int i, boolean z) {
        return this.b.getBoolean(i, z);
    }

    public int a(int i, int i2) {
        return this.b.getInt(i, i2);
    }

    public float a(int i, float f) {
        return this.b.getFloat(i, f);
    }

    public int b(int i, int i2) {
        return this.b.getColor(i, i2);
    }

    public ColorStateList e(int i) {
        int resourceId;
        ColorStateList a;
        return (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0 || (a = androidx.appcompat.a.a.a.a(this.a, resourceId)) == null) ? this.b.getColorStateList(i) : a;
    }

    public int c(int i, int i2) {
        return this.b.getInteger(i, i2);
    }

    public int d(int i, int i2) {
        return this.b.getDimensionPixelOffset(i, i2);
    }

    public int e(int i, int i2) {
        return this.b.getDimensionPixelSize(i, i2);
    }

    public int f(int i, int i2) {
        return this.b.getLayoutDimension(i, i2);
    }

    public int g(int i, int i2) {
        return this.b.getResourceId(i, i2);
    }

    public CharSequence[] f(int i) {
        return this.b.getTextArray(i);
    }

    public boolean g(int i) {
        return this.b.hasValue(i);
    }

    public void b() {
        this.b.recycle();
    }
}
