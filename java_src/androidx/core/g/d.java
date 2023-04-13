package androidx.core.g;

import android.os.Build;
import android.view.Gravity;
/* compiled from: GravityCompat.java */
/* loaded from: classes.dex */
public final class d {
    public static int a(int i, int i2) {
        return Build.VERSION.SDK_INT >= 17 ? Gravity.getAbsoluteGravity(i, i2) : i & (-8388609);
    }
}
