package com.oplus.widevine.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import com.oplus.widevine.c.a;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: RealmeWidevineKeyTask.java */
/* loaded from: classes.dex */
public class j extends i {
    private static int e;
    private static volatile Boolean f = false;
    private com.oplus.widevine.c.d g;
    private String h;

    public j(Context context, Looper looper) {
        super(context, looper);
        this.h = null;
        this.g = new com.oplus.widevine.c.d();
    }

    @Override // com.oplus.widevine.b.i, android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        switch (this.c) {
            case 2:
                f = false;
                if (this.d != null) {
                    this.d.a();
                    return;
                } else {
                    com.oplus.widevine.c.b.b("RealmeWidevineKeyTask", "quit error");
                    return;
                }
            case 3:
            case 5:
                if (f.booleanValue()) {
                    return;
                }
                f = true;
                a();
                return;
            case 4:
            default:
                return;
        }
    }

    @SuppressLint({"NewApi"})
    public boolean a(String str) {
        this.h = str;
        return com.oplus.widevine.a.d.a(str);
    }

    public void a() {
        String b = this.g.b(this.a);
        String a = com.oplus.widevine.c.c.a(com.oplus.widevine.e.a, new String[]{b, "RMX1851"});
        String a2 = com.oplus.widevine.c.c.a("RMX1851", b, a, "1d44e98fbad8465fb690b5886bafdfs8q");
        String a3 = com.oplus.widevine.c.c.a(a, b);
        a.C0040a c0040a = new a.C0040a();
        c0040a.a("https://phone-api.realme.com/").b("/synkey/rmx/key").a(b(a)).a("sign", a2).a("imei", a3).a(new a.C0040a.InterfaceC0041a(this) { // from class: com.oplus.widevine.b.k
            private final j a;

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
        } catch (a.b | IOException e2) {
            com.oplus.widevine.c.b.a("RealmeWidevineKeyTask", "response err:" + e2.getMessage());
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public boolean a(JSONObject jSONObject) {
        com.oplus.widevine.c.b.a("RealmeWidevineKeyTask", "response is coming now resolve");
        try {
            String c = c(jSONObject);
            com.oplus.widevine.c.b.a("RealmeWidevineKeyTask", "the key is: " + c);
            a(c);
            return false;
        } catch (JSONException unused) {
            com.oplus.widevine.c.b.b("RealmeWidevineKeyTask", "format response error ");
            d();
            return false;
        }
    }

    private String c(JSONObject jSONObject) {
        String optString = jSONObject.optString(com.oplus.widevine.e.h);
        String optString2 = jSONObject.optString(com.oplus.widevine.e.j);
        String optString3 = jSONObject.optString(com.oplus.widevine.e.g);
        String c = com.oplus.widevine.c.c.c(optString2);
        String b = com.oplus.widevine.c.c.b(c, optString);
        JSONObject jSONObject2 = new JSONObject(b);
        String optString4 = jSONObject2.optString(com.oplus.widevine.e.i);
        String optString5 = jSONObject2.optString("widevineKey");
        if (com.oplus.widevine.c.c.c(b + c, optString3) && optString4.equals(this.g.b(this.a))) {
            return optString5;
        }
        return null;
    }

    private void d() {
        if (e < 5) {
            f = false;
            removeMessages(5);
            if (e == 0) {
                sendEmptyMessage(5);
            } else {
                sendEmptyMessageDelayed(5, 300000L);
            }
            com.oplus.widevine.c.b.a("RealmeWidevineKeyTask", "retry: " + e);
            e = e + 1;
            return;
        }
        sendEmptyMessage(2);
        removeMessages(5);
    }

    @Override // com.oplus.widevine.b.i
    public boolean c() {
        if (com.oplus.widevine.a.d.a()) {
            com.oplus.widevine.c.b.a("RealmeWidevineKeyTask", "w key is exist  so quit ");
            this.d.a();
            return false;
        }
        return super.c();
    }
}
