package org.a.a;

import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class k extends FilterInputStream {
    private final int a;
    private final boolean b;
    private final byte[][] c;

    public k(InputStream inputStream) {
        this(inputStream, bz.a(inputStream));
    }

    public k(InputStream inputStream, int i) {
        this(inputStream, i, false);
    }

    public k(InputStream inputStream, int i, boolean z) {
        super(inputStream);
        this.a = i;
        this.b = z;
        this.c = new byte[11];
    }

    public k(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), bArr.length);
    }

    public k(byte[] bArr, boolean z) {
        this(new ByteArrayInputStream(bArr), bArr.length, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(InputStream inputStream, int i) {
        int i2 = i & 31;
        if (i2 == 31) {
            int i3 = 0;
            int read = inputStream.read();
            if ((read & 127) == 0) {
                throw new IOException("corrupted stream - invalid high tag number found");
            }
            while (read >= 0 && (read & 128) != 0) {
                i3 = (i3 | (read & 127)) << 7;
                read = inputStream.read();
            }
            if (read < 0) {
                throw new EOFException("EOF found inside tag value.");
            }
            return i3 | (read & 127);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static t a(int i, bs bsVar, byte[][] bArr) {
        if (i != 10) {
            if (i != 12) {
                if (i != 30) {
                    switch (i) {
                        case 1:
                            return d.a(a(bsVar, bArr));
                        case 2:
                            return new l(bsVar.b(), false);
                        case 3:
                            return c.a(bsVar.a(), bsVar);
                        case 4:
                            return new az(bsVar.b());
                        case 5:
                            return ax.a;
                        case 6:
                            return o.a(a(bsVar, bArr));
                        default:
                            switch (i) {
                                case 18:
                                    return new ay(bsVar.b());
                                case 19:
                                    return new bc(bsVar.b());
                                case 20:
                                    return new bh(bsVar.b());
                                case 21:
                                    return new bl(bsVar.b());
                                case 22:
                                    return new aw(bsVar.b());
                                case 23:
                                    return new ab(bsVar.b());
                                case 24:
                                    return new j(bsVar.b());
                                case 25:
                                    return new av(bsVar.b());
                                case 26:
                                    return new bm(bsVar.b());
                                case 27:
                                    return new au(bsVar.b());
                                case 28:
                                    return new bk(bsVar.b());
                                default:
                                    throw new IOException("unknown tag " + i + " encountered");
                            }
                    }
                }
                return new ap(b(bsVar));
            }
            return new bj(bsVar.b());
        }
        return h.a(a(bsVar, bArr));
    }

    private static byte[] a(bs bsVar, byte[][] bArr) {
        int a = bsVar.a();
        if (bsVar.a() < bArr.length) {
            byte[] bArr2 = bArr[a];
            if (bArr2 == null) {
                bArr2 = new byte[a];
                bArr[a] = bArr2;
            }
            org.a.b.b.a.a(bsVar, bArr2);
            return bArr2;
        }
        return bsVar.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(InputStream inputStream, int i) {
        int read = inputStream.read();
        if (read < 0) {
            throw new EOFException("EOF found when length expected");
        }
        if (read == 128) {
            return -1;
        }
        if (read > 127) {
            int i2 = read & 127;
            if (i2 > 4) {
                throw new IOException("DER length more than 4 bytes: " + i2);
            }
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                int read2 = inputStream.read();
                if (read2 < 0) {
                    throw new EOFException("EOF found reading length");
                }
                i3 = (i3 << 8) + read2;
            }
            if (i3 < 0) {
                throw new IOException("corrupted stream - negative length found");
            }
            if (i3 >= i) {
                throw new IOException("corrupted stream - out of bounds length found");
            }
            return i3;
        }
        return read;
    }

    private static char[] b(bs bsVar) {
        int read;
        int a = bsVar.a() / 2;
        char[] cArr = new char[a];
        for (int i = 0; i < a; i++) {
            int read2 = bsVar.read();
            if (read2 < 0 || (read = bsVar.read()) < 0) {
                return cArr;
            }
            cArr[i] = (char) ((read2 << 8) | (read & 255));
        }
        return cArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.a;
    }

    g a(bs bsVar) {
        return new k(bsVar).c();
    }

    protected t a(int i, int i2, int i3) {
        boolean z = (i & 32) != 0;
        bs bsVar = new bs(this, i3);
        if ((i & 64) != 0) {
            return new ao(z, i2, bsVar.b());
        }
        if ((i & 128) != 0) {
            return new y(bsVar).a(z, i2);
        }
        if (z) {
            if (i2 == 4) {
                g a = a(bsVar);
                p[] pVarArr = new p[a.a()];
                for (int i4 = 0; i4 != pVarArr.length; i4++) {
                    pVarArr[i4] = (p) a.a(i4);
                }
                return new af(pVarArr);
            } else if (i2 != 8) {
                switch (i2) {
                    case 16:
                        return this.b ? new bw(bsVar.b()) : at.a(a(bsVar));
                    case 17:
                        return at.b(a(bsVar));
                    default:
                        throw new IOException("unknown tag " + i2 + " encountered");
                }
            } else {
                return new ar(a(bsVar));
            }
        }
        return a(i2, bsVar, this.c);
    }

    protected int b() {
        return b(this, this.a);
    }

    g c() {
        g gVar = new g();
        while (true) {
            t d = d();
            if (d == null) {
                return gVar;
            }
            gVar.a(d);
        }
    }

    public t d() {
        int read = read();
        if (read <= 0) {
            if (read == 0) {
                throw new IOException("unexpected end-of-contents marker");
            }
            return null;
        }
        int a = a(this, read);
        boolean z = (read & 32) != 0;
        int b = b();
        if (b >= 0) {
            try {
                return a(read, a, b);
            } catch (IllegalArgumentException e) {
                throw new i("corrupted stream detected", e);
            }
        } else if (z) {
            y yVar = new y(new bu(this, this.a), this.a);
            if ((read & 64) != 0) {
                return new ad(a, yVar).e();
            }
            if ((read & 128) != 0) {
                return new am(true, a, yVar).e();
            }
            if (a != 4) {
                if (a != 8) {
                    switch (a) {
                        case 16:
                            return new ai(yVar).e();
                        case 17:
                            return new ak(yVar).e();
                        default:
                            throw new IOException("unknown BER object encountered");
                    }
                }
                return new as(yVar).e();
            }
            return new ag(yVar).e();
        } else {
            throw new IOException("indefinite-length primitive encoding encountered");
        }
    }
}
