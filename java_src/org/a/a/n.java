package org.a.a;

import java.io.ByteArrayOutputStream;
/* loaded from: classes.dex */
public abstract class n implements f {
    public byte[] a(String str) {
        ByteArrayOutputStream byteArrayOutputStream;
        if (str.equals("DER")) {
            byteArrayOutputStream = new ByteArrayOutputStream();
            new bb(byteArrayOutputStream).a(this);
        } else if (!str.equals("DL")) {
            return i();
        } else {
            byteArrayOutputStream = new ByteArrayOutputStream();
            new bo(byteArrayOutputStream).a(this);
        }
        return byteArrayOutputStream.toByteArray();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            return h().equals(((f) obj).h());
        }
        return false;
    }

    @Override // org.a.a.f
    public abstract t h();

    public int hashCode() {
        return h().hashCode();
    }

    public byte[] i() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        new r(byteArrayOutputStream).a(this);
        return byteArrayOutputStream.toByteArray();
    }
}
