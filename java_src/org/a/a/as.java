package org.a.a;

import java.io.IOException;
/* loaded from: classes.dex */
public class as implements bt, f {
    private y a;

    public as(y yVar) {
        this.a = yVar;
    }

    @Override // org.a.a.bt
    public t e() {
        try {
            return new ar(this.a.b());
        } catch (IllegalArgumentException e) {
            throw new i(e.getMessage(), e);
        }
    }

    @Override // org.a.a.f
    public t h() {
        try {
            return e();
        } catch (IOException e) {
            throw new s("unable to get DER object", e);
        } catch (IllegalArgumentException e2) {
            throw new s("unable to get DER object", e2);
        }
    }
}
