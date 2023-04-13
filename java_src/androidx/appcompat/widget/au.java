package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* compiled from: TintContextWrapper.java */
/* loaded from: classes.dex */
public class au extends ContextWrapper {
    private static final Object a = new Object();
    private static ArrayList<WeakReference<au>> b;
    private final Resources c;
    private final Resources.Theme d;

    public static Context a(Context context) {
        if (b(context)) {
            synchronized (a) {
                if (b == null) {
                    b = new ArrayList<>();
                } else {
                    for (int size = b.size() - 1; size >= 0; size--) {
                        WeakReference<au> weakReference = b.get(size);
                        if (weakReference == null || weakReference.get() == null) {
                            b.remove(size);
                        }
                    }
                    for (int size2 = b.size() - 1; size2 >= 0; size2--) {
                        WeakReference<au> weakReference2 = b.get(size2);
                        au auVar = weakReference2 != null ? weakReference2.get() : null;
                        if (auVar != null && auVar.getBaseContext() == context) {
                            return auVar;
                        }
                    }
                }
                au auVar2 = new au(context);
                b.add(new WeakReference<>(auVar2));
                return auVar2;
            }
        }
        return context;
    }

    private static boolean b(Context context) {
        if ((context instanceof au) || (context.getResources() instanceof aw) || (context.getResources() instanceof bc)) {
            return false;
        }
        return Build.VERSION.SDK_INT < 21 || bc.a();
    }

    private au(Context context) {
        super(context);
        if (bc.a()) {
            this.c = new bc(this, context.getResources());
            this.d = this.c.newTheme();
            this.d.setTo(context.getTheme());
            return;
        }
        this.c = new aw(this, context.getResources());
        this.d = null;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        return this.d == null ? super.getTheme() : this.d;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.d == null) {
            super.setTheme(i);
        } else {
            this.d.applyStyle(i, true);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.c.getAssets();
    }
}
