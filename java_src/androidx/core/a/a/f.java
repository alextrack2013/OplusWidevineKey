package androidx.core.a.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.TypedValue;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* compiled from: ResourcesCompat.java */
/* loaded from: classes.dex */
public final class f {
    public static Drawable a(Resources resources, int i, Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            return resources.getDrawable(i, theme);
        }
        return resources.getDrawable(i);
    }

    /* compiled from: ResourcesCompat.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract void a(int i);

        public abstract void a(Typeface typeface);

        public final void a(final Typeface typeface, Handler handler) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new Runnable() { // from class: androidx.core.a.a.f.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.a(typeface);
                }
            });
        }

        public final void a(final int i, Handler handler) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new Runnable() { // from class: androidx.core.a.a.f.a.2
                @Override // java.lang.Runnable
                public void run() {
                    a.this.a(i);
                }
            });
        }
    }

    public static Typeface a(Context context, int i, TypedValue typedValue, int i2, a aVar) {
        if (context.isRestricted()) {
            return null;
        }
        return a(context, i, typedValue, i2, aVar, null, true);
    }

    private static Typeface a(Context context, int i, TypedValue typedValue, int i2, a aVar, Handler handler, boolean z) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface a2 = a(context, resources, typedValue, i, i2, aVar, handler, z);
        if (a2 == null && aVar == null) {
            throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
        }
        return a2;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Typeface a(android.content.Context r14, android.content.res.Resources r15, android.util.TypedValue r16, int r17, int r18, androidx.core.a.a.f.a r19, android.os.Handler r20, boolean r21) {
        /*
            r3 = r15
            r1 = r16
            r4 = r17
            r5 = r18
            r9 = r19
            r10 = r20
            java.lang.CharSequence r2 = r1.string
            if (r2 != 0) goto L3e
            android.content.res.Resources$NotFoundException r2 = new android.content.res.Resources$NotFoundException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Resource \""
            r5.append(r6)
            java.lang.String r3 = r3.getResourceName(r4)
            r5.append(r3)
            java.lang.String r3 = "\" ("
            r5.append(r3)
            java.lang.String r3 = java.lang.Integer.toHexString(r17)
            r5.append(r3)
            java.lang.String r3 = ") is not a Font: "
            r5.append(r3)
            r5.append(r1)
            java.lang.String r1 = r5.toString()
            r2.<init>(r1)
            throw r2
        L3e:
            java.lang.CharSequence r1 = r1.string
            java.lang.String r11 = r1.toString()
            java.lang.String r1 = "res/"
            boolean r1 = r11.startsWith(r1)
            r12 = 0
            r13 = -3
            if (r1 != 0) goto L54
            if (r9 == 0) goto L53
            r9.a(r13, r10)
        L53:
            return r12
        L54:
            android.graphics.Typeface r1 = androidx.core.graphics.d.a(r3, r4, r5)
            if (r1 == 0) goto L60
            if (r9 == 0) goto L5f
            r9.a(r1, r10)
        L5f:
            return r1
        L60:
            java.lang.String r1 = r11.toLowerCase()     // Catch: java.io.IOException -> L9e org.xmlpull.v1.XmlPullParserException -> Lb7
            java.lang.String r2 = ".xml"
            boolean r1 = r1.endsWith(r2)     // Catch: java.io.IOException -> L9e org.xmlpull.v1.XmlPullParserException -> Lb7
            if (r1 == 0) goto L8d
            android.content.res.XmlResourceParser r1 = r3.getXml(r4)     // Catch: java.io.IOException -> L9e org.xmlpull.v1.XmlPullParserException -> Lb7
            androidx.core.a.a.c$a r2 = androidx.core.a.a.c.a(r1, r3)     // Catch: java.io.IOException -> L9e org.xmlpull.v1.XmlPullParserException -> Lb7
            if (r2 != 0) goto L83
            java.lang.String r1 = "ResourcesCompat"
            java.lang.String r2 = "Failed to find font-family tag"
            android.util.Log.e(r1, r2)     // Catch: java.io.IOException -> L9e org.xmlpull.v1.XmlPullParserException -> Lb7
            if (r9 == 0) goto L82
            r9.a(r13, r10)     // Catch: java.io.IOException -> L9e org.xmlpull.v1.XmlPullParserException -> Lb7
        L82:
            return r12
        L83:
            r1 = r14
            r6 = r9
            r7 = r10
            r8 = r21
            android.graphics.Typeface r1 = androidx.core.graphics.d.a(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.io.IOException -> L9e org.xmlpull.v1.XmlPullParserException -> Lb7
            return r1
        L8d:
            r1 = r14
            android.graphics.Typeface r1 = androidx.core.graphics.d.a(r1, r3, r4, r11, r5)     // Catch: java.io.IOException -> L9e org.xmlpull.v1.XmlPullParserException -> Lb7
            if (r9 == 0) goto L9d
            if (r1 == 0) goto L9a
            r9.a(r1, r10)     // Catch: java.io.IOException -> L9e org.xmlpull.v1.XmlPullParserException -> Lb7
            goto L9d
        L9a:
            r9.a(r13, r10)     // Catch: java.io.IOException -> L9e org.xmlpull.v1.XmlPullParserException -> Lb7
        L9d:
            return r1
        L9e:
            r0 = move-exception
            r1 = r0
            java.lang.String r2 = "ResourcesCompat"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Failed to read xml resource "
            r3.append(r4)
            r3.append(r11)
            java.lang.String r3 = r3.toString()
            android.util.Log.e(r2, r3, r1)
            goto Lcf
        Lb7:
            r0 = move-exception
            r1 = r0
            java.lang.String r2 = "ResourcesCompat"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Failed to parse xml resource "
            r3.append(r4)
            r3.append(r11)
            java.lang.String r3 = r3.toString()
            android.util.Log.e(r2, r3, r1)
        Lcf:
            if (r9 == 0) goto Ld4
            r9.a(r13, r10)
        Ld4:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.a.a.f.a(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, androidx.core.a.a.f$a, android.os.Handler, boolean):android.graphics.Typeface");
    }

    /* compiled from: ResourcesCompat.java */
    /* loaded from: classes.dex */
    public static final class b {
        public static void a(Resources.Theme theme) {
            if (Build.VERSION.SDK_INT >= 29) {
                C0024b.a(theme);
            } else if (Build.VERSION.SDK_INT >= 23) {
                a.a(theme);
            }
        }

        /* compiled from: ResourcesCompat.java */
        /* renamed from: androidx.core.a.a.f$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        static class C0024b {
            static void a(Resources.Theme theme) {
                theme.rebase();
            }
        }

        /* compiled from: ResourcesCompat.java */
        /* loaded from: classes.dex */
        static class a {
            private static final Object a = new Object();
            private static Method b;
            private static boolean c;

            static void a(Resources.Theme theme) {
                synchronized (a) {
                    if (!c) {
                        try {
                            b = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            b.setAccessible(true);
                        } catch (NoSuchMethodException e) {
                            Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e);
                        }
                        c = true;
                    }
                    if (b != null) {
                        try {
                            b.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException e2) {
                            Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e2);
                            b = null;
                        }
                    }
                }
            }
        }
    }
}
