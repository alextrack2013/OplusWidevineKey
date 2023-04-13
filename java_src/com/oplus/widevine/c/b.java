package com.oplus.widevine.c;

import android.os.SystemProperties;
import android.util.Log;
/* compiled from: LogUtils.java */
/* loaded from: classes.dex */
public class b {
    private static final Boolean a = Boolean.valueOf(SystemProperties.getBoolean("persist.sys.assert.panic", false));
    private static final Boolean b = Boolean.valueOf(SystemProperties.getBoolean("persist.sys.assert.enable", false));
    private static final Boolean c = Boolean.valueOf(Log.isLoggable("Widevine.LOG.", 3));
    private static final Boolean d;

    static {
        boolean z = false;
        d = Boolean.valueOf((a.booleanValue() || b.booleanValue() || c.booleanValue()) ? true : true);
    }

    private static Boolean a() {
        return d;
    }

    public static void a(String str, String str2) {
        if (a().booleanValue()) {
            Log.d("Widevine.LOG." + str, str2);
        }
    }

    public static void b(String str, String str2) {
        if (a().booleanValue()) {
            Log.e("Widevine.LOG." + str, str2);
        }
    }

    public static void a(String str, String str2, Exception exc) {
        if (a().booleanValue()) {
            Log.e("Widevine.LOG." + str, str2, exc);
        }
    }
}
