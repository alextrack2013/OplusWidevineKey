package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.core.g.e;
import androidx.lifecycle.f;
import androidx.lifecycle.j;
import androidx.lifecycle.k;
import androidx.lifecycle.s;
/* compiled from: ComponentActivity.java */
/* loaded from: classes.dex */
public class e extends Activity implements e.a, j {
    private androidx.b.g<Class<? extends Object>, Object> a = new androidx.b.g<>();
    private k b = new k(this);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    @SuppressLint({"RestrictedApi"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        s.a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        this.b.a(f.b.CREATED);
        super.onSaveInstanceState(bundle);
    }

    public androidx.lifecycle.f b() {
        return this.b;
    }

    @Override // androidx.core.g.e.a
    public boolean a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !androidx.core.g.e.a(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !androidx.core.g.e.a(decorView, keyEvent)) {
            return androidx.core.g.e.a(this, decorView, this, keyEvent);
        }
        return true;
    }
}
