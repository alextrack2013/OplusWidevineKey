package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.f;
import androidx.lifecycle.h;
import androidx.lifecycle.j;
import java.lang.reflect.Field;
/* loaded from: classes.dex */
final class ImmLeaksCleaner implements h {
    private static int a;
    private static Field b;
    private static Field c;
    private static Field d;
    private Activity e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmLeaksCleaner(Activity activity) {
        this.e = activity;
    }

    @Override // androidx.lifecycle.h
    public void a(j jVar, f.a aVar) {
        if (aVar != f.a.ON_DESTROY) {
            return;
        }
        if (a == 0) {
            a();
        }
        if (a == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.e.getSystemService("input_method");
            try {
                Object obj = b.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        try {
                            View view = (View) c.get(inputMethodManager);
                            if (view == null) {
                                return;
                            }
                            if (view.isAttachedToWindow()) {
                                return;
                            }
                            try {
                                d.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            } catch (IllegalAccessException unused) {
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    } catch (ClassCastException unused2) {
                    } catch (IllegalAccessException unused3) {
                    }
                }
            } catch (IllegalAccessException unused4) {
            }
        }
    }

    private static void a() {
        try {
            a = 2;
            c = InputMethodManager.class.getDeclaredField("mServedView");
            c.setAccessible(true);
            d = InputMethodManager.class.getDeclaredField("mNextServedView");
            d.setAccessible(true);
            b = InputMethodManager.class.getDeclaredField("mH");
            b.setAccessible(true);
            a = 1;
        } catch (NoSuchFieldException unused) {
        }
    }
}
