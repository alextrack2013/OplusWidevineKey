package org.a.a;

import java.io.IOException;
/* loaded from: classes.dex */
public class ad implements b {
    private final int a;
    private final y b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(int i, y yVar) {
        this.a = i;
        this.b = yVar;
    }

    @Override // org.a.a.bt
    public t e() {
        return new ac(this.a, this.b.b());
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
