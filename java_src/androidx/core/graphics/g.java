package androidx.core.graphics;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.core.a.a.c;
import androidx.core.d.b;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;
/* compiled from: TypefaceCompatApi26Impl.java */
/* loaded from: classes.dex */
public class g extends e {
    protected final Class<?> a;
    protected final Constructor<?> b;
    protected final Method c;
    protected final Method d;
    protected final Method e;
    protected final Method f;
    protected final Method g;

    public g() {
        Constructor<?> constructor;
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Class<?> cls = null;
        try {
            Class<?> a = a();
            constructor = a(a);
            method = b(a);
            method2 = c(a);
            method3 = d(a);
            method4 = e(a);
            method5 = f(a);
            cls = a;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + e.getClass().getName(), e);
            constructor = null;
            method = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        this.a = cls;
        this.b = constructor;
        this.c = method;
        this.d = method2;
        this.e = method3;
        this.f = method4;
        this.g = method5;
    }

    private boolean b() {
        if (this.c == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.c != null;
    }

    private Object c() {
        try {
            return this.b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    private boolean a(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.c.invoke(obj, context.getAssets(), str, 0, false, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private boolean a(Object obj, ByteBuffer byteBuffer, int i, int i2, int i3) {
        try {
            return ((Boolean) this.d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Integer.valueOf(i3))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    protected Typeface a(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.g.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    private boolean b(Object obj) {
        try {
            return ((Boolean) this.e.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private void c(Object obj) {
        try {
            this.f.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    @Override // androidx.core.graphics.e, androidx.core.graphics.j
    public Typeface a(Context context, c.b bVar, Resources resources, int i) {
        c.C0023c[] a;
        if (!b()) {
            return super.a(context, bVar, resources, i);
        }
        Object c = c();
        if (c == null) {
            return null;
        }
        for (c.C0023c c0023c : bVar.a()) {
            if (!a(context, c, c0023c.a(), c0023c.e(), c0023c.b(), c0023c.c() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(c0023c.d()))) {
                c(c);
                return null;
            }
        }
        if (b(c)) {
            return a(c);
        }
        return null;
    }

    @Override // androidx.core.graphics.e, androidx.core.graphics.j
    public Typeface a(Context context, CancellationSignal cancellationSignal, b.C0027b[] c0027bArr, int i) {
        Typeface a;
        if (c0027bArr.length < 1) {
            return null;
        }
        if (!b()) {
            b.C0027b a2 = a(c0027bArr, i);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(a2.a(), "r", cancellationSignal);
                if (openFileDescriptor == null) {
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return null;
                }
                Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(a2.c()).setItalic(a2.d()).build();
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return build;
            } catch (IOException unused) {
                return null;
            }
        }
        Map<Uri, ByteBuffer> a3 = androidx.core.d.b.a(context, c0027bArr, cancellationSignal);
        Object c = c();
        if (c == null) {
            return null;
        }
        boolean z = false;
        for (b.C0027b c0027b : c0027bArr) {
            ByteBuffer byteBuffer = a3.get(c0027b.a());
            if (byteBuffer != null) {
                if (!a(c, byteBuffer, c0027b.b(), c0027b.c(), c0027b.d() ? 1 : 0)) {
                    c(c);
                    return null;
                }
                z = true;
            }
        }
        if (!z) {
            c(c);
            return null;
        } else if (b(c) && (a = a(c)) != null) {
            return Typeface.create(a, i);
        } else {
            return null;
        }
    }

    @Override // androidx.core.graphics.j
    public Typeface a(Context context, Resources resources, int i, String str, int i2) {
        if (!b()) {
            return super.a(context, resources, i, str, i2);
        }
        Object c = c();
        if (c == null) {
            return null;
        }
        if (!a(context, c, str, 0, -1, -1, null)) {
            c(c);
            return null;
        } else if (b(c)) {
            return a(c);
        } else {
            return null;
        }
    }

    protected Class<?> a() {
        return Class.forName("android.graphics.FontFamily");
    }

    protected Constructor<?> a(Class<?> cls) {
        return cls.getConstructor(new Class[0]);
    }

    protected Method b(Class<?> cls) {
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, FontVariationAxis[].class);
    }

    protected Method c(Class<?> cls) {
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, Integer.TYPE, FontVariationAxis[].class, Integer.TYPE, Integer.TYPE);
    }

    protected Method d(Class<?> cls) {
        return cls.getMethod("freeze", new Class[0]);
    }

    protected Method e(Class<?> cls) {
        return cls.getMethod("abortCreation", new Class[0]);
    }

    protected Method f(Class<?> cls) {
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), Integer.TYPE, Integer.TYPE);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
