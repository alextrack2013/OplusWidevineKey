package org.a.b.a;
/* loaded from: classes.dex */
public class b extends IllegalStateException {
    private Throwable a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(String str, Throwable th) {
        super(str);
        this.a = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.a;
    }
}
