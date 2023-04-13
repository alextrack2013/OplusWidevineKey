package androidx.activity;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.core.app.e;
import androidx.lifecycle.f;
import androidx.lifecycle.h;
import androidx.lifecycle.j;
import androidx.lifecycle.k;
import androidx.lifecycle.s;
import androidx.lifecycle.w;
import androidx.lifecycle.x;
/* compiled from: ComponentActivity.java */
/* loaded from: classes.dex */
public class b extends e implements d, j, x, androidx.savedstate.c {
    private w c;
    private int e;
    private final k a = new k(this);
    private final androidx.savedstate.b b = androidx.savedstate.b.a(this);
    private final OnBackPressedDispatcher d = new OnBackPressedDispatcher(new Runnable() { // from class: androidx.activity.b.1
        @Override // java.lang.Runnable
        public void run() {
            b.super.onBackPressed();
        }
    });

    @Deprecated
    public Object a() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ComponentActivity.java */
    /* loaded from: classes.dex */
    public static final class a {
        Object a;
        w b;

        a() {
        }
    }

    public b() {
        if (b() == null) {
            throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
        }
        if (Build.VERSION.SDK_INT >= 19) {
            b().a(new h() { // from class: androidx.activity.ComponentActivity$2
                @Override // androidx.lifecycle.h
                public void a(j jVar, f.a aVar) {
                    if (aVar == f.a.ON_STOP) {
                        Window window = b.this.getWindow();
                        View peekDecorView = window != null ? window.peekDecorView() : null;
                        if (peekDecorView != null) {
                            peekDecorView.cancelPendingInputEvents();
                        }
                    }
                }
            });
        }
        b().a(new h() { // from class: androidx.activity.ComponentActivity$3
            @Override // androidx.lifecycle.h
            public void a(j jVar, f.a aVar) {
                if (aVar != f.a.ON_DESTROY || b.this.isChangingConfigurations()) {
                    return;
                }
                b.this.c().b();
            }
        });
        if (19 > Build.VERSION.SDK_INT || Build.VERSION.SDK_INT > 23) {
            return;
        }
        b().a(new ImmLeaksCleaner(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.core.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.b.a(bundle);
        s.a(this);
        if (this.e != 0) {
            setContentView(this.e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.core.app.e, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        f b = b();
        if (b instanceof k) {
            ((k) b).b(f.b.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.b.b(bundle);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        a aVar;
        Object a2 = a();
        w wVar = this.c;
        if (wVar == null && (aVar = (a) getLastNonConfigurationInstance()) != null) {
            wVar = aVar.b;
        }
        if (wVar == null && a2 == null) {
            return null;
        }
        a aVar2 = new a();
        aVar2.a = a2;
        aVar2.b = wVar;
        return aVar2;
    }

    @Override // androidx.core.app.e, androidx.lifecycle.j
    public f b() {
        return this.a;
    }

    @Override // androidx.lifecycle.x
    public w c() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.c == null) {
            a aVar = (a) getLastNonConfigurationInstance();
            if (aVar != null) {
                this.c = aVar.b;
            }
            if (this.c == null) {
                this.c = new w();
            }
        }
        return this.c;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.d.a();
    }

    @Override // androidx.activity.d
    public final OnBackPressedDispatcher d() {
        return this.d;
    }

    @Override // androidx.savedstate.c
    public final androidx.savedstate.a e() {
        return this.b.a();
    }
}
