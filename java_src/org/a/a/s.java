package org.a.a;
/* loaded from: classes.dex */
public class s extends IllegalStateException {
    private Throwable a;

    public s(String str) {
        super(str);
    }

    public s(String str, Throwable th) {
        super(str);
        this.a = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.a;
    }
}
