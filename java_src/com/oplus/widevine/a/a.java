package com.oplus.widevine.a;

import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* compiled from: CryptoEngUtils.java */
/* loaded from: classes.dex */
class a {
    private static ArrayList<Byte> b(ArrayList<Byte> arrayList) {
        Class<?> cls;
        try {
            if (Build.VERSION.SDK_INT <= 29) {
                cls = Class.forName("vendor.oppo.hardware.cryptoeng.V1_0.ICryptoeng");
            } else {
                cls = Class.forName("vendor.oplus.hardware.cryptoeng.V1_0.ICryptoeng");
            }
            Method method = cls.getMethod("getService", new Class[0]);
            Method method2 = cls.getMethod("cryptoeng_invoke_command", ArrayList.class);
            Object invoke = method.invoke(cls, new Object[0]);
            if (invoke != null) {
                return (ArrayList) method2.invoke(invoke, arrayList);
            }
            return null;
        } catch (ClassNotFoundException | IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
            return null;
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static int a(ArrayList<Byte> arrayList) {
        ArrayList<Byte> b = b(arrayList);
        return (b != null && b.size() > 4 && b.get(0).byteValue() == 0 && b.get(1).byteValue() == 0 && b.get(2).byteValue() == 0 && b.get(3).byteValue() == 0) ? 0 : -1;
    }

    public static int a(byte b) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Byte.valueOf(b));
        arrayList.add((byte) 0);
        arrayList.add((byte) 0);
        arrayList.add((byte) 0);
        ArrayList<Byte> b2 = b(arrayList);
        com.oplus.widevine.c.b.a("CryptoEngUtils", "runCryptoCmd :" + arrayList.toString() + "\t out_buf: " + b2.toString());
        return (b2 != null && b2.size() == 4 && b2.get(0).byteValue() == 0 && b2.get(1).byteValue() == 0 && b2.get(2).byteValue() == 0 && b2.get(3).byteValue() == 0) ? 0 : -1;
    }
}
