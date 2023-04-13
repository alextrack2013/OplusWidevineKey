package com.oplus.widevine.a;

import java.nio.charset.Charset;
import java.util.ArrayList;
/* compiled from: RealmeKeysBoxUtils.java */
/* loaded from: classes.dex */
public class d {
    private static String a = "RealmeKeysBoxUtils";

    public static boolean a(String str) {
        byte[] bytes = str.getBytes(Charset.defaultCharset());
        ArrayList arrayList = new ArrayList();
        arrayList.add((byte) 9);
        arrayList.add((byte) 0);
        arrayList.add((byte) 0);
        arrayList.add((byte) 0);
        for (byte b : bytes) {
            arrayList.add(Byte.valueOf(b));
        }
        if (a.a(arrayList) == 0) {
            com.oplus.widevine.c.b.a(a, "key is write success");
            return true;
        }
        com.oplus.widevine.c.b.a(a, "key is write failed");
        return false;
    }

    public static boolean a() {
        ArrayList arrayList = new ArrayList();
        arrayList.add((byte) 10);
        arrayList.add((byte) 0);
        arrayList.add((byte) 0);
        arrayList.add((byte) 0);
        return a.a(arrayList) == 0;
    }

    public static int b() {
        if (a.a((byte) 1) != 0) {
            return a.a((byte) 2) != 0 ? -1 : 1;
        }
        return 0;
    }

    public static int c() {
        if (a.a((byte) 3) != 0) {
            return a.a((byte) 4) != 0 ? -1 : 1;
        }
        return 0;
    }
}
