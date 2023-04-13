package com.oplus.widevine.c;

import android.content.ContentValues;
import com.oplus.widevine.e;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: HttpUtil.java */
/* loaded from: classes.dex */
public class a {
    private C0040a a;

    /* compiled from: HttpUtil.java */
    /* renamed from: com.oplus.widevine.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0040a {
        protected b b;
        protected InterfaceC0041a c;
        private String e;
        private String f;
        protected JSONObject a = new JSONObject();
        protected String d = "POST";
        private String g = e.k;

        /* compiled from: HttpUtil.java */
        /* renamed from: com.oplus.widevine.c.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public interface InterfaceC0041a {
            void a(JSONObject jSONObject);
        }

        /* compiled from: HttpUtil.java */
        /* renamed from: com.oplus.widevine.c.a$a$b */
        /* loaded from: classes.dex */
        public interface b {
            void a(InputStream inputStream);
        }

        public C0040a() {
        }

        public C0040a(String str) {
            a(str);
        }

        public C0040a a(String str) {
            this.e = str;
            return this;
        }

        public C0040a b(String str) {
            this.f = str;
            return this;
        }

        public C0040a a(String str, String str2) {
            try {
                this.a.put(str, str2);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return this;
        }

        public C0040a a(ContentValues contentValues) {
            try {
                for (String str : contentValues.keySet()) {
                    this.a.put(str, contentValues.get(str));
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return this;
        }

        public C0040a a(b bVar) {
            this.b = bVar;
            return this;
        }

        public C0040a a(InterfaceC0041a interfaceC0041a) {
            this.c = interfaceC0041a;
            return this;
        }

        public void a() {
            com.oplus.widevine.c.b.a("HttpHelper", "request:PROD" + this.g + this.f);
            a aVar = new a();
            aVar.a(this);
            aVar.a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String c() {
            return this.a.toString();
        }

        public String b() {
            return this.e + this.g + this.f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(C0040a c0040a) {
        this.a = c0040a;
    }

    public void a() {
        if (this.a == null) {
            return;
        }
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(this.a.b()).openConnection();
        httpsURLConnection.setRequestMethod(this.a.d);
        httpsURLConnection.setConnectTimeout(10000);
        httpsURLConnection.setReadTimeout(5000);
        httpsURLConnection.setDoOutput(true);
        httpsURLConnection.setDoInput(true);
        httpsURLConnection.setUseCaches(false);
        httpsURLConnection.setInstanceFollowRedirects(true);
        httpsURLConnection.setRequestProperty("Accept", "application/json");
        httpsURLConnection.setRequestProperty("Content-Type", "application/json");
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpsURLConnection.getOutputStream(), "UTF-8");
        outputStreamWriter.append((CharSequence) this.a.c());
        com.oplus.widevine.c.b.a("HttpHelper", "RequestBody : " + this.a.c());
        outputStreamWriter.flush();
        outputStreamWriter.close();
        a(httpsURLConnection);
    }

    private void a(HttpsURLConnection httpsURLConnection) {
        int responseCode = httpsURLConnection.getResponseCode();
        com.oplus.widevine.c.b.a("HttpHelper", "connect remote:" + responseCode);
        if (responseCode == 200) {
            InputStream inputStream = httpsURLConnection.getInputStream();
            if (this.a.b != null) {
                this.a.b.a(inputStream);
                return;
            } else if (this.a.c != null) {
                String a = a(inputStream);
                try {
                    this.a.c.a(a(a));
                    return;
                } catch (JSONException unused) {
                    com.oplus.widevine.c.b.b("HttpHelper", "connect error : " + a);
                    throw new b(responseCode + "", "content is not json format");
                }
            } else {
                return;
            }
        }
        com.oplus.widevine.c.b.b("HttpHelper", "connect error : " + httpsURLConnection.getURL().toString().replace("https://phone-api.realme.com/", ""));
        throw new b(responseCode + "", httpsURLConnection.getResponseMessage());
    }

    private JSONObject a(String str) {
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString(e.d);
        if (!e.b.equals(optString)) {
            throw new b(optString, "server return error : " + jSONObject.optString(e.f));
        }
        return jSONObject.optJSONObject(e.e);
    }

    private String a(InputStream inputStream) {
        BufferedReader bufferedReader = null;
        if (inputStream == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream));
            while (true) {
                try {
                    String readLine = bufferedReader2.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    throw th;
                }
            }
            if (bufferedReader2 != null) {
                bufferedReader2.close();
            }
            return sb.toString();
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* compiled from: HttpUtil.java */
    /* loaded from: classes.dex */
    public static class b extends Exception {
        public b(String str, String str2) {
            super(str + ":" + str2);
        }
    }
}
