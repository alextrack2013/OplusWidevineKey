package androidx.b;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* compiled from: ArraySet.java */
/* loaded from: classes.dex */
public final class b<E> implements Collection<E>, Set<E> {
    private static final int[] c = new int[0];
    private static final Object[] d = new Object[0];
    private static Object[] e;
    private static int f;
    private static Object[] g;
    private static int h;
    Object[] a;
    int b;
    private int[] i;
    private f<E, E> j;

    private int a(Object obj, int i) {
        int i2 = this.b;
        if (i2 == 0) {
            return -1;
        }
        int a = c.a(this.i, i2, i);
        if (a >= 0 && !obj.equals(this.a[a])) {
            int i3 = a + 1;
            while (i3 < i2 && this.i[i3] == i) {
                if (obj.equals(this.a[i3])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = a - 1; i4 >= 0 && this.i[i4] == i; i4--) {
                if (obj.equals(this.a[i4])) {
                    return i4;
                }
            }
            return ~i3;
        }
        return a;
    }

    private int a() {
        int i = this.b;
        if (i == 0) {
            return -1;
        }
        int a = c.a(this.i, i, 0);
        if (a >= 0 && this.a[a] != null) {
            int i2 = a + 1;
            while (i2 < i && this.i[i2] == 0) {
                if (this.a[i2] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = a - 1; i3 >= 0 && this.i[i3] == 0; i3--) {
                if (this.a[i3] == null) {
                    return i3;
                }
            }
            return ~i2;
        }
        return a;
    }

    private void d(int i) {
        if (i == 8) {
            synchronized (b.class) {
                if (g != null) {
                    Object[] objArr = g;
                    this.a = objArr;
                    g = (Object[]) objArr[0];
                    this.i = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    h--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (b.class) {
                if (e != null) {
                    Object[] objArr2 = e;
                    this.a = objArr2;
                    e = (Object[]) objArr2[0];
                    this.i = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f--;
                    return;
                }
            }
        }
        this.i = new int[i];
        this.a = new Object[i];
    }

    private static void a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (b.class) {
                if (h < 10) {
                    objArr[0] = g;
                    objArr[1] = iArr;
                    for (int i2 = i - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    g = objArr;
                    h++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (b.class) {
                if (f < 10) {
                    objArr[0] = e;
                    objArr[1] = iArr;
                    for (int i3 = i - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    e = objArr;
                    f++;
                }
            }
        }
    }

    public b() {
        this(0);
    }

    public b(int i) {
        if (i == 0) {
            this.i = c;
            this.a = d;
        } else {
            d(i);
        }
        this.b = 0;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        if (this.b != 0) {
            a(this.i, this.a, this.b);
            this.i = c;
            this.a = d;
            this.b = 0;
        }
    }

    public void a(int i) {
        if (this.i.length < i) {
            int[] iArr = this.i;
            Object[] objArr = this.a;
            d(i);
            if (this.b > 0) {
                System.arraycopy(iArr, 0, this.i, 0, this.b);
                System.arraycopy(objArr, 0, this.a, 0, this.b);
            }
            a(iArr, objArr, this.b);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return a(obj) >= 0;
    }

    public int a(Object obj) {
        return obj == null ? a() : a(obj, obj.hashCode());
    }

    public E b(int i) {
        return (E) this.a[i];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.b <= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e2) {
        int i;
        int a;
        if (e2 == null) {
            a = a();
            i = 0;
        } else {
            int hashCode = e2.hashCode();
            i = hashCode;
            a = a(e2, hashCode);
        }
        if (a >= 0) {
            return false;
        }
        int i2 = ~a;
        if (this.b >= this.i.length) {
            int i3 = 4;
            if (this.b >= 8) {
                i3 = (this.b >> 1) + this.b;
            } else if (this.b >= 4) {
                i3 = 8;
            }
            int[] iArr = this.i;
            Object[] objArr = this.a;
            d(i3);
            if (this.i.length > 0) {
                System.arraycopy(iArr, 0, this.i, 0, iArr.length);
                System.arraycopy(objArr, 0, this.a, 0, objArr.length);
            }
            a(iArr, objArr, this.b);
        }
        if (i2 < this.b) {
            int i4 = i2 + 1;
            System.arraycopy(this.i, i2, this.i, i4, this.b - i2);
            System.arraycopy(this.a, i2, this.a, i4, this.b - i2);
        }
        this.i[i2] = i;
        this.a[i2] = e2;
        this.b++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int a = a(obj);
        if (a >= 0) {
            c(a);
            return true;
        }
        return false;
    }

    public E c(int i) {
        E e2 = (E) this.a[i];
        if (this.b <= 1) {
            a(this.i, this.a, this.b);
            this.i = c;
            this.a = d;
            this.b = 0;
        } else {
            int i2 = 8;
            if (this.i.length > 8 && this.b < this.i.length / 3) {
                if (this.b > 8) {
                    i2 = (this.b >> 1) + this.b;
                }
                int[] iArr = this.i;
                Object[] objArr = this.a;
                d(i2);
                this.b--;
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.i, 0, i);
                    System.arraycopy(objArr, 0, this.a, 0, i);
                }
                if (i < this.b) {
                    int i3 = i + 1;
                    System.arraycopy(iArr, i3, this.i, i, this.b - i);
                    System.arraycopy(objArr, i3, this.a, i, this.b - i);
                }
            } else {
                this.b--;
                if (i < this.b) {
                    int i4 = i + 1;
                    System.arraycopy(this.i, i4, this.i, i, this.b - i);
                    System.arraycopy(this.a, i4, this.a, i, this.b - i);
                }
                this.a[this.b] = null;
            }
        }
        return e2;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.b;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        Object[] objArr = new Object[this.b];
        System.arraycopy(this.a, 0, objArr, 0, this.b);
        return objArr;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.b) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.b));
        }
        System.arraycopy(this.a, 0, tArr, 0, this.b);
        if (tArr.length > this.b) {
            tArr[this.b] = null;
        }
        return tArr;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i = 0; i < this.b; i++) {
                try {
                    if (!set.contains(b(i))) {
                        return false;
                    }
                } catch (ClassCastException unused) {
                    return false;
                } catch (NullPointerException unused2) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.i;
        int i = this.b;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.b * 14);
        sb.append('{');
        for (int i = 0; i < this.b; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            E b = b(i);
            if (b != this) {
                sb.append(b);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    private f<E, E> b() {
        if (this.j == null) {
            this.j = new f<E, E>() { // from class: androidx.b.b.1
                @Override // androidx.b.f
                protected int a() {
                    return b.this.b;
                }

                @Override // androidx.b.f
                protected Object a(int i, int i2) {
                    return b.this.a[i];
                }

                @Override // androidx.b.f
                protected int a(Object obj) {
                    return b.this.a(obj);
                }

                @Override // androidx.b.f
                protected int b(Object obj) {
                    return b.this.a(obj);
                }

                @Override // androidx.b.f
                protected Map<E, E> b() {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // androidx.b.f
                protected void a(E e2, E e3) {
                    b.this.add(e2);
                }

                @Override // androidx.b.f
                protected E a(int i, E e2) {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // androidx.b.f
                protected void a(int i) {
                    b.this.c(i);
                }

                @Override // androidx.b.f
                protected void c() {
                    b.this.clear();
                }
            };
        }
        return this.j;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return b().e().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        a(this.b + collection.size());
        boolean z = false;
        for (E e2 : collection) {
            z |= add(e2);
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i = this.b - 1; i >= 0; i--) {
            if (!collection.contains(this.a[i])) {
                c(i);
                z = true;
            }
        }
        return z;
    }
}
