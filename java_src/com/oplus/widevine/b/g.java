package com.oplus.widevine.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.oplus.widevine.b.i;
/* compiled from: RealmeKeysManager.java */
/* loaded from: classes.dex */
public class g {
    private static g g;
    private final Context a;
    private final Handler b;
    private i c;
    private HandlerThread d;
    private ConnectivityManager e;
    private Class f;
    private Object h = new Object();
    @SuppressLint({"NewApi"})
    private ConnectivityManager.NetworkCallback i = new ConnectivityManager.NetworkCallback() { // from class: com.oplus.widevine.b.g.1
        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            super.onAvailable(network);
            com.oplus.widevine.c.b.a("RealmeKeyManager", "network is available");
            if (g.this.c != null) {
                g.this.c.sendEmptyMessage(3);
                return;
            }
            com.oplus.widevine.c.b.b("RealmeKeyManager", " Work Task Null ");
            g.this.b();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            super.onLost(network);
            com.oplus.widevine.c.b.a("RealmeKeyManager", "network is onLost");
            if (g.this.c != null) {
                g.this.c.sendEmptyMessage(4);
                return;
            }
            com.oplus.widevine.c.b.b("RealmeKeyManager", " Work Task Null ");
            g.this.b();
        }
    };

    public static g a(Context context, Handler handler, Class cls) {
        if (g == null) {
            synchronized (g.class) {
                if (g == null) {
                    g = new g(context, handler, cls);
                }
            }
        }
        return g;
    }

    private g(Context context, Handler handler, Class cls) {
        this.a = context;
        this.b = handler;
        if (cls != null) {
            this.f = cls;
        } else {
            this.f = j.class;
        }
    }

    public void a() {
        synchronized (this.h) {
            if (this.d == null) {
                this.d = new HandlerThread("oplus_keys_service");
                this.d.start();
                this.c = a(this.d.getLooper(), this.f);
                if (this.c.c() && !c()) {
                    this.c.sendEmptyMessage(5);
                }
            }
        }
    }

    private i a(Looper looper, Class cls) {
        i aVar;
        if (cls == d.class) {
            aVar = new d(this.a, looper);
        } else if (cls == j.class) {
            aVar = new j(this.a, looper);
        } else {
            aVar = cls == a.class ? new a(this.a, looper) : null;
        }
        if (aVar != null) {
            aVar.a(new i.a(this) { // from class: com.oplus.widevine.b.h
                private final g a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.a = this;
                }

                @Override // com.oplus.widevine.b.i.a
                public void a() {
                    this.a.b();
                }
            });
        }
        return aVar;
    }

    @SuppressLint({"NewApi"})
    public void b() {
        if (this.b != null) {
            try {
                this.b.sendEmptyMessage(2);
            } catch (Exception unused) {
                com.oplus.widevine.c.b.b("RealmeKeyManager", "mHandler.quit");
            }
        }
        if (this.c != null) {
            try {
                this.c.b();
                this.c.removeCallbacksAndMessages(null);
            } catch (Exception unused2) {
                com.oplus.widevine.c.b.b("RealmeKeyManager", "mWorkTask.quit");
            }
        }
        if (this.d != null) {
            try {
                this.d.quitSafely();
            } catch (Exception unused3) {
                com.oplus.widevine.c.b.b("RealmeKeyManager", "mWorkThread.quitSafely");
            }
        }
        d();
    }

    public boolean c() {
        this.e = (ConnectivityManager) this.a.getSystemService("connectivity");
        if (Build.VERSION.SDK_INT >= 24) {
            this.e.registerDefaultNetworkCallback(this.i);
            return true;
        }
        return false;
    }

    public void d() {
        if (Build.VERSION.SDK_INT < 24 || this.e == null) {
            return;
        }
        this.e.unregisterNetworkCallback(this.i);
    }
}
