package org.a.a;

import java.io.IOException;
/* loaded from: classes.dex */
public class am implements aa {
    private boolean a;
    private int b;
    private y c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(boolean z, int i, y yVar) {
        this.a = z;
        this.b = i;
        this.c = yVar;
    }

    @Override // org.a.a.bt
    public t e() {
        return this.c.a(this.a, this.b);
    }

    @Override // org.a.a.f
    public t h() {
        try {
            return e();
        } catch (IOException e) {
            throw new s(e.getMessage());
        }
    }
}
