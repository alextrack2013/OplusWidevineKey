package org.a.a;

import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes.dex */
public class o extends t {
    private static final ConcurrentMap<a, o> c = new ConcurrentHashMap();
    private final String a;
    private byte[] b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {
        private final int a;
        private final byte[] b;

        a(byte[] bArr) {
            this.a = org.a.b.a.a(bArr);
            this.b = bArr;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return org.a.b.a.a(this.b, ((a) obj).b);
            }
            return false;
        }

        public int hashCode() {
            return this.a;
        }
    }

    o(byte[] bArr) {
        char c2;
        char c3;
        StringBuffer stringBuffer = new StringBuffer();
        boolean z = true;
        long j = 0;
        BigInteger bigInteger = null;
        for (int i = 0; i != bArr.length; i++) {
            int i2 = bArr[i] & 255;
            if (j <= 72057594037927808L) {
                long j2 = j + (i2 & 127);
                if ((i2 & 128) == 0) {
                    if (z) {
                        if (j2 < 40) {
                            stringBuffer.append('0');
                        } else if (j2 < 80) {
                            stringBuffer.append('1');
                            j2 -= 40;
                        } else {
                            stringBuffer.append('2');
                            j2 -= 80;
                        }
                        c3 = '.';
                        z = false;
                    } else {
                        c3 = '.';
                    }
                    stringBuffer.append(c3);
                    stringBuffer.append(j2);
                    j = 0;
                } else {
                    j = j2 << 7;
                }
            } else {
                BigInteger or = (bigInteger == null ? BigInteger.valueOf(j) : bigInteger).or(BigInteger.valueOf(i2 & 127));
                if ((i2 & 128) == 0) {
                    if (z) {
                        stringBuffer.append('2');
                        or = or.subtract(BigInteger.valueOf(80L));
                        c2 = '.';
                        z = false;
                    } else {
                        c2 = '.';
                    }
                    stringBuffer.append(c2);
                    stringBuffer.append(or);
                    j = 0;
                    bigInteger = null;
                } else {
                    bigInteger = or.shiftLeft(7);
                }
            }
        }
        this.a = stringBuffer.toString();
        this.b = org.a.b.a.b(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o a(byte[] bArr) {
        o oVar = c.get(new a(bArr));
        return oVar == null ? new o(bArr) : oVar;
    }

    private void a(ByteArrayOutputStream byteArrayOutputStream) {
        by byVar = new by(this.a);
        int parseInt = Integer.parseInt(byVar.b()) * 40;
        String b = byVar.b();
        if (b.length() <= 18) {
            a(byteArrayOutputStream, parseInt + Long.parseLong(b));
        } else {
            a(byteArrayOutputStream, new BigInteger(b).add(BigInteger.valueOf(parseInt)));
        }
        while (byVar.a()) {
            String b2 = byVar.b();
            if (b2.length() <= 18) {
                a(byteArrayOutputStream, Long.parseLong(b2));
            } else {
                a(byteArrayOutputStream, new BigInteger(b2));
            }
        }
    }

    private void a(ByteArrayOutputStream byteArrayOutputStream, long j) {
        byte[] bArr = new byte[9];
        int i = 8;
        bArr[8] = (byte) (((int) j) & 127);
        while (j >= 128) {
            j >>= 7;
            i--;
            bArr[i] = (byte) ((((int) j) & 127) | 128);
        }
        byteArrayOutputStream.write(bArr, i, 9 - i);
    }

    private void a(ByteArrayOutputStream byteArrayOutputStream, BigInteger bigInteger) {
        int bitLength = (bigInteger.bitLength() + 6) / 7;
        if (bitLength == 0) {
            byteArrayOutputStream.write(0);
            return;
        }
        byte[] bArr = new byte[bitLength];
        int i = bitLength - 1;
        BigInteger bigInteger2 = bigInteger;
        for (int i2 = i; i2 >= 0; i2--) {
            bArr[i2] = (byte) ((bigInteger2.intValue() & 127) | 128);
            bigInteger2 = bigInteger2.shiftRight(7);
        }
        bArr[i] = (byte) (bArr[i] & Byte.MAX_VALUE);
        byteArrayOutputStream.write(bArr, 0, bArr.length);
    }

    private synchronized byte[] d() {
        if (this.b == null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            a(byteArrayOutputStream);
            this.b = byteArrayOutputStream.toByteArray();
        }
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public void a(r rVar) {
        byte[] d = d();
        rVar.b(6);
        rVar.a(d.length);
        rVar.a(d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public boolean a() {
        return false;
    }

    @Override // org.a.a.t
    boolean a(t tVar) {
        if (tVar == this) {
            return true;
        }
        if (tVar instanceof o) {
            return this.a.equals(((o) tVar).a);
        }
        return false;
    }

    public String b() {
        return this.a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        int length = d().length;
        return bz.a(length) + 1 + length;
    }

    @Override // org.a.a.t, org.a.a.n
    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return b();
    }
}
