package org.a.a;

import java.io.IOException;
/* loaded from: classes.dex */
public class i extends IOException {
    private Throwable a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(String str, Throwable th) {
        super(str);
        this.a = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.a;
    }
}
