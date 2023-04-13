package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.core.a.a.c;
import androidx.core.d.b;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TypefaceCompatBaseImpl.java */
/* loaded from: classes.dex */
public class j {
    private ConcurrentHashMap<Long, c.b> a = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TypefaceCompatBaseImpl.java */
    /* loaded from: classes.dex */
    public interface a<T> {
        boolean a(T t);

        int b(T t);
    }

    private static <T> T a(T[] tArr, int i, a<T> aVar) {
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        int i3 = Integer.MAX_VALUE;
        T t = null;
        for (T t2 : tArr) {
            int abs = (Math.abs(aVar.b(t2) - i2) * 2) + (aVar.a(t2) == z ? 0 : 1);
            if (t == null || i3 > abs) {
                t = t2;
                i3 = abs;
            }
        }
        return t;
    }

    private static long b(Typeface typeface) {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException e) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e);
            return 0L;
        } catch (NoSuchFieldException e2) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e2);
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b.C0027b a(b.C0027b[] c0027bArr, int i) {
        return (b.C0027b) a(c0027bArr, i, new a<b.C0027b>() { // from class: androidx.core.graphics.j.1
            @Override // androidx.core.graphics.j.a
            /* renamed from: a  reason: avoid collision after fix types in other method */
            public int b(b.C0027b c0027b) {
                return c0027b.c();
            }

            @Override // androidx.core.graphics.j.a
            /* renamed from: b  reason: avoid collision after fix types in other method */
            public boolean a(b.C0027b c0027b) {
                return c0027b.d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Typeface a(Context context, InputStream inputStream) {
        File a2 = k.a(context);
        if (a2 == null) {
            return null;
        }
        try {
            if (k.a(a2, inputStream)) {
                return Typeface.createFromFile(a2.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            a2.delete();
        }
    }

    public Typeface a(Context context, CancellationSignal cancellationSignal, b.C0027b[] c0027bArr, int i) {
        InputStream inputStream;
        InputStream inputStream2 = null;
        if (c0027bArr.length < 1) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(a(c0027bArr, i).a());
        } catch (IOException unused) {
            inputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            Typeface a2 = a(context, inputStream);
            k.a(inputStream);
            return a2;
        } catch (IOException unused2) {
            k.a(inputStream);
            return null;
        } catch (Throwable th2) {
            th = th2;
            inputStream2 = inputStream;
            k.a(inputStream2);
            throw th;
        }
    }

    private c.C0023c a(c.b bVar, int i) {
        return (c.C0023c) a(bVar.a(), i, new a<c.C0023c>() { // from class: androidx.core.graphics.j.2
            @Override // androidx.core.graphics.j.a
            /* renamed from: a  reason: avoid collision after fix types in other method */
            public int b(c.C0023c c0023c) {
                return c0023c.b();
            }

            @Override // androidx.core.graphics.j.a
            /* renamed from: b  reason: avoid collision after fix types in other method */
            public boolean a(c.C0023c c0023c) {
                return c0023c.c();
            }
        });
    }

    public Typeface a(Context context, c.b bVar, Resources resources, int i) {
        c.C0023c a2 = a(bVar, i);
        if (a2 == null) {
            return null;
        }
        Typeface a3 = d.a(context, resources, a2.f(), a2.a(), i);
        a(a3, bVar);
        return a3;
    }

    public Typeface a(Context context, Resources resources, int i, String str, int i2) {
        File a2 = k.a(context);
        if (a2 == null) {
            return null;
        }
        try {
            if (k.a(a2, resources, i)) {
                return Typeface.createFromFile(a2.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            a2.delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c.b a(Typeface typeface) {
        long b = b(typeface);
        if (b == 0) {
            return null;
        }
        return this.a.get(Long.valueOf(b));
    }

    private void a(Typeface typeface, c.b bVar) {
        long b = b(typeface);
        if (b != 0) {
            this.a.put(Long.valueOf(b), bVar);
        }
    }
}
