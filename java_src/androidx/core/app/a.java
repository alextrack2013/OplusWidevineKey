package androidx.core.app;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
/* compiled from: ActivityCompat.java */
/* loaded from: classes.dex */
public class a extends androidx.core.a.a {
    private static InterfaceC0025a a;

    /* compiled from: ActivityCompat.java */
    /* renamed from: androidx.core.app.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0025a {
        boolean a(Activity activity, int i, int i2, Intent intent);
    }

    public static InterfaceC0025a a() {
        return a;
    }

    public static void a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
        } else {
            activity.finish();
        }
    }

    public static void b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else if (b.a(activity)) {
        } else {
            activity.recreate();
        }
    }
}
