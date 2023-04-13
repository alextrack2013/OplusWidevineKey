package com.oplus.widevine.a;

import android.security.keystore.KeyGenParameterSpec;
import android.util.Log;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.security.spec.ECGenParameterSpec;
import java.util.Arrays;
import java.util.Date;
import java.util.regex.Pattern;
import org.a.a.f;
import org.a.a.h;
import org.a.a.k;
import org.a.a.l;
import org.a.a.p;
import org.a.a.t;
import org.a.a.u;
import org.a.a.z;
/* compiled from: KeyAttestationTest.java */
/* loaded from: classes.dex */
public class c {
    private static final Pattern a = Pattern.compile("([0-9]{1,2})(?:\\.([0-9]{1,2}))?(?:\\.([0-9]{1,2}))?(?:[^0-9.]+.*)?");
    private static final Pattern b = Pattern.compile("([0-9]{4})-([0-9]{2})-[0-9]{2}");

    private boolean a(int i) {
        return ((i & 4) == 0 && (i & 8) == 0) ? false : true;
    }

    private boolean b(int i) {
        return ((i & 2) == 0 && (i & 1) == 0) ? false : true;
    }

    public void a() {
        String[] strArr = {"secp224r1"};
        int[] iArr = {224};
        byte[][] bArr = {"challenge".getBytes()};
        int[] iArr2 = {2};
        for (int i = 0; i < strArr.length; i++) {
            for (int i2 = 0; i2 < bArr.length; i2++) {
                for (int i3 = 0; i3 < iArr2.length; i3++) {
                    try {
                        a(bArr[i2], true, strArr[i], iArr[i], iArr2[i3]);
                        a(bArr[i2], false, strArr[i], iArr[i], iArr2[i3]);
                    } catch (Throwable th) {
                        throw new Exception("Failed on curve " + i + " and challege " + i2, th);
                    }
                }
            }
        }
    }

    private void a(byte[] bArr, boolean z, String str, int i, int i2) {
        Date date = new Date();
        Date date2 = new Date(date.getTime() + 1000000);
        Date date3 = new Date(date.getTime() + 2000000);
        KeyGenParameterSpec.Builder attestationChallenge = new KeyGenParameterSpec.Builder("test_key", i2).setAlgorithmParameterSpec(new ECGenParameterSpec(str)).setDigests("NONE", "SHA-256", "SHA-512").setAttestationChallenge(bArr);
        if (z) {
            attestationChallenge.setKeyValidityStart(date).setKeyValidityForOriginationEnd(date2).setKeyValidityForConsumptionEnd(date3);
        }
        a("EC", attestationChallenge.build());
        KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
        keyStore.load(null);
        try {
            Certificate[] certificateChain = keyStore.getCertificateChain("test_key");
            if (certificateChain != null) {
                a(certificateChain);
                a(certificateChain, 3, bArr, i, i2);
            } else {
                Log.e("KeyAttestationTest", "certificates is null");
            }
        } finally {
            keyStore.deleteEntry("test_key");
        }
    }

    public void b() {
        int[] iArr;
        byte[][] bArr = {"challenge".getBytes()};
        int[] iArr2 = {12};
        String[][] strArr = {new String[]{"NoPadding"}};
        String[][] strArr2 = {new String[]{"PKCS1"}};
        for (int i : new int[]{512}) {
            for (byte[] bArr2 : bArr) {
                for (int i2 : iArr2) {
                    if (b(i2)) {
                        a(i, bArr2, i2, strArr);
                    } else {
                        a(i, bArr2, i2, strArr2);
                    }
                }
            }
        }
    }

    private void a(int i, byte[] bArr, int i2, String[][] strArr) {
        for (String[] strArr2 : strArr) {
            try {
                a(bArr, true, i, i2, strArr2);
                a(bArr, false, i, i2, strArr2);
            } catch (Throwable th) {
                throw new Exception("Failed on key size " + i + " challenge [" + new String(bArr) + "], purposes " + i2 + " and paddings " + Arrays.toString(strArr2), th);
            }
        }
    }

    private void a(byte[] bArr, boolean z, int i, int i2, String[] strArr) {
        Date date = new Date();
        Date date2 = new Date(date.getTime() + 1000000);
        Date date3 = new Date(date.getTime() + 2000000);
        KeyGenParameterSpec.Builder attestationChallenge = new KeyGenParameterSpec.Builder("test_key", i2).setKeySize(i).setDigests("NONE", "SHA-256", "SHA-512").setAttestationChallenge(bArr);
        if (z) {
            attestationChallenge.setKeyValidityStart(date).setKeyValidityForOriginationEnd(date2).setKeyValidityForConsumptionEnd(date3);
        }
        if (b(i2)) {
            attestationChallenge.setEncryptionPaddings(strArr);
            attestationChallenge.setRandomizedEncryptionRequired(false);
        }
        if (a(i2)) {
            attestationChallenge.setSignaturePaddings(strArr);
        }
        a("RSA", attestationChallenge.build());
        KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
        keyStore.load(null);
        try {
            Certificate[] certificateChain = keyStore.getCertificateChain("test_key");
            if (certificateChain != null) {
                a(certificateChain);
                a(certificateChain, 1, bArr, i, i2);
            } else {
                Log.e("KeyAttestationTest", "certificates is null");
            }
        } finally {
            keyStore.deleteEntry("test_key");
        }
    }

    private void a(Certificate[] certificateArr) {
        int i;
        for (int i2 = 1; i2 < certificateArr.length; i2++) {
            try {
                certificateArr[i2 - 1].verify(certificateArr[i2].getPublicKey());
            } catch (InvalidKeyException | NoSuchAlgorithmException | NoSuchProviderException | SignatureException | CertificateException e) {
                throw new GeneralSecurityException("Failed to verify certificate " + certificateArr[i] + " with public key " + certificateArr[i2].getPublicKey(), e);
            }
        }
    }

    private void a(String str, KeyGenParameterSpec keyGenParameterSpec) {
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance(str, "AndroidKeyStore");
        keyPairGenerator.initialize(keyGenParameterSpec);
        keyPairGenerator.generateKeyPair();
    }

    public void a(Certificate[] certificateArr, int i, byte[] bArr, int i2, int i3) {
        u a2 = a(certificateArr[0]);
        if (a2 == null) {
            throw new Exception("invalid extensionData");
        }
        int a3 = a(a2.a(0));
        Log.i("KeyAttestationTest", "attestationVersion = " + a3);
        if (a3 != 1 && a3 != 2 && a3 != 3) {
            throw new Exception("Unexpected attestation version. Attestation version must be 1 or 2 or 3");
        }
        int a4 = a(a2.a(1));
        int a5 = a(a2.a(3));
        Log.e("KeyAttestationTest", "Attestation security level: " + c(a4));
        Log.e("KeyAttestationTest", "Keymaster security level: " + c(a5));
        if (a4 != 1) {
            throw new Exception("Unexpected attestation security level value.");
        }
        if (a5 != 1) {
            throw new Exception("Unexpected keymaster security level value.");
        }
        if (!Arrays.equals(bArr, ((p) a2.a(4)).d())) {
            throw new Exception("Incorrect challenge string; key is not fresh");
        }
        ((u) a2.a(6)).b();
        f[] b2 = ((u) a2.a(7)).b();
        int a6 = a(a(b2, 3));
        Log.e("KeyAttestationTest", "Key size: " + a6);
        if (a6 != i2) {
            throw new Exception("The key does not have the expected size.");
        }
        int a7 = a(a(b2, 2));
        Log.e("KeyAttestationTest", "Key cryptographic algorithm: " + a7);
        if (a7 != i) {
            throw new Exception("This key is not an elliptic curve (EC) key, which was expected.");
        }
        int a8 = a(a(b2, 702));
        Log.e("KeyAttestationTest", "Key origin: " + a8);
        if (a8 != 0) {
            throw new Exception("This key does not have the expected origin.");
        }
    }

    private u a(Certificate certificate) {
        byte[] extensionValue = ((X509Certificate) certificate).getExtensionValue("1.3.6.1.4.1.11129.2.1.17");
        if (extensionValue == null || extensionValue.length == 0) {
            throw new Exception("Couldn't find the keystore attestation extension data.");
        }
        k kVar = new k(extensionValue);
        u uVar = null;
        try {
            t d = kVar.d();
            if (d != null) {
                k kVar2 = new k(((p) d).d());
                u uVar2 = (u) kVar2.d();
                if (kVar2 != null) {
                    kVar2.close();
                }
                uVar = uVar2;
            }
            if (kVar != null) {
                kVar.close();
            }
            return uVar;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (kVar != null) {
                    if (th != null) {
                        try {
                            kVar.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        kVar.close();
                    }
                }
                throw th2;
            }
        }
    }

    public int a(f fVar) {
        if (fVar instanceof l) {
            return a(((l) fVar).b());
        }
        if (fVar instanceof h) {
            return a(((h) fVar).b());
        }
        throw new Exception("Integer value expected; found " + fVar.getClass().getName() + " instead.");
    }

    static int a(BigInteger bigInteger) {
        if (bigInteger.compareTo(BigInteger.valueOf(2147483647L)) > 0 || bigInteger.compareTo(BigInteger.ZERO) < 0) {
            throw new Exception("INTEGER out of bounds");
        }
        return bigInteger.intValue();
    }

    private t a(f[] fVarArr, int i) {
        for (f fVar : fVarArr) {
            z zVar = (z) fVar;
            if (zVar.b() == i) {
                return zVar.d();
            }
        }
        return null;
    }

    private String c(int i) {
        switch (i) {
            case 0:
                return "Software";
            case 1:
                return "TEE";
            default:
                throw new Exception("Invalid security level.");
        }
    }
}
