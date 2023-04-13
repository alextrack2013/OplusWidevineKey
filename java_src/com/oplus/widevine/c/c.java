package com.oplus.widevine.c;

import android.os.SystemClock;
import android.util.Base64;
import android.util.Log;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: SecurityUtils.java */
/* loaded from: classes.dex */
public class c {
    private static boolean a = true;

    public static String a(String str) {
        String str2 = null;
        try {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                char[] charArray = str.toCharArray();
                byte[] bArr = new byte[charArray.length];
                for (int i = 0; i < charArray.length; i++) {
                    bArr[i] = (byte) charArray[i];
                }
                byte[] digest = messageDigest.digest(bArr);
                StringBuffer stringBuffer = new StringBuffer();
                for (byte b : digest) {
                    int i2 = b & 255;
                    if (i2 < 16) {
                        stringBuffer.append("0");
                    }
                    stringBuffer.append(Integer.toHexString(i2));
                }
                return stringBuffer.toString().toUpperCase().toUpperCase();
            } catch (Exception e) {
                if (a) {
                    Log.e("SecurityUtils", "No MD5 Algorithm\n" + Arrays.toString(e.getStackTrace()));
                }
                return str2.toUpperCase();
            }
        } catch (Throwable unused) {
            return str2.toUpperCase();
        }
    }

    public static String a(String str, String str2) {
        return a(str.getBytes(Charset.forName("utf-8")), str2, "AES/CBC/PKCS5Padding");
    }

    public static String a(byte[] bArr, String str, String str2) {
        try {
            b.a("SecurityUtils", "aes encryption plainText. " + str + " key：" + new String(bArr) + " cipherName " + str2);
            Cipher cipher = Cipher.getInstance(str2);
            SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG");
            byte[] bArr2 = new byte[cipher.getBlockSize()];
            secureRandom.nextBytes(bArr2);
            cipher.init(1, new SecretKeySpec(bArr, "AES"), new IvParameterSpec(bArr2));
            byte[] doFinal = cipher.doFinal(str.getBytes("utf-8"));
            byte[] bArr3 = new byte[bArr2.length + doFinal.length];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            System.arraycopy(doFinal, 0, bArr3, bArr2.length, doFinal.length);
            return Base64.encodeToString(bArr3, 2);
        } catch (NoSuchAlgorithmException e) {
            PrintStream printStream = System.out;
            printStream.println("aes encryption failed. {}" + e.getMessage());
            return null;
        } catch (Exception e2) {
            PrintStream printStream2 = System.out;
            printStream2.println("aes encryption failed. " + e2.getMessage());
            return null;
        }
    }

    public static String b(String str, String str2) {
        try {
            return b(str.getBytes("utf-8"), str2, "AES/CBC/PKCS5Padding");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public static String b(byte[] bArr, String str, String str2) {
        try {
            Cipher cipher = Cipher.getInstance(str2);
            byte[] bArr2 = new byte[cipher.getBlockSize()];
            byte[] decode = Base64.decode(str, 2);
            System.arraycopy(decode, 0, bArr2, 0, bArr2.length);
            byte[] bArr3 = new byte[decode.length - bArr2.length];
            System.arraycopy(decode, bArr2.length, bArr3, 0, bArr3.length);
            cipher.init(2, new SecretKeySpec(bArr, "AES"), new IvParameterSpec(bArr2));
            return new String(cipher.doFinal(bArr3), "utf-8");
        } catch (Exception unused) {
            Log.e("SecurityUtils", "aes decryption failed");
            return null;
        }
    }

    private static byte[] a() {
        return Base64.decode("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5xlAz6Z053fhDyLTlc6CGCnYgeE6iRjbtrWM0Ppc6c7kj2UXqYbMA+hvfEuGO09VsPCx9WZHopHseb53t6+ed2GslMABMwt4TL/74Bj2H9y7DjWENnvmg6hM/P7sOWR01WjYPs9+G6gJMGtVVikPu4/hnYZMIJz8+ZdTcxpJ/qipduDFENKh5dObeNPvdKZunVyf/HtWZ96UfzHsKmcXkP0gmqrXO6Wp5GWQ1kd4M0Nh6WS53b9XEGOuDHMN97ttRqpnInwFnce5T6HwifslRQ8/ENWax6MBc82qEBBiHyfSmgGmQGOxKOyvva2VK3L8X/psgOxB+8vUO6m772/PQQIDAQAB", 2);
    }

    private static byte[] b() {
        return Base64.decode("MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCRKabU0P/q1RABIAb9+gVlTkcfoanS1NQaTXsN5y7c5S2NAQ000JBIgDqoVAR4x03FqVeBy4cjOw5WSwodrX/ZSMCFmmfr59WXjjg+VHLyFHFINinsFW8uZk+hahyvl41XbFcQJSIse2/YR0e9sgKhi3uXB6R1pHCMGQWxoBJ/icDl0u4fqbYYJ1FntHeTdOVkwlZp3WcoW1PUDN/1hmpj5BMQCtyIK0rQ2G3FVWMM7lWfZvHM9EksGXpgPe0BTcvDgO3S+2hOw7544NxEB6NmLEVcNi1s6slNxfp5/3Wq5NMgQre4xEYRlyZwOzB4/OvXBBF2nSyFPMkT8LU+0fLvAgMBAAECggEAOjveXJO3hsqQkBL8GxkY3wonCC5/hT+yExcwHWS37Q/XVTCtzpk4uI0QewSxgo5ZycjkfQJcJSsE1mNmHH/EwTMpYK+PrxijHBiGwaJ5NlozE8f+y2HR52hN27BI77w5jG+/AZAUBIpEVRxLUHNAEPR20SDUvgkIyXskSJyxrw3GbmocbXzXHLwiUknU471ONTh/qLYiSkEPSdfkT5IvZyxQhMGd3VswmOOgKuDg/zLKq361TU11Lblxf7hUy/mg8fDWvxvlw9H7aSMGxjuu2t9P7uuIn96AKUDpeSUrDBRI1dJXBbj7qAhlEYrZVaWDjrSrRrHpflxbAdx56GREmQKBgQDEHvIJu2wVaorut/S8MGTcWedh11yVbm/TeurhWtYtYUeOdWLSagT74X3JAsZHohvBLfvjxDyRo0RhkEXrJdHk0Y42JFp23f6+4Ze7J/kYoXuCVPpQlypkSTCDbJF7NeIi9uqTAJKmF/eHPG6FEpmOQpRYTFE9kKwuuUNRst+FRQKBgQC9e8A8NwxDmsvYC2dJmkBDmL0NvaaPfX9TaX1O6XUTVOSsZjXu7A+kAgSf9uLZFj9f44PCj6XiK/t/hzlZL+QyoGlAS5DvusFJSluVBzIBBVf67VaQ/3lfEiWi436+b0qjDeI/TScu1rcbYZCkHJnwvsz3dcl+D1V0rdF8nwU4owKBgGNElpY+e5LLfs8d5Y5roGG4T9nCPGaWo5uTl9fBNq95kdKVsBN4/lTP6e8YrGwNraa2M80xwsaksTQA5qMDXZ5IQ4c8F14bN5o+baKZtQe2lOF/ScQI/7gLI7ch+PE4cOHpwQnvPEs9zlhxSi+pHnhXUubumiBjXgO4Wk68D09RAoGBALxbFtYEtplBeF7TvyHoRverDktpeffrfbVyCJF3+txzqDlEBVryp/2Vz/kf15KKzgbIyEKQvwpcRE4aIsTomYRF9zplo7baw6bSVsWG+IsRP8r9QO80Nfdut6D7WhN92AjMFVptnISwBicezkSE9fXeBSv8l4ZLQdyRqMuj2/HXAoGAIMg6k7p9tbRdqgESHt0b5LOWB9kNZhLfuQYiVQhmq3dHVlJhMzVmAIhxhavCNOb/Ikbadp/RrxgkYjOJSKOp+xJ3U1s2K+eAyitH3CVbrvf2kdOwBQ6i3AfBxZEVUUS9oCEF0NkofS1CHwalzPHiaQtVqWnq6L215TWVt0DwuU4=", 2);
    }

    public static boolean c(String str, String str2) {
        try {
            return a(str.getBytes(), a(), Base64.decode(str2, 0));
        } catch (Exception e) {
            Log.e("SecurityUtils", "RSA verify fail" + e.getMessage());
            return false;
        }
    }

    private static boolean a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArr2));
        Signature signature = Signature.getInstance("MD5withRSA");
        signature.initVerify(generatePublic);
        signature.update(bArr);
        return signature.verify(bArr3);
    }

    public static String b(String str) {
        try {
            return a(str.getBytes(), a());
        } catch (Exception unused) {
            return null;
        }
    }

    public static String c(String str) {
        try {
            return b(Base64.decode(str, 2), b());
        } catch (Exception unused) {
            return null;
        }
    }

    private static String a(byte[] bArr, byte[] bArr2) {
        PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArr2));
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, generatePublic);
        return Base64.encodeToString(cipher.doFinal(bArr), 2);
    }

    private static String b(byte[] bArr, byte[] bArr2) {
        PrivateKey generatePrivate = KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(bArr2));
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(2, generatePrivate);
        return new String(cipher.doFinal(bArr));
    }

    public static String a(String str, String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArr) {
            sb.append(str2);
        }
        String sb2 = sb.toString();
        try {
            SecureRandom secureRandom = SecureRandom.getInstance(str);
            secureRandom.nextBytes(secureRandom.generateSeed(1000));
            return a(sb2 + Math.abs(secureRandom.nextLong()));
        } catch (NoSuchAlgorithmException unused) {
            return a(sb2 + SystemClock.currentTimeMicro());
        }
    }

    public static String a(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            sb.append(str);
        }
        return a(sb.toString());
    }
}
