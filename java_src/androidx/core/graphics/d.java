package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.core.a.a.c;
import androidx.core.a.a.f;
import androidx.core.d.b;
/* compiled from: TypefaceCompat.java */
@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class d {
    private static final j a;
    private static final androidx.b.e<String, Typeface> b;

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            a = new i();
        } else if (Build.VERSION.SDK_INT >= 28) {
            a = new h();
        } else if (Build.VERSION.SDK_INT >= 26) {
            a = new g();
        } else if (Build.VERSION.SDK_INT >= 24 && f.a()) {
            a = new f();
        } else if (Build.VERSION.SDK_INT >= 21) {
            a = new e();
        } else {
            a = new j();
        }
        b = new androidx.b.e<>(16);
    }

    public static Typeface a(Resources resources, int i, int i2) {
        return b.a((androidx.b.e<String, Typeface>) b(resources, i, i2));
    }

    private static String b(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }

    public static Typeface a(Context context, c.a aVar, Resources resources, int i, int i2, f.a aVar2, Handler handler, boolean z) {
        Typeface a2;
        if (aVar instanceof c.d) {
            c.d dVar = (c.d) aVar;
            boolean z2 = false;
            if (!z ? aVar2 == null : dVar.b() == 0) {
                z2 = true;
            }
            a2 = androidx.core.d.b.a(context, dVar.a(), aVar2, handler, z2, z ? dVar.c() : -1, i2);
        } else {
            a2 = a.a(context, (c.b) aVar, resources, i2);
            if (aVar2 != null) {
                if (a2 != null) {
                    aVar2.a(a2, handler);
                } else {
                    aVar2.a(-3, handler);
                }
            }
        }
        if (a2 != null) {
            b.a(b(resources, i, i2), a2);
        }
        return a2;
    }

    public static Typeface a(Context context, Resources resources, int i, String str, int i2) {
        Typeface a2 = a.a(context, resources, i, str, i2);
        if (a2 != null) {
            b.a(b(resources, i, i2), a2);
        }
        return a2;
    }

    public static Typeface a(Context context, CancellationSignal cancellationSignal, b.C0027b[] c0027bArr, int i) {
        return a.a(context, cancellationSignal, c0027bArr, i);
    }

    private static Typeface b(Context context, Typeface typeface, int i) {
        c.b a2 = a.a(typeface);
        if (a2 == null) {
            return null;
        }
        return a.a(context, a2, context.getResources(), i);
    }

    public static Typeface a(Context context, Typeface typeface, int i) {
        Typeface b2;
        if (context == null) {
            throw new IllegalArgumentException("Context cannot be null");
        }
        return (Build.VERSION.SDK_INT >= 21 || (b2 = b(context, typeface, i)) == null) ? Typeface.create(typeface, i) : b2;
    }
}
