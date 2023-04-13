package androidx.appcompat.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.view.b;
import androidx.appcompat.widget.bc;
import androidx.core.app.h;
/* compiled from: AppCompatActivity.java */
/* loaded from: classes.dex */
public class c extends androidx.fragment.app.d implements d, h.a {
    private e j;
    private Resources k;

    @Override // androidx.appcompat.app.d
    public androidx.appcompat.view.b a(b.a aVar) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i) {
    }

    @Override // androidx.appcompat.app.d
    public void a(androidx.appcompat.view.b bVar) {
    }

    @Override // androidx.appcompat.app.d
    public void b(androidx.appcompat.view.b bVar) {
    }

    public void b(androidx.core.app.h hVar) {
    }

    @Deprecated
    public void j() {
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(k().b(context));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.d, androidx.activity.b, androidx.core.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        e k = k();
        k.h();
        k.a(bundle);
        super.onCreate(bundle);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        k().a(i);
    }

    @Override // android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        k().b(bundle);
    }

    public a f() {
        return k().a();
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return k().b();
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        k().c(i);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        k().a(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        k().a(view, layoutParams);
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        k().b(view, layoutParams);
    }

    @Override // androidx.fragment.app.d, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.k != null) {
            this.k.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        k().a(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.d, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        k().e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.d, android.app.Activity
    public void onStart() {
        super.onStart();
        k().c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.d, android.app.Activity
    public void onStop() {
        super.onStop();
        k().d();
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i) {
        return (T) k().b(i);
    }

    @Override // androidx.fragment.app.d, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        a f = f();
        if (menuItem.getItemId() != 16908332 || f == null || (f.a() & 4) == 0) {
            return false;
        }
        return h();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.d, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        k().g();
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        k().a(charSequence);
    }

    @Override // androidx.fragment.app.d
    public void g() {
        k().f();
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        k().f();
    }

    public void a(androidx.core.app.h hVar) {
        hVar.a((Activity) this);
    }

    public boolean h() {
        Intent i = i();
        if (i != null) {
            if (a(i)) {
                androidx.core.app.h a = androidx.core.app.h.a((Context) this);
                a(a);
                b(a);
                a.a();
                try {
                    androidx.core.app.a.a(this);
                    return true;
                } catch (IllegalStateException unused) {
                    finish();
                    return true;
                }
            }
            b(i);
            return true;
        }
        return false;
    }

    @Override // androidx.core.app.h.a
    public Intent i() {
        return androidx.core.app.f.a(this);
    }

    public boolean a(Intent intent) {
        return androidx.core.app.f.a(this, intent);
    }

    public void b(Intent intent) {
        androidx.core.app.f.b(this, intent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        j();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    @Override // androidx.fragment.app.d, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.d, androidx.activity.b, androidx.core.app.e, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        k().c(bundle);
    }

    public e k() {
        if (this.j == null) {
            this.j = e.a(this, this);
        }
        return this.j;
    }

    @Override // androidx.core.app.e, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        a f = f();
        if (keyCode == 82 && f != null && f.a(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.k == null && bc.a()) {
            this.k = new bc(this, super.getResources());
        }
        return this.k == null ? super.getResources() : this.k;
    }

    private boolean b(KeyEvent keyEvent) {
        Window window;
        return (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) ? false : true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (b(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        a f = f();
        if (getWindow().hasFeature(0)) {
            if (f == null || !f.c()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        a f = f();
        if (getWindow().hasFeature(0)) {
            if (f == null || !f.d()) {
                super.closeOptionsMenu();
            }
        }
    }
}
