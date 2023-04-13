package org.a.a;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes.dex */
public class bo extends r {
    public bo(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // org.a.a.r
    public void a(f fVar) {
        if (fVar == null) {
            throw new IOException("null object detected");
        }
        fVar.h().g().a(this);
    }
}
