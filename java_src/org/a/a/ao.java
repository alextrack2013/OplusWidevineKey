package org.a.a;
/* loaded from: classes.dex */
public class ao extends a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(boolean z, int i, byte[] bArr) {
        super(z, i, bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.a, org.a.a.t
    public void a(r rVar) {
        rVar.a(this.a ? 96 : 64, this.b, this.c);
    }

    public String toString() {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[");
        if (a()) {
            stringBuffer.append("CONSTRUCTED ");
        }
        stringBuffer.append("APPLICATION ");
        stringBuffer.append(Integer.toString(b()));
        stringBuffer.append("]");
        if (this.c != null) {
            stringBuffer.append(" #");
            str = org.a.b.a.c.a(this.c);
        } else {
            str = " #null";
        }
        stringBuffer.append(str);
        stringBuffer.append(" ");
        return stringBuffer.toString();
    }
}
