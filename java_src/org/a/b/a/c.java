package org.a.b.a;

import java.io.ByteArrayOutputStream;
/* loaded from: classes.dex */
public class c {
    private static final a a = new d();

    public static String a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static String a(byte[] bArr, int i, int i2) {
        return org.a.b.d.b(b(bArr, i, i2));
    }

    public static byte[] b(byte[] bArr) {
        return b(bArr, 0, bArr.length);
    }

    public static byte[] b(byte[] bArr, int i, int i2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            a.a(bArr, i, i2, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            throw new b("exception encoding Hex string: " + e.getMessage(), e);
        }
    }
}
