package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.OnBackPressedDispatcher;
import androidx.core.app.a;
import androidx.lifecycle.f;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* compiled from: FragmentActivity.java */
/* loaded from: classes.dex */
public class d extends androidx.activity.b {
    boolean c;
    boolean d;
    boolean f;
    boolean g;
    int h;
    androidx.b.h<String> i;
    final h a = h.a(new a());
    final androidx.lifecycle.k b = new androidx.lifecycle.k(this);
    boolean e = true;

    public void a(c cVar) {
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        this.a.b();
        int i3 = i >> 16;
        if (i3 != 0) {
            int i4 = i3 - 1;
            String a2 = this.i.a(i4);
            this.i.b(i4);
            if (a2 == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            c a3 = this.a.a(a2);
            if (a3 == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + a2);
                return;
            }
            a3.a(i & 65535, i2, intent);
            return;
        }
        a.InterfaceC0025a a4 = androidx.core.app.a.a();
        if (a4 == null || !a4.a(this, i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.a.a(z);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.a.b(z);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.a.b();
        this.a.a(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.b, androidx.core.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.a.a((c) null);
        if (bundle != null) {
            this.a.a(bundle.getParcelable("android:support:fragments"));
            if (bundle.containsKey("android:support:next_request_index")) {
                this.h = bundle.getInt("android:support:next_request_index");
                int[] intArray = bundle.getIntArray("android:support:request_indicies");
                String[] stringArray = bundle.getStringArray("android:support:request_fragment_who");
                if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                    Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.i = new androidx.b.h<>(intArray.length);
                    for (int i = 0; i < intArray.length; i++) {
                        this.i.b(intArray[i], stringArray[i]);
                    }
                }
            }
        }
        if (this.i == null) {
            this.i = new androidx.b.h<>();
            this.h = 0;
        }
        super.onCreate(bundle);
        this.b.a(f.a.ON_CREATE);
        this.a.d();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i == 0) {
            return this.a.a(menu, getMenuInflater()) | super.onCreatePanelMenu(i, menu);
        }
        return super.onCreatePanelMenu(i, menu);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View a2 = a(view, str, context, attributeSet);
        return a2 == null ? super.onCreateView(view, str, context, attributeSet) : a2;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View a2 = a(null, str, context, attributeSet);
        return a2 == null ? super.onCreateView(str, context, attributeSet) : a2;
    }

    final View a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.a.a(view, str, context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.a.j();
        this.b.a(f.a.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.a.k();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i != 0) {
            if (i != 6) {
                return false;
            }
            return this.a.b(menuItem);
        }
        return this.a.a(menuItem);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.a.b(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.d = false;
        this.a.h();
        this.b.a(f.a.ON_PAUSE);
    }

    @Override // android.app.Activity
    protected void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent intent) {
        super.onNewIntent(intent);
        this.a.b();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.a.b();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.d = true;
        this.a.b();
        this.a.l();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        l();
    }

    protected void l() {
        this.b.a(f.a.ON_RESUME);
        this.a.g();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i == 0) {
            return this.a.a(menu) | a(view, menu);
        }
        return super.onPreparePanel(i, view, menu);
    }

    @Deprecated
    protected boolean a(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.b, androidx.core.app.e, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        f();
        this.b.a(f.a.ON_STOP);
        Parcelable c = this.a.c();
        if (c != null) {
            bundle.putParcelable("android:support:fragments", c);
        }
        if (this.i.b() > 0) {
            bundle.putInt("android:support:next_request_index", this.h);
            int[] iArr = new int[this.i.b()];
            String[] strArr = new String[this.i.b()];
            for (int i = 0; i < this.i.b(); i++) {
                iArr[i] = this.i.c(i);
                strArr[i] = this.i.d(i);
            }
            bundle.putIntArray("android:support:request_indicies", iArr);
            bundle.putStringArray("android:support:request_fragment_who", strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.e = false;
        if (!this.c) {
            this.c = true;
            this.a.e();
        }
        this.a.b();
        this.a.l();
        this.b.a(f.a.ON_START);
        this.a.f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.e = true;
        f();
        this.a.i();
        this.b.a(f.a.ON_STOP);
    }

    @Deprecated
    public void g() {
        invalidateOptionsMenu();
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.c);
        printWriter.print(" mResumed=");
        printWriter.print(this.d);
        printWriter.print(" mStopped=");
        printWriter.print(this.e);
        if (getApplication() != null) {
            androidx.loader.a.a.a(this).a(str2, fileDescriptor, printWriter, strArr);
        }
        this.a.a().a(str, fileDescriptor, printWriter, strArr);
    }

    public m m() {
        return this.a.a();
    }

    @Override // android.app.Activity
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        if (!this.g && i != -1) {
            b(i);
        }
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (!this.g && i != -1) {
            b(i);
        }
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) {
        if (!this.f && i != -1) {
            b(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (!this.f && i != -1) {
            b(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    static void b(int i) {
        if ((i & (-65536)) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.a.b();
        int i2 = (i >> 16) & 65535;
        if (i2 != 0) {
            int i3 = i2 - 1;
            String a2 = this.i.a(i3);
            this.i.b(i3);
            if (a2 == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            c a3 = this.a.a(a2);
            if (a3 == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + a2);
                return;
            }
            a3.a(i & 65535, strArr, iArr);
        }
    }

    /* compiled from: FragmentActivity.java */
    /* loaded from: classes.dex */
    class a extends j<d> implements androidx.activity.d, androidx.lifecycle.x {
        public a() {
            super(d.this);
        }

        @Override // androidx.lifecycle.j
        public androidx.lifecycle.f b() {
            return d.this.b;
        }

        @Override // androidx.lifecycle.x
        public androidx.lifecycle.w c() {
            return d.this.c();
        }

        @Override // androidx.activity.d
        public OnBackPressedDispatcher d() {
            return d.this.d();
        }

        @Override // androidx.fragment.app.j
        public boolean a(c cVar) {
            return !d.this.isFinishing();
        }

        @Override // androidx.fragment.app.j
        public LayoutInflater e() {
            return d.this.getLayoutInflater().cloneInContext(d.this);
        }

        @Override // androidx.fragment.app.j
        /* renamed from: f */
        public d h() {
            return d.this;
        }

        @Override // androidx.fragment.app.j
        public void g() {
            d.this.g();
        }

        @Override // androidx.fragment.app.j
        public void b(c cVar) {
            d.this.a(cVar);
        }

        @Override // androidx.fragment.app.j, androidx.fragment.app.f
        public View a(int i) {
            return d.this.findViewById(i);
        }

        @Override // androidx.fragment.app.j, androidx.fragment.app.f
        public boolean a() {
            Window window = d.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }
    }

    private void f() {
        do {
        } while (a(m(), f.b.CREATED));
    }

    private static boolean a(m mVar, f.b bVar) {
        boolean z = false;
        for (c cVar : mVar.e()) {
            if (cVar != null) {
                if (cVar.k() != null) {
                    z |= a(cVar.n(), bVar);
                }
                if (cVar.b().a().a(f.b.STARTED)) {
                    cVar.Q.b(bVar);
                    z = true;
                }
            }
        }
        return z;
    }
}
