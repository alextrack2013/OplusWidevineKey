package com.oplus.widevine.b;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.oplus.widevine.c.a;
import java.io.IOException;
import java.io.InputStream;
import org.json.JSONObject;
/* compiled from: RealmeGoogleKeyTask.java */
/* loaded from: classes.dex */
public class d extends i {
    private static int g = 0;
    private static volatile Boolean h = false;
    private static boolean i = false;
    private static boolean j = false;
    private com.oplus.widevine.c.d e;
    private com.oplus.widevine.a.d f;

    public d(Context context, Looper looper) {
        super(context, looper);
        this.e = new com.oplus.widevine.c.d();
        this.f = new com.oplus.widevine.a.d();
    }

    @Override // com.oplus.widevine.b.i, android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        switch (this.c) {
            case 2:
                h = false;
                this.d.a();
                return;
            case 3:
            case 5:
                if (h.booleanValue()) {
                    return;
                }
                h = true;
                a();
                return;
            case 4:
            default:
                return;
        }
    }

    public boolean a(String str) {
        if (!j) {
            int c = com.oplus.widevine.a.d.c();
            if (c == 1 || c == 0) {
                j = true;
            }
            Log.d("RealmeGoogleKeyTask", "write: installKeyBox:" + c);
        }
        if (!i) {
            int b = com.oplus.widevine.a.d.b();
            if (b == 1 || b == 0) {
                i = true;
            }
            Log.d("RealmeGoogleKeyTask", "write:generate=" + b);
        }
        if (j && j) {
            Log.d("RealmeGoogleKeyTask", "write success");
            d();
            return true;
        }
        Log.d("RealmeGoogleKeyTask", "write failed");
        e();
        return false;
    }

    private void d() {
        String b = this.e.b(this.a);
        String a = com.oplus.widevine.c.c.a(com.oplus.widevine.e.a, new String[]{b, "RMX1851"});
        String a2 = com.oplus.widevine.c.c.a("RMX1851", b, a, "1d44e98fbad8465fb690b5886bafdfs8q");
        String a3 = com.oplus.widevine.c.c.a(a, b);
        a.C0040a c0040a = new a.C0040a();
        c0040a.a("https://phone-api.realme.com/").b("/synkey/patch/status").a(b(a)).a("sign", a2).a("imei", a3).a(new a.C0040a.InterfaceC0041a(this) { // from class: com.oplus.widevine.b.e
            private final d a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.a = this;
            }

            @Override // com.oplus.widevine.c.a.C0040a.InterfaceC0041a
            public void a(JSONObject jSONObject) {
                this.a.a(jSONObject);
            }
        });
        try {
            c0040a.a();
        } catch (a.b | IOException e) {
            Log.e("RealmeGoogleKeyTask", "Http cause exception : " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            com.oplus.widevine.c.b.a("RealmeGoogleKeyTask", "onContent: " + jSONObject.toString());
        }
        sendEmptyMessage(2);
    }

    public void a() {
        String b = this.e.b(this.a);
        String a = com.oplus.widevine.c.c.a(com.oplus.widevine.e.a, new String[]{b, "RMX1851"});
        String a2 = com.oplus.widevine.c.c.a("RMX1851", b, a, "1d44e98fbad8465fb690b5886bafdfs8q");
        String a3 = com.oplus.widevine.c.c.a(a, b);
        a.C0040a c0040a = new a.C0040a("https://phone-api.realme.com/");
        c0040a.b("/synkey/patch/downLoad").a(b(a)).a("sign", a2).a("imei", a3).a(new a.C0040a.b(this) { // from class: com.oplus.widevine.b.f
            private final d a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.a = this;
            }

            @Override // com.oplus.widevine.c.a.C0040a.b
            public void a(InputStream inputStream) {
                this.a.a(inputStream);
            }
        });
        try {
            c0040a.a();
        } catch (a.b | IOException e) {
            Log.e("RealmeGoogleKeyTask", "Http cause exception : " + e.getMessage());
            e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public boolean a(InputStream inputStream) {
        try {
            try {
                this.e.a(inputStream, "/sdcard/.lii/");
                if (a("/sdcard/.lii/")) {
                    b();
                }
                return true;
            } catch (IOException e) {
                e.printStackTrace();
                this.e.a("/sdcard/.lii/");
                return false;
            } catch (Exception e2) {
                e2.printStackTrace();
                this.e.a("/sdcard/.lii/");
                return false;
            }
        } finally {
            this.e.a("/sdcard/.lii/");
        }
    }

    private void e() {
        if (g < 5) {
            h = false;
            removeMessages(5);
            if (g == 0) {
                sendEmptyMessage(5);
            } else {
                sendEmptyMessageDelayed(5, 300000L);
            }
            com.oplus.widevine.c.b.a("RealmeGoogleKeyTask", "retry: " + g);
            g = g + 1;
            return;
        }
        removeMessages(5);
    }
}
