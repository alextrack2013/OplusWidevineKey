package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.appcompat.resources.R;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* compiled from: ResourceManagerInternal.java */
/* loaded from: classes.dex */
public final class an {
    private static an b;
    private WeakHashMap<Context, androidx.b.h<ColorStateList>> d;
    private androidx.b.g<String, d> e;
    private androidx.b.h<String> f;
    private final WeakHashMap<Context, androidx.b.d<WeakReference<Drawable.ConstantState>>> g = new WeakHashMap<>(0);
    private TypedValue h;
    private boolean i;
    private e j;
    private static final PorterDuff.Mode a = PorterDuff.Mode.SRC_IN;
    private static final c c = new c(6);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ResourceManagerInternal.java */
    /* loaded from: classes.dex */
    public interface d {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ResourceManagerInternal.java */
    /* loaded from: classes.dex */
    public interface e {
        ColorStateList a(Context context, int i);

        PorterDuff.Mode a(int i);

        Drawable a(an anVar, Context context, int i);

        boolean a(Context context, int i, Drawable drawable);

        boolean b(Context context, int i, Drawable drawable);
    }

    public static synchronized an a() {
        an anVar;
        synchronized (an.class) {
            if (b == null) {
                b = new an();
                a(b);
            }
            anVar = b;
        }
        return anVar;
    }

    private static void a(an anVar) {
        if (Build.VERSION.SDK_INT < 24) {
            anVar.a("vector", new f());
            anVar.a("animated-vector", new b());
            anVar.a("animated-selector", new a());
        }
    }

    public synchronized void a(e eVar) {
        this.j = eVar;
    }

    public synchronized Drawable a(Context context, int i) {
        return a(context, i, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Drawable a(Context context, int i, boolean z) {
        Drawable d2;
        b(context);
        d2 = d(context, i);
        if (d2 == null) {
            d2 = c(context, i);
        }
        if (d2 == null) {
            d2 = androidx.core.a.a.a(context, i);
        }
        if (d2 != null) {
            d2 = a(context, i, z, d2);
        }
        if (d2 != null) {
            af.a(d2);
        }
        return d2;
    }

    public synchronized void a(Context context) {
        androidx.b.d<WeakReference<Drawable.ConstantState>> dVar = this.g.get(context);
        if (dVar != null) {
            dVar.c();
        }
    }

    private static long a(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    private Drawable c(Context context, int i) {
        if (this.h == null) {
            this.h = new TypedValue();
        }
        TypedValue typedValue = this.h;
        context.getResources().getValue(i, typedValue, true);
        long a2 = a(typedValue);
        Drawable a3 = a(context, a2);
        if (a3 != null) {
            return a3;
        }
        Drawable a4 = this.j == null ? null : this.j.a(this, context, i);
        if (a4 != null) {
            a4.setChangingConfigurations(typedValue.changingConfigurations);
            a(context, a2, a4);
        }
        return a4;
    }

    private Drawable a(Context context, int i, boolean z, Drawable drawable) {
        ColorStateList b2 = b(context, i);
        if (b2 != null) {
            if (af.b(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable f2 = androidx.core.graphics.drawable.a.f(drawable);
            androidx.core.graphics.drawable.a.a(f2, b2);
            PorterDuff.Mode a2 = a(i);
            if (a2 != null) {
                androidx.core.graphics.drawable.a.a(f2, a2);
                return f2;
            }
            return f2;
        } else if ((this.j == null || !this.j.a(context, i, drawable)) && !a(context, i, drawable) && z) {
            return null;
        } else {
            return drawable;
        }
    }

    private Drawable d(Context context, int i) {
        int next;
        if (this.e == null || this.e.isEmpty()) {
            return null;
        }
        if (this.f != null) {
            String a2 = this.f.a(i);
            if ("appcompat_skip_skip".equals(a2) || (a2 != null && this.e.get(a2) == null)) {
                return null;
            }
        } else {
            this.f = new androidx.b.h<>();
        }
        if (this.h == null) {
            this.h = new TypedValue();
        }
        TypedValue typedValue = this.h;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long a3 = a(typedValue);
        Drawable a4 = a(context, a3);
        if (a4 != null) {
            return a4;
        }
        if (typedValue.string != null && typedValue.string.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                while (true) {
                    next = xml.next();
                    if (next == 2 || next == 1) {
                        break;
                    }
                }
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.f.c(i, name);
                d dVar = this.e.get(name);
                if (dVar != null) {
                    a4 = dVar.a(context, xml, asAttributeSet, context.getTheme());
                }
                if (a4 != null) {
                    a4.setChangingConfigurations(typedValue.changingConfigurations);
                    a(context, a3, a4);
                }
            } catch (Exception e2) {
                Log.e("ResourceManagerInternal", "Exception while inflating drawable", e2);
            }
        }
        if (a4 == null) {
            this.f.c(i, "appcompat_skip_skip");
        }
        return a4;
    }

    private synchronized Drawable a(Context context, long j) {
        androidx.b.d<WeakReference<Drawable.ConstantState>> dVar = this.g.get(context);
        if (dVar == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> a2 = dVar.a(j);
        if (a2 != null) {
            Drawable.ConstantState constantState = a2.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            dVar.b(j);
        }
        return null;
    }

    private synchronized boolean a(Context context, long j, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            androidx.b.d<WeakReference<Drawable.ConstantState>> dVar = this.g.get(context);
            if (dVar == null) {
                dVar = new androidx.b.d<>();
                this.g.put(context, dVar);
            }
            dVar.b(j, new WeakReference<>(constantState));
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Drawable a(Context context, bc bcVar, int i) {
        Drawable d2 = d(context, i);
        if (d2 == null) {
            d2 = bcVar.a(i);
        }
        if (d2 != null) {
            return a(context, i, false, d2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(Context context, int i, Drawable drawable) {
        return this.j != null && this.j.b(context, i, drawable);
    }

    private void a(String str, d dVar) {
        if (this.e == null) {
            this.e = new androidx.b.g<>();
        }
        this.e.put(str, dVar);
    }

    PorterDuff.Mode a(int i) {
        if (this.j == null) {
            return null;
        }
        return this.j.a(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized ColorStateList b(Context context, int i) {
        ColorStateList e2;
        e2 = e(context, i);
        if (e2 == null) {
            e2 = this.j == null ? null : this.j.a(context, i);
            if (e2 != null) {
                a(context, i, e2);
            }
        }
        return e2;
    }

    private ColorStateList e(Context context, int i) {
        androidx.b.h<ColorStateList> hVar;
        if (this.d == null || (hVar = this.d.get(context)) == null) {
            return null;
        }
        return hVar.a(i);
    }

    private void a(Context context, int i, ColorStateList colorStateList) {
        if (this.d == null) {
            this.d = new WeakHashMap<>();
        }
        androidx.b.h<ColorStateList> hVar = this.d.get(context);
        if (hVar == null) {
            hVar = new androidx.b.h<>();
            this.d.put(context, hVar);
        }
        hVar.c(i, colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ResourceManagerInternal.java */
    /* loaded from: classes.dex */
    public static class c extends androidx.b.e<Integer, PorterDuffColorFilter> {
        public c(int i) {
            super(i);
        }

        PorterDuffColorFilter a(int i, PorterDuff.Mode mode) {
            return a((c) Integer.valueOf(b(i, mode)));
        }

        PorterDuffColorFilter a(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return a((c) Integer.valueOf(b(i, mode)), (Integer) porterDuffColorFilter);
        }

        private static int b(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Drawable drawable, av avVar, int[] iArr) {
        if (af.b(drawable) && drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if (avVar.d || avVar.c) {
            drawable.setColorFilter(a(avVar.d ? avVar.a : null, avVar.c ? avVar.b : a, iArr));
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    private static PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return a(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static synchronized PorterDuffColorFilter a(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter a2;
        synchronized (an.class) {
            a2 = c.a(i, mode);
            if (a2 == null) {
                a2 = new PorterDuffColorFilter(i, mode);
                c.a(i, mode, a2);
            }
        }
        return a2;
    }

    private void b(Context context) {
        if (this.i) {
            return;
        }
        this.i = true;
        Drawable a2 = a(context, R.drawable.abc_vector_test);
        if (a2 == null || !a(a2)) {
            this.i = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    private static boolean a(Drawable drawable) {
        return (drawable instanceof androidx.vectordrawable.a.a.i) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ResourceManagerInternal.java */
    /* loaded from: classes.dex */
    public static class f implements d {
        f() {
        }

        @Override // androidx.appcompat.widget.an.d
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.vectordrawable.a.a.i.a(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ResourceManagerInternal.java */
    /* loaded from: classes.dex */
    public static class b implements d {
        b() {
        }

        @Override // androidx.appcompat.widget.an.d
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.vectordrawable.a.a.c.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ResourceManagerInternal.java */
    /* loaded from: classes.dex */
    public static class a implements d {
        a() {
        }

        @Override // androidx.appcompat.widget.an.d
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.appcompat.b.a.a.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }
}
