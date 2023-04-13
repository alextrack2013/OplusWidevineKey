package org.a.a;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class ba implements q {
    private bs a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ba(bs bsVar) {
        this.a = bsVar;
    }

    @Override // org.a.a.q
    public InputStream b() {
        return this.a;
    }

    @Override // org.a.a.bt
    public t e() {
        return new az(this.a.b());
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
