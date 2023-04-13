package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import androidx.core.c.a;
import androidx.fragment.R;
import androidx.fragment.app.u;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentAnim.java */
/* loaded from: classes.dex */
public class e {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(Context context, f fVar, c cVar, boolean z) {
        int a2;
        int Z = cVar.Z();
        int Y = cVar.Y();
        boolean z2 = false;
        cVar.a(0);
        View a3 = fVar.a(cVar.w);
        if (a3 != null && a3.getTag(R.id.visible_removing_fragment_view_tag) != null) {
            a3.setTag(R.id.visible_removing_fragment_view_tag, null);
        }
        if (cVar.E == null || cVar.E.getLayoutTransition() == null) {
            Animation a4 = cVar.a(Z, z, Y);
            if (a4 != null) {
                return new a(a4);
            }
            Animator b2 = cVar.b(Z, z, Y);
            if (b2 != null) {
                return new a(b2);
            }
            if (Y != 0) {
                boolean equals = "anim".equals(context.getResources().getResourceTypeName(Y));
                if (equals) {
                    try {
                        Animation loadAnimation = AnimationUtils.loadAnimation(context, Y);
                        if (loadAnimation != null) {
                            return new a(loadAnimation);
                        }
                        z2 = true;
                    } catch (Resources.NotFoundException e) {
                        throw e;
                    } catch (RuntimeException unused) {
                    }
                }
                if (!z2) {
                    try {
                        Animator loadAnimator = AnimatorInflater.loadAnimator(context, Y);
                        if (loadAnimator != null) {
                            return new a(loadAnimator);
                        }
                    } catch (RuntimeException e2) {
                        if (equals) {
                            throw e2;
                        }
                        Animation loadAnimation2 = AnimationUtils.loadAnimation(context, Y);
                        if (loadAnimation2 != null) {
                            return new a(loadAnimation2);
                        }
                    }
                }
            }
            if (Z != 0 && (a2 = a(Z, z)) >= 0) {
                return new a(AnimationUtils.loadAnimation(context, a2));
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(final c cVar, a aVar, final u.a aVar2) {
        final View view = cVar.F;
        final ViewGroup viewGroup = cVar.E;
        viewGroup.startViewTransition(view);
        final androidx.core.c.a aVar3 = new androidx.core.c.a();
        aVar3.a(new a.InterfaceC0026a() { // from class: androidx.fragment.app.e.1
            @Override // androidx.core.c.a.InterfaceC0026a
            public void a() {
                if (c.this.ac() != null) {
                    View ac = c.this.ac();
                    c.this.a((View) null);
                    ac.clearAnimation();
                }
                c.this.a((Animator) null);
            }
        });
        aVar2.a(cVar, aVar3);
        if (aVar.a != null) {
            b bVar = new b(aVar.a, viewGroup, view);
            cVar.a(cVar.F);
            bVar.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.fragment.app.e.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    viewGroup.post(new Runnable() { // from class: androidx.fragment.app.e.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (cVar.ac() != null) {
                                cVar.a((View) null);
                                aVar2.b(cVar, aVar3);
                            }
                        }
                    });
                }
            });
            cVar.F.startAnimation(bVar);
            return;
        }
        Animator animator = aVar.b;
        cVar.a(aVar.b);
        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.e.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                viewGroup.endViewTransition(view);
                Animator ad = cVar.ad();
                cVar.a((Animator) null);
                if (ad == null || viewGroup.indexOfChild(view) >= 0) {
                    return;
                }
                aVar2.b(cVar, aVar3);
            }
        });
        animator.setTarget(cVar.F);
        animator.start();
    }

    private static int a(int i, boolean z) {
        if (i == 4097) {
            return z ? R.anim.fragment_open_enter : R.anim.fragment_open_exit;
        } else if (i == 4099) {
            return z ? R.anim.fragment_fade_enter : R.anim.fragment_fade_exit;
        } else if (i != 8194) {
            return -1;
        } else {
            return z ? R.anim.fragment_close_enter : R.anim.fragment_close_exit;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentAnim.java */
    /* loaded from: classes.dex */
    public static class a {
        public final Animation a;
        public final Animator b;

        a(Animation animation) {
            this.a = animation;
            this.b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }

        a(Animator animator) {
            this.a = null;
            this.b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FragmentAnim.java */
    /* loaded from: classes.dex */
    public static class b extends AnimationSet implements Runnable {
        private final ViewGroup a;
        private final View b;
        private boolean c;
        private boolean d;
        private boolean e;

        b(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.e = true;
            this.a = viewGroup;
            this.b = view;
            addAnimation(animation);
            this.a.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation) {
            this.e = true;
            if (this.c) {
                return !this.d;
            }
            if (!super.getTransformation(j, transformation)) {
                this.c = true;
                androidx.core.g.r.a(this.a, this);
            }
            return true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation, float f) {
            this.e = true;
            if (this.c) {
                return !this.d;
            }
            if (!super.getTransformation(j, transformation, f)) {
                this.c = true;
                androidx.core.g.r.a(this.a, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.c && this.e) {
                this.e = false;
                this.a.post(this);
                return;
            }
            this.a.endViewTransition(this.b);
            this.d = true;
        }
    }
}
