package org.a.a;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class ag implements q {
    private y a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(y yVar) {
        this.a = yVar;
    }

    @Override // org.a.a.q
    public InputStream b() {
        return new an(this.a);
    }

    @Override // org.a.a.bt
    public t e() {
        return new af(org.a.b.b.a.a(b()));
    }

    @Override // org.a.a.f
    public t h() {
        try {
            return e();
        } catch (IOException e) {
            throw new s("IOException converting stream to byte array: " + e.getMessage(), e);
        }
    }
}
