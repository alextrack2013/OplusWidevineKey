package androidx.b;
/* compiled from: LongSparseArray.java */
/* loaded from: classes.dex */
public class d<E> implements Cloneable {
    private static final Object a = new Object();
    private boolean b;
    private long[] c;
    private Object[] d;
    private int e;

    public d() {
        this(10);
    }

    public d(int i) {
        this.b = false;
        if (i == 0) {
            this.c = c.b;
            this.d = c.c;
            return;
        }
        int b = c.b(i);
        this.c = new long[b];
        this.d = new Object[b];
    }

    /* renamed from: a */
    public d<E> clone() {
        try {
            d<E> dVar = (d) super.clone();
            dVar.c = (long[]) this.c.clone();
            dVar.d = (Object[]) this.d.clone();
            return dVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public E a(long j) {
        return a(j, null);
    }

    public E a(long j, E e) {
        int a2 = c.a(this.c, this.e, j);
        return (a2 < 0 || this.d[a2] == a) ? e : (E) this.d[a2];
    }

    public void b(long j) {
        int a2 = c.a(this.c, this.e, j);
        if (a2 < 0 || this.d[a2] == a) {
            return;
        }
        this.d[a2] = a;
        this.b = true;
    }

    private void d() {
        int i = this.e;
        long[] jArr = this.c;
        Object[] objArr = this.d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != a) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.b = false;
        this.e = i2;
    }

    public void b(long j, E e) {
        int a2 = c.a(this.c, this.e, j);
        if (a2 >= 0) {
            this.d[a2] = e;
            return;
        }
        int i = ~a2;
        if (i < this.e && this.d[i] == a) {
            this.c[i] = j;
            this.d[i] = e;
            return;
        }
        if (this.b && this.e >= this.c.length) {
            d();
            i = ~c.a(this.c, this.e, j);
        }
        if (this.e >= this.c.length) {
            int b = c.b(this.e + 1);
            long[] jArr = new long[b];
            Object[] objArr = new Object[b];
            System.arraycopy(this.c, 0, jArr, 0, this.c.length);
            System.arraycopy(this.d, 0, objArr, 0, this.d.length);
            this.c = jArr;
            this.d = objArr;
        }
        if (this.e - i != 0) {
            int i2 = i + 1;
            System.arraycopy(this.c, i, this.c, i2, this.e - i);
            System.arraycopy(this.d, i, this.d, i2, this.e - i);
        }
        this.c[i] = j;
        this.d[i] = e;
        this.e++;
    }

    public int b() {
        if (this.b) {
            d();
        }
        return this.e;
    }

    public long a(int i) {
        if (this.b) {
            d();
        }
        return this.c[i];
    }

    public E b(int i) {
        if (this.b) {
            d();
        }
        return (E) this.d[i];
    }

    public void c() {
        int i = this.e;
        Object[] objArr = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.e = 0;
        this.b = false;
    }

    public void c(long j, E e) {
        if (this.e != 0 && j <= this.c[this.e - 1]) {
            b(j, e);
            return;
        }
        if (this.b && this.e >= this.c.length) {
            d();
        }
        int i = this.e;
        if (i >= this.c.length) {
            int b = c.b(i + 1);
            long[] jArr = new long[b];
            Object[] objArr = new Object[b];
            System.arraycopy(this.c, 0, jArr, 0, this.c.length);
            System.arraycopy(this.d, 0, objArr, 0, this.d.length);
            this.c = jArr;
            this.d = objArr;
        }
        this.c[i] = j;
        this.d[i] = e;
        this.e = i + 1;
    }

    public String toString() {
        if (b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.e * 28);
        sb.append('{');
        for (int i = 0; i < this.e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(a(i));
            sb.append('=');
            E b = b(i);
            if (b != this) {
                sb.append(b);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
