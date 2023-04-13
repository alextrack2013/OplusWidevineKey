package org.a.a;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes.dex */
public class r {
    private OutputStream a;

    /* loaded from: classes.dex */
    private class a extends r {
        private boolean b;

        public a(OutputStream outputStream) {
            super(outputStream);
            this.b = true;
        }

        @Override // org.a.a.r
        public void b(int i) {
            if (this.b) {
                this.b = false;
            } else {
                super.b(i);
            }
        }
    }

    public r(OutputStream outputStream) {
        this.a = outputStream;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r a() {
        return new bb(this.a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        if (i <= 127) {
            b((byte) i);
            return;
        }
        int i2 = i;
        int i3 = 1;
        while (true) {
            i2 >>>= 8;
            if (i2 == 0) {
                break;
            }
            i3++;
        }
        b((byte) (i3 | 128));
        for (int i4 = (i3 - 1) * 8; i4 >= 0; i4 -= 8) {
            b((byte) (i >> i4));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2) {
        if (i2 < 31) {
            b(i | i2);
            return;
        }
        b(i | 31);
        if (i2 < 128) {
            b(i2);
            return;
        }
        byte[] bArr = new byte[5];
        int length = bArr.length - 1;
        bArr[length] = (byte) (i2 & 127);
        do {
            i2 >>= 7;
            length--;
            bArr[length] = (byte) ((i2 & 127) | 128);
        } while (i2 > 127);
        a(bArr, length, bArr.length - length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2, byte[] bArr) {
        a(i, i2);
        a(bArr.length);
        a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, byte[] bArr) {
        b(i);
        a(bArr.length);
        a(bArr);
    }

    public void a(f fVar) {
        if (fVar == null) {
            throw new IOException("null object detected");
        }
        fVar.h().a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(t tVar) {
        if (tVar == null) {
            throw new IOException("null object detected");
        }
        tVar.a(new a(this.a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(byte[] bArr) {
        this.a.write(bArr);
    }

    void a(byte[] bArr, int i, int i2) {
        this.a.write(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r b() {
        return new bo(this.a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i) {
        this.a.write(i);
    }
}
