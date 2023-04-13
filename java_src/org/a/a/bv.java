package org.a.a;

import java.io.IOException;
import java.util.Enumeration;
/* loaded from: classes.dex */
class bv implements Enumeration {
    private k a;
    private Object b = a();

    public bv(byte[] bArr) {
        this.a = new k(bArr, true);
    }

    private Object a() {
        try {
            return this.a.d();
        } catch (IOException e) {
            throw new s("malformed DER construction: " + e, e);
        }
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        return this.b != null;
    }

    @Override // java.util.Enumeration
    public Object nextElement() {
        Object obj = this.b;
        this.b = a();
        return obj;
    }
}
