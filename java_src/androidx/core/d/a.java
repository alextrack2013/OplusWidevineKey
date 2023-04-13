package androidx.core.d;

import android.util.Base64;
import androidx.core.f.d;
import java.util.List;
/* compiled from: FontRequest.java */
/* loaded from: classes.dex */
public final class a {
    private final String a;
    private final String b;
    private final String c;
    private final List<List<byte[]>> d;
    private final int e = 0;
    private final String f;

    public a(String str, String str2, String str3, List<List<byte[]>> list) {
        this.a = (String) d.a(str);
        this.b = (String) d.a(str2);
        this.c = (String) d.a(str3);
        this.d = (List) d.a(list);
        this.f = this.a + "-" + this.b + "-" + this.c;
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public List<List<byte[]>> d() {
        return this.d;
    }

    public int e() {
        return this.e;
    }

    public String f() {
        return this.f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.a + ", mProviderPackage: " + this.b + ", mQuery: " + this.c + ", mCertificates:");
        for (int i = 0; i < this.d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.e);
        return sb.toString();
    }
}
