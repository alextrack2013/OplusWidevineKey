package androidx.core.g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
/* compiled from: ViewPropertyAnimatorCompat.java */
/* loaded from: classes.dex */
public final class x {
    Runnable a = null;
    Runnable b = null;
    int c = -1;
    private WeakReference<View> d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(View view) {
        this.d = new WeakReference<>(view);
    }

    /* compiled from: ViewPropertyAnimatorCompat.java */
    /* loaded from: classes.dex */
    static class a implements y {
        x a;
        boolean b;

        a(x xVar) {
            this.a = xVar;
        }

        @Override // androidx.core.g.y
        public void a(View view) {
            this.b = false;
            if (this.a.c > -1) {
                view.setLayerType(2, null);
            }
            if (this.a.a != null) {
                Runnable runnable = this.a.a;
                this.a.a = null;
                runnable.run();
            }
            Object tag = view.getTag(2113929216);
            y yVar = tag instanceof y ? (y) tag : null;
            if (yVar != null) {
                yVar.a(view);
            }
        }

        @Override // androidx.core.g.y
        @SuppressLint({"WrongConstant"})
        public void b(View view) {
            if (this.a.c > -1) {
                view.setLayerType(this.a.c, null);
                this.a.c = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.b) {
                if (this.a.b != null) {
                    Runnable runnable = this.a.b;
                    this.a.b = null;
                    runnable.run();
                }
                Object tag = view.getTag(2113929216);
                y yVar = tag instanceof y ? (y) tag : null;
                if (yVar != null) {
                    yVar.b(view);
                }
                this.b = true;
            }
        }

        @Override // androidx.core.g.y
        public void c(View view) {
            Object tag = view.getTag(2113929216);
            y yVar = tag instanceof y ? (y) tag : null;
            if (yVar != null) {
                yVar.c(view);
            }
        }
    }

    public x a(long j) {
        View view = this.d.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    public x a(float f) {
        View view = this.d.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    public x b(float f) {
        View view = this.d.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }

    public long a() {
        View view = this.d.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    public x a(Interpolator interpolator) {
        View view = this.d.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public x b(long j) {
        View view = this.d.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    public void b() {
        View view = this.d.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public void c() {
        View view = this.d.get();
        if (view != null) {
            view.animate().start();
        }
    }

    public x a(y yVar) {
        View view = this.d.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                a(view, yVar);
            } else {
                view.setTag(2113929216, yVar);
                a(view, new a(this));
            }
        }
        return this;
    }

    private void a(final View view, final y yVar) {
        if (yVar != null) {
            view.animate().setListener(new AnimatorListenerAdapter() { // from class: androidx.core.g.x.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    yVar.c(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    yVar.b(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    yVar.a(view);
                }
            });
        } else {
            view.animate().setListener(null);
        }
    }

    public x a(final aa aaVar) {
        final View view = this.d.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            view.animate().setUpdateListener(aaVar != null ? new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.g.x.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    aaVar.a(view);
                }
            } : null);
        }
        return this;
    }
}
