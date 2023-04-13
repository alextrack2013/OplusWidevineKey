package org.a.a;

import java.io.InputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class bx extends InputStream {
    protected final InputStream a;
    private int b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bx(InputStream inputStream, int i) {
        this.a = inputStream;
        this.b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(boolean z) {
        if (this.a instanceof bu) {
            ((bu) this.a).a(z);
        }
    }
}
