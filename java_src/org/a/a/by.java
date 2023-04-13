package org.a.a;
/* loaded from: classes.dex */
public class by {
    private String a;
    private int b = 0;

    public by(String str) {
        this.a = str;
    }

    public boolean a() {
        return this.b != -1;
    }

    public String b() {
        if (this.b == -1) {
            return null;
        }
        int indexOf = this.a.indexOf(46, this.b);
        if (indexOf == -1) {
            String substring = this.a.substring(this.b);
            this.b = -1;
            return substring;
        }
        String substring2 = this.a.substring(this.b, indexOf);
        this.b = indexOf + 1;
        return substring2;
    }
}
