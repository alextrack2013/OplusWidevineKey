package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;
/* compiled from: ResourcesFlusher.java */
/* loaded from: classes.dex */
class i {
    private static Field a;
    private static boolean b;
    private static Class<?> c;
    private static boolean d;
    private static Field e;
    private static boolean f;
    private static Field g;
    private static boolean h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Resources resources) {
        if (Build.VERSION.SDK_INT >= 28) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            d(resources);
        } else if (Build.VERSION.SDK_INT >= 23) {
            c(resources);
        } else if (Build.VERSION.SDK_INT >= 21) {
            b(resources);
        }
    }

    private static void b(Resources resources) {
        Map map;
        if (!b) {
            try {
                a = Resources.class.getDeclaredField("mDrawableCache");
                a.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e2);
            }
            b = true;
        }
        if (a != null) {
            try {
                map = (Map) a.get(resources);
            } catch (IllegalAccessException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e3);
                map = null;
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void c(android.content.res.Resources r4) {
        /*
            boolean r0 = androidx.appcompat.app.i.b
            if (r0 != 0) goto L1f
            r0 = 1
            java.lang.Class<android.content.res.Resources> r1 = android.content.res.Resources.class
            java.lang.String r2 = "mDrawableCache"
            java.lang.reflect.Field r1 = r1.getDeclaredField(r2)     // Catch: java.lang.NoSuchFieldException -> L15
            androidx.appcompat.app.i.a = r1     // Catch: java.lang.NoSuchFieldException -> L15
            java.lang.reflect.Field r1 = androidx.appcompat.app.i.a     // Catch: java.lang.NoSuchFieldException -> L15
            r1.setAccessible(r0)     // Catch: java.lang.NoSuchFieldException -> L15
            goto L1d
        L15:
            r1 = move-exception
            java.lang.String r2 = "ResourcesFlusher"
            java.lang.String r3 = "Could not retrieve Resources#mDrawableCache field"
            android.util.Log.e(r2, r3, r1)
        L1d:
            androidx.appcompat.app.i.b = r0
        L1f:
            r0 = 0
            java.lang.reflect.Field r1 = androidx.appcompat.app.i.a
            if (r1 == 0) goto L33
            java.lang.reflect.Field r1 = androidx.appcompat.app.i.a     // Catch: java.lang.IllegalAccessException -> L2b
            java.lang.Object r4 = r1.get(r4)     // Catch: java.lang.IllegalAccessException -> L2b
            goto L34
        L2b:
            r4 = move-exception
            java.lang.String r1 = "ResourcesFlusher"
            java.lang.String r2 = "Could not retrieve value from Resources#mDrawableCache"
            android.util.Log.e(r1, r2, r4)
        L33:
            r4 = r0
        L34:
            if (r4 != 0) goto L37
            return
        L37:
            a(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.i.c(android.content.res.Resources):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void d(android.content.res.Resources r5) {
        /*
            boolean r0 = androidx.appcompat.app.i.h
            r1 = 1
            if (r0 != 0) goto L1f
            java.lang.Class<android.content.res.Resources> r0 = android.content.res.Resources.class
            java.lang.String r2 = "mResourcesImpl"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r2)     // Catch: java.lang.NoSuchFieldException -> L15
            androidx.appcompat.app.i.g = r0     // Catch: java.lang.NoSuchFieldException -> L15
            java.lang.reflect.Field r0 = androidx.appcompat.app.i.g     // Catch: java.lang.NoSuchFieldException -> L15
            r0.setAccessible(r1)     // Catch: java.lang.NoSuchFieldException -> L15
            goto L1d
        L15:
            r0 = move-exception
            java.lang.String r2 = "ResourcesFlusher"
            java.lang.String r3 = "Could not retrieve Resources#mResourcesImpl field"
            android.util.Log.e(r2, r3, r0)
        L1d:
            androidx.appcompat.app.i.h = r1
        L1f:
            java.lang.reflect.Field r0 = androidx.appcompat.app.i.g
            if (r0 != 0) goto L24
            return
        L24:
            r0 = 0
            java.lang.reflect.Field r2 = androidx.appcompat.app.i.g     // Catch: java.lang.IllegalAccessException -> L2c
            java.lang.Object r5 = r2.get(r5)     // Catch: java.lang.IllegalAccessException -> L2c
            goto L35
        L2c:
            r5 = move-exception
            java.lang.String r2 = "ResourcesFlusher"
            java.lang.String r3 = "Could not retrieve value from Resources#mResourcesImpl"
            android.util.Log.e(r2, r3, r5)
            r5 = r0
        L35:
            if (r5 != 0) goto L38
            return
        L38:
            boolean r2 = androidx.appcompat.app.i.b
            if (r2 != 0) goto L58
            java.lang.Class r2 = r5.getClass()     // Catch: java.lang.NoSuchFieldException -> L4e
            java.lang.String r3 = "mDrawableCache"
            java.lang.reflect.Field r2 = r2.getDeclaredField(r3)     // Catch: java.lang.NoSuchFieldException -> L4e
            androidx.appcompat.app.i.a = r2     // Catch: java.lang.NoSuchFieldException -> L4e
            java.lang.reflect.Field r2 = androidx.appcompat.app.i.a     // Catch: java.lang.NoSuchFieldException -> L4e
            r2.setAccessible(r1)     // Catch: java.lang.NoSuchFieldException -> L4e
            goto L56
        L4e:
            r2 = move-exception
            java.lang.String r3 = "ResourcesFlusher"
            java.lang.String r4 = "Could not retrieve ResourcesImpl#mDrawableCache field"
            android.util.Log.e(r3, r4, r2)
        L56:
            androidx.appcompat.app.i.b = r1
        L58:
            java.lang.reflect.Field r1 = androidx.appcompat.app.i.a
            if (r1 == 0) goto L6b
            java.lang.reflect.Field r1 = androidx.appcompat.app.i.a     // Catch: java.lang.IllegalAccessException -> L63
            java.lang.Object r5 = r1.get(r5)     // Catch: java.lang.IllegalAccessException -> L63
            goto L6c
        L63:
            r5 = move-exception
            java.lang.String r1 = "ResourcesFlusher"
            java.lang.String r2 = "Could not retrieve value from ResourcesImpl#mDrawableCache"
            android.util.Log.e(r1, r2, r5)
        L6b:
            r5 = r0
        L6c:
            if (r5 == 0) goto L71
            a(r5)
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.i.d(android.content.res.Resources):void");
    }

    private static void a(Object obj) {
        LongSparseArray longSparseArray;
        if (!d) {
            try {
                c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e2) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e2);
            }
            d = true;
        }
        if (c == null) {
            return;
        }
        if (!f) {
            try {
                e = c.getDeclaredField("mUnthemedEntries");
                e.setAccessible(true);
            } catch (NoSuchFieldException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e3);
            }
            f = true;
        }
        if (e == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) e.get(obj);
        } catch (IllegalAccessException e4) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e4);
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }
}
