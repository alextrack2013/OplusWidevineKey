package androidx.core.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* compiled from: BundleCompat.java */
/* loaded from: classes.dex */
public final class d {

    /* compiled from: BundleCompat.java */
    /* loaded from: classes.dex */
    static class a {
        private static Method a;
        private static boolean b;

        public static IBinder a(Bundle bundle, String str) {
            if (!b) {
                try {
                    a = Bundle.class.getMethod("getIBinder", String.class);
                    a.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve getIBinder method", e);
                }
                b = true;
            }
            if (a != null) {
                try {
                    return (IBinder) a.invoke(bundle, str);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke getIBinder via reflection", e2);
                    a = null;
                }
            }
            return null;
        }
    }

    public static IBinder a(Bundle bundle, String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            return bundle.getBinder(str);
        }
        return a.a(bundle, str);
    }
}
