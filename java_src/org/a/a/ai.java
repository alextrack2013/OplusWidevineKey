package org.a.a;

import java.io.IOException;
/* loaded from: classes.dex */
public class ai implements v {
    private y a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(y yVar) {
        this.a = yVar;
    }

    @Override // org.a.a.bt
    public t e() {
        return new ah(this.a.b());
    }

    @Override // org.a.a.f
    public t h() {
        try {
            return e();
        } catch (IOException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }
}
