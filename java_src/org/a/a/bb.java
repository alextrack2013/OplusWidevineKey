package org.a.a;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes.dex */
public class bb extends r {
    public bb(OutputStream outputStream) {
        super(outputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.r
    public r a() {
        return this;
    }

    @Override // org.a.a.r
    public void a(f fVar) {
        if (fVar == null) {
            throw new IOException("null object detected");
        }
        fVar.h().f().a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.r
    public r b() {
        return this;
    }
}
