package org.a.a;

import java.io.IOException;
/* loaded from: classes.dex */
public class ak implements x {
    private y a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(y yVar) {
        this.a = yVar;
    }

    @Override // org.a.a.bt
    public t e() {
        return new aj(this.a.b());
    }

    @Override // org.a.a.f
    public t h() {
        try {
            return e();
        } catch (IOException e) {
            throw new s(e.getMessage(), e);
        }
    }
}
