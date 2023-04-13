package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
/* compiled from: TooltipCompatHandler.java */
/* loaded from: classes.dex */
class ba implements View.OnAttachStateChangeListener, View.OnHoverListener, View.OnLongClickListener {
    private static ba j;
    private static ba k;
    private final View a;
    private final CharSequence b;
    private final int c;
    private final Runnable d = new Runnable() { // from class: androidx.appcompat.widget.ba.1
        @Override // java.lang.Runnable
        public void run() {
            ba.this.a(false);
        }
    };
    private final Runnable e = new Runnable() { // from class: androidx.appcompat.widget.ba.2
        @Override // java.lang.Runnable
        public void run() {
            ba.this.a();
        }
    };
    private int f;
    private int g;
    private bb h;
    private boolean i;

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    public static void a(View view, CharSequence charSequence) {
        if (j != null && j.a == view) {
            a((ba) null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            if (k != null && k.a == view) {
                k.a();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new ba(view, charSequence);
    }

    private ba(View view, CharSequence charSequence) {
        this.a = view;
        this.b = charSequence;
        this.c = androidx.core.g.u.a(ViewConfiguration.get(this.a.getContext()));
        d();
        this.a.setOnLongClickListener(this);
        this.a.setOnHoverListener(this);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f = view.getWidth() / 2;
        this.g = view.getHeight() / 2;
        a(true);
        return true;
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.h == null || !this.i) {
            AccessibilityManager accessibilityManager = (AccessibilityManager) this.a.getContext().getSystemService("accessibility");
            if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
                return false;
            }
            int action = motionEvent.getAction();
            if (action != 7) {
                if (action == 10) {
                    d();
                    a();
                }
            } else if (this.a.isEnabled() && this.h == null && a(motionEvent)) {
                a(this);
            }
            return false;
        }
        return false;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        a();
    }

    void a(boolean z) {
        long longPressTimeout;
        if (androidx.core.g.t.n(this.a)) {
            a((ba) null);
            if (k != null) {
                k.a();
            }
            k = this;
            this.i = z;
            this.h = new bb(this.a.getContext());
            this.h.a(this.a, this.f, this.g, this.i, this.b);
            this.a.addOnAttachStateChangeListener(this);
            if (this.i) {
                longPressTimeout = 2500;
            } else if ((androidx.core.g.t.g(this.a) & 1) == 1) {
                longPressTimeout = 3000 - ViewConfiguration.getLongPressTimeout();
            } else {
                longPressTimeout = 15000 - ViewConfiguration.getLongPressTimeout();
            }
            this.a.removeCallbacks(this.e);
            this.a.postDelayed(this.e, longPressTimeout);
        }
    }

    void a() {
        if (k == this) {
            k = null;
            if (this.h != null) {
                this.h.a();
                this.h = null;
                d();
                this.a.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (j == this) {
            a((ba) null);
        }
        this.a.removeCallbacks(this.e);
    }

    private static void a(ba baVar) {
        if (j != null) {
            j.c();
        }
        j = baVar;
        if (j != null) {
            j.b();
        }
    }

    private void b() {
        this.a.postDelayed(this.d, ViewConfiguration.getLongPressTimeout());
    }

    private void c() {
        this.a.removeCallbacks(this.d);
    }

    private boolean a(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.f) > this.c || Math.abs(y - this.g) > this.c) {
            this.f = x;
            this.g = y;
            return true;
        }
        return false;
    }

    private void d() {
        this.f = Integer.MAX_VALUE;
        this.g = Integer.MAX_VALUE;
    }
}
