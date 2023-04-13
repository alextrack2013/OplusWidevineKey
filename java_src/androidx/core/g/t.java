package androidx.core.g;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.R;
import androidx.core.g.a;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: ViewCompat.java */
/* loaded from: classes.dex */
public class t {
    private static Field b = null;
    private static boolean c = false;
    private static WeakHashMap<View, String> d = null;
    private static WeakHashMap<View, x> e = null;
    private static Field f = null;
    private static boolean g = false;
    private static final AtomicInteger a = new AtomicInteger(1);
    private static final int[] h = {R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};
    private static a i = new a();

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public interface f {
        boolean a(View view, KeyEvent keyEvent);
    }

    public static void a(View view, @SuppressLint({"ContextFirst"}) Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 29) {
            e.a(view, context, iArr, attributeSet, typedArray, i2, i3);
        }
    }

    public static void a(View view, androidx.core.g.a aVar) {
        if (aVar == null && (s(view) instanceof a.C0030a)) {
            aVar = new androidx.core.g.a();
        }
        view.setAccessibilityDelegate(aVar == null ? null : aVar.a());
    }

    private static View.AccessibilityDelegate s(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return view.getAccessibilityDelegate();
        }
        return t(view);
    }

    private static View.AccessibilityDelegate t(View view) {
        if (g) {
            return null;
        }
        if (f == null) {
            try {
                f = View.class.getDeclaredField("mAccessibilityDelegate");
                f.setAccessible(true);
            } catch (Throwable unused) {
                g = true;
                return null;
            }
        }
        try {
            Object obj = f.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            g = true;
            return null;
        }
    }

    public static void a(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation();
        } else {
            view.postInvalidate();
        }
    }

    public static void a(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay());
        }
    }

    public static void a(View view, Runnable runnable, long j) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimationDelayed(runnable, j);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay() + j);
        }
    }

    public static int b(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getLayoutDirection();
        }
        return 0;
    }

    public static int c(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.getAccessibilityLiveRegion();
        }
        return 0;
    }

    public static int d(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumHeight();
        }
        if (!c) {
            try {
                b = View.class.getDeclaredField("mMinHeight");
                b.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            c = true;
        }
        if (b != null) {
            try {
                return ((Integer) b.get(view)).intValue();
            } catch (Exception unused2) {
                return 0;
            }
        }
        return 0;
    }

    public static x e(View view) {
        if (e == null) {
            e = new WeakHashMap<>();
        }
        x xVar = e.get(view);
        if (xVar == null) {
            x xVar2 = new x(view);
            e.put(view, xVar2);
            return xVar2;
        }
        return xVar;
    }

    public static void a(View view, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setElevation(f2);
        }
    }

    public static void a(View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTransitionName(str);
            return;
        }
        if (d == null) {
            d = new WeakHashMap<>();
        }
        d.put(view, str);
    }

    public static String f(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getTransitionName();
        }
        if (d == null) {
            return null;
        }
        return d.get(view);
    }

    public static int g(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getWindowSystemUiVisibility();
        }
        return 0;
    }

    public static void h(View view) {
        if (Build.VERSION.SDK_INT >= 20) {
            view.requestApplyInsets();
        } else if (Build.VERSION.SDK_INT >= 16) {
            view.requestFitSystemWindows();
        }
    }

    public static void a(View view, final q qVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            if (qVar == null) {
                view.setOnApplyWindowInsetsListener(null);
            } else {
                view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: androidx.core.g.t.1
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                        return q.this.a(view2, ab.a(windowInsets)).i();
                    }
                });
            }
        }
    }

    public static ab a(View view, ab abVar) {
        WindowInsets i2;
        if (Build.VERSION.SDK_INT >= 21 && (i2 = abVar.i()) != null) {
            WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(i2);
            if (!onApplyWindowInsets.equals(i2)) {
                return ab.a(onApplyWindowInsets);
            }
        }
        return abVar;
    }

    public static ab b(View view, ab abVar) {
        WindowInsets i2;
        return (Build.VERSION.SDK_INT < 21 || (i2 = abVar.i()) == null || view.dispatchApplyWindowInsets(i2).equals(i2)) ? abVar : ab.a(i2);
    }

    public static ab i(View view) {
        if (Build.VERSION.SDK_INT >= 23) {
            return ab.a(d.a(view));
        }
        return null;
    }

    public static ab a(View view, ab abVar, Rect rect) {
        return Build.VERSION.SDK_INT >= 21 ? c.a(view, abVar, rect) : abVar;
    }

    public static void a(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    public static ColorStateList j(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintList();
        }
        if (view instanceof s) {
            return ((s) view).getSupportBackgroundTintList();
        }
        return null;
    }

    public static void a(View view, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setBackgroundTintList(colorStateList);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable background = view.getBackground();
                boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
                if (background == null || !z) {
                    return;
                }
                if (background.isStateful()) {
                    background.setState(view.getDrawableState());
                }
                view.setBackground(background);
            }
        } else if (view instanceof s) {
            ((s) view).setSupportBackgroundTintList(colorStateList);
        }
    }

    public static PorterDuff.Mode k(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintMode();
        }
        if (view instanceof s) {
            return ((s) view).getSupportBackgroundTintMode();
        }
        return null;
    }

    public static void a(View view, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setBackgroundTintMode(mode);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable background = view.getBackground();
                boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
                if (background == null || !z) {
                    return;
                }
                if (background.isStateful()) {
                    background.setState(view.getDrawableState());
                }
                view.setBackground(background);
            }
        } else if (view instanceof s) {
            ((s) view).setSupportBackgroundTintMode(mode);
        }
    }

    public static void l(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.stopNestedScroll();
        } else if (view instanceof i) {
            ((i) view).stopNestedScroll();
        }
    }

    public static boolean m(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.isLaidOut();
        }
        return view.getWidth() > 0 && view.getHeight() > 0;
    }

    public static boolean n(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.isAttachedToWindow();
        }
        return view.getWindowToken() != null;
    }

    public static boolean o(View view) {
        if (Build.VERSION.SDK_INT >= 15) {
            return view.hasOnClickListeners();
        }
        return false;
    }

    public static void a(View view, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.setScrollIndicators(i2, i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return g.a(view).a(keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return g.a(view).a(view, keyEvent);
    }

    public static boolean p(View view) {
        Boolean c2 = a().c(view);
        if (c2 == null) {
            return false;
        }
        return c2.booleanValue();
    }

    private static b<Boolean> a() {
        return new b<Boolean>(R.id.tag_screen_reader_focusable, Boolean.class, 28) { // from class: androidx.core.g.t.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.g.t.b
            /* renamed from: a */
            public Boolean b(View view) {
                return Boolean.valueOf(view.isScreenReaderFocusable());
            }
        };
    }

    public static CharSequence q(View view) {
        return b().c(view);
    }

    private static b<CharSequence> b() {
        return new b<CharSequence>(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28) { // from class: androidx.core.g.t.3
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.g.t.b
            /* renamed from: a */
            public CharSequence b(View view) {
                return view.getAccessibilityPaneTitle();
            }
        };
    }

    public static boolean r(View view) {
        Boolean c2 = c().c(view);
        if (c2 == null) {
            return false;
        }
        return c2.booleanValue();
    }

    private static b<Boolean> c() {
        return new b<Boolean>(R.id.tag_accessibility_heading, Boolean.class, 28) { // from class: androidx.core.g.t.4
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.g.t.b
            /* renamed from: a */
            public Boolean b(View view) {
                return Boolean.valueOf(view.isAccessibilityHeading());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static abstract class b<T> {
        private final int a;
        private final Class<T> b;
        private final int c;

        abstract T b(View view);

        b(int i, Class<T> cls, int i2) {
            this(i, cls, 0, i2);
        }

        b(int i, Class<T> cls, int i2, int i3) {
            this.a = i;
            this.b = cls;
            this.c = i3;
        }

        T c(View view) {
            if (a()) {
                return b(view);
            }
            if (b()) {
                T t = (T) view.getTag(this.a);
                if (this.b.isInstance(t)) {
                    return t;
                }
                return null;
            }
            return null;
        }

        private boolean a() {
            return Build.VERSION.SDK_INT >= this.c;
        }

        private boolean b() {
            return Build.VERSION.SDK_INT >= 19;
        }
    }

    static void a(View view, int i2) {
        if (((AccessibilityManager) view.getContext().getSystemService("accessibility")).isEnabled()) {
            boolean z = q(view) != null;
            if (c(view) != 0 || (z && view.getVisibility() == 0)) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z ? 32 : 2048);
                obtain.setContentChangeTypes(i2);
                view.sendAccessibilityEventUnchecked(obtain);
            } else if (view.getParent() != null) {
                try {
                    view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i2);
                } catch (AbstractMethodError e2) {
                    Log.e("ViewCompat", view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e2);
                }
            }
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    static class a implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {
        private WeakHashMap<View, Boolean> a = new WeakHashMap<>();

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }

        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            for (Map.Entry<View, Boolean> entry : this.a.entrySet()) {
                a(entry.getKey(), entry.getValue().booleanValue());
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            a(view);
        }

        private void a(View view, boolean z) {
            boolean z2 = view.getVisibility() == 0;
            if (z != z2) {
                if (z2) {
                    t.a(view, 16);
                }
                this.a.put(view, Boolean.valueOf(z2));
            }
        }

        private void a(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    static class g {
        private static final ArrayList<WeakReference<View>> a = new ArrayList<>();
        private WeakHashMap<View, Boolean> b = null;
        private SparseArray<WeakReference<View>> c = null;
        private WeakReference<KeyEvent> d = null;

        g() {
        }

        private SparseArray<WeakReference<View>> a() {
            if (this.c == null) {
                this.c = new SparseArray<>();
            }
            return this.c;
        }

        static g a(View view) {
            g gVar = (g) view.getTag(R.id.tag_unhandled_key_event_manager);
            if (gVar == null) {
                g gVar2 = new g();
                view.setTag(R.id.tag_unhandled_key_event_manager, gVar2);
                return gVar2;
            }
            return gVar;
        }

        boolean a(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                b();
            }
            View b = b(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (b != null && !KeyEvent.isModifierKey(keyCode)) {
                    a().put(keyCode, new WeakReference<>(b));
                }
            }
            return b != null;
        }

        private View b(View view, KeyEvent keyEvent) {
            if (this.b == null || !this.b.containsKey(view)) {
                return null;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View b = b(viewGroup.getChildAt(childCount), keyEvent);
                    if (b != null) {
                        return b;
                    }
                }
            }
            if (c(view, keyEvent)) {
                return view;
            }
            return null;
        }

        boolean a(KeyEvent keyEvent) {
            int indexOfKey;
            if (this.d == null || this.d.get() != keyEvent) {
                this.d = new WeakReference<>(keyEvent);
                WeakReference<View> weakReference = null;
                SparseArray<WeakReference<View>> a2 = a();
                if (keyEvent.getAction() == 1 && (indexOfKey = a2.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                    weakReference = a2.valueAt(indexOfKey);
                    a2.removeAt(indexOfKey);
                }
                if (weakReference == null) {
                    weakReference = a2.get(keyEvent.getKeyCode());
                }
                if (weakReference != null) {
                    View view = weakReference.get();
                    if (view != null && t.n(view)) {
                        c(view, keyEvent);
                    }
                    return true;
                }
                return false;
            }
            return false;
        }

        private boolean c(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_unhandled_key_listeners);
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (((f) arrayList.get(size)).a(view, keyEvent)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        private void b() {
            if (this.b != null) {
                this.b.clear();
            }
            if (a.isEmpty()) {
                return;
            }
            synchronized (a) {
                if (this.b == null) {
                    this.b = new WeakHashMap<>();
                }
                for (int size = a.size() - 1; size >= 0; size--) {
                    View view = a.get(size).get();
                    if (view == null) {
                        a.remove(size);
                    } else {
                        this.b.put(view, Boolean.TRUE);
                        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                            this.b.put((View) parent, Boolean.TRUE);
                        }
                    }
                }
            }
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    private static class c {
        static ab a(View view, ab abVar, Rect rect) {
            WindowInsets i = abVar.i();
            if (i != null) {
                return ab.a(view.computeSystemWindowInsets(i, rect));
            }
            rect.setEmpty();
            return abVar;
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    private static class d {
        public static WindowInsets a(View view) {
            return view.getRootWindowInsets();
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    private static class e {
        static void a(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
        }
    }
}
