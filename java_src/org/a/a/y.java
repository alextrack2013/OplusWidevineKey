package org.a.a;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class y {
    private final InputStream a;
    private final int b;
    private final byte[][] c;

    public y(InputStream inputStream) {
        this(inputStream, bz.a(inputStream));
    }

    public y(InputStream inputStream, int i) {
        this.a = inputStream;
        this.b = i;
        this.c = new byte[11];
    }

    private void a(boolean z) {
        if (this.a instanceof bu) {
            ((bu) this.a).a(z);
        }
    }

    public f a() {
        int read = this.a.read();
        if (read == -1) {
            return null;
        }
        a(false);
        int a = k.a(this.a, read);
        boolean z = (read & 32) != 0;
        int b = k.b(this.a, this.b);
        if (b < 0) {
            if (z) {
                y yVar = new y(new bu(this.a, this.b), this.b);
                return (read & 64) != 0 ? new ad(a, yVar) : (read & 128) != 0 ? new am(true, a, yVar) : yVar.a(a);
            }
            throw new IOException("indefinite-length primitive encoding encountered");
        }
        bs bsVar = new bs(this.a, b);
        if ((read & 64) != 0) {
            return new ao(z, a, bsVar.b());
        }
        if ((read & 128) != 0) {
            return new am(z, a, new y(bsVar));
        }
        if (!z) {
            if (a != 4) {
                try {
                    return k.a(a, bsVar, this.c);
                } catch (IllegalArgumentException e) {
                    throw new i("corrupted stream detected", e);
                }
            }
            return new ba(bsVar);
        } else if (a != 4) {
            if (a != 8) {
                switch (a) {
                    case 16:
                        return new be(new y(bsVar));
                    case 17:
                        return new bg(new y(bsVar));
                    default:
                        throw new IOException("unknown tag " + a + " encountered");
                }
            }
            return new as(new y(bsVar));
        } else {
            return new ag(new y(bsVar));
        }
    }

    f a(int i) {
        if (i != 4) {
            if (i != 8) {
                switch (i) {
                    case 16:
                        return new ai(this);
                    case 17:
                        return new ak(this);
                    default:
                        throw new i("unknown BER object encountered: 0x" + Integer.toHexString(i));
                }
            }
            return new as(this);
        }
        return new ag(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t a(boolean z, int i) {
        if (z) {
            g b = b();
            return this.a instanceof bu ? b.a() == 1 ? new al(true, i, b.a(0)) : new al(false, i, ae.a(b)) : b.a() == 1 ? new bi(true, i, b.a(0)) : new bi(false, i, at.a(b));
        }
        return new bi(false, i, new az(((bs) this.a).b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g b() {
        g gVar = new g();
        while (true) {
            f a = a();
            if (a == null) {
                return gVar;
            }
            gVar.a(a instanceof bt ? ((bt) a).e() : a.h());
        }
    }
}
