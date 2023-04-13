package org.a.a;

import java.io.IOException;
/* loaded from: classes.dex */
public class bg implements x {
    private y a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bg(y yVar) {
        this.a = yVar;
    }

    @Override // org.a.a.bt
    public t e() {
        return new bf(this.a.b(), false);
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
