package androidx.b;

import java.util.ConcurrentModificationException;
import java.util.Map;
/* compiled from: SimpleArrayMap.java */
/* loaded from: classes.dex */
public class g<K, V> {
    static Object[] b;
    static int c;
    static Object[] d;
    static int e;
    int[] f;
    Object[] g;
    int h;

    private static int a(int[] iArr, int i, int i2) {
        try {
            return c.a(iArr, i, i2);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    int a(Object obj, int i) {
        int i2 = this.h;
        if (i2 == 0) {
            return -1;
        }
        int a = a(this.f, i2, i);
        if (a >= 0 && !obj.equals(this.g[a << 1])) {
            int i3 = a + 1;
            while (i3 < i2 && this.f[i3] == i) {
                if (obj.equals(this.g[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = a - 1; i4 >= 0 && this.f[i4] == i; i4--) {
                if (obj.equals(this.g[i4 << 1])) {
                    return i4;
                }
            }
            return ~i3;
        }
        return a;
    }

    int a() {
        int i = this.h;
        if (i == 0) {
            return -1;
        }
        int a = a(this.f, i, 0);
        if (a >= 0 && this.g[a << 1] != null) {
            int i2 = a + 1;
            while (i2 < i && this.f[i2] == 0) {
                if (this.g[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = a - 1; i3 >= 0 && this.f[i3] == 0; i3--) {
                if (this.g[i3 << 1] == null) {
                    return i3;
                }
            }
            return ~i2;
        }
        return a;
    }

    private void e(int i) {
        if (i == 8) {
            synchronized (g.class) {
                if (d != null) {
                    Object[] objArr = d;
                    this.g = objArr;
                    d = (Object[]) objArr[0];
                    this.f = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    e--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (g.class) {
                if (b != null) {
                    Object[] objArr2 = b;
                    this.g = objArr2;
                    b = (Object[]) objArr2[0];
                    this.f = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    c--;
                    return;
                }
            }
        }
        this.f = new int[i];
        this.g = new Object[i << 1];
    }

    private static void a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (g.class) {
                if (e < 10) {
                    objArr[0] = d;
                    objArr[1] = iArr;
                    for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    d = objArr;
                    e++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (g.class) {
                if (c < 10) {
                    objArr[0] = b;
                    objArr[1] = iArr;
                    for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    b = objArr;
                    c++;
                }
            }
        }
    }

    public g() {
        this.f = c.a;
        this.g = c.c;
        this.h = 0;
    }

    public g(int i) {
        if (i == 0) {
            this.f = c.a;
            this.g = c.c;
        } else {
            e(i);
        }
        this.h = 0;
    }

    public void clear() {
        if (this.h > 0) {
            int[] iArr = this.f;
            Object[] objArr = this.g;
            int i = this.h;
            this.f = c.a;
            this.g = c.c;
            this.h = 0;
            a(iArr, objArr, i);
        }
        if (this.h > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public void a(int i) {
        int i2 = this.h;
        if (this.f.length < i) {
            int[] iArr = this.f;
            Object[] objArr = this.g;
            e(i);
            if (this.h > 0) {
                System.arraycopy(iArr, 0, this.f, 0, i2);
                System.arraycopy(objArr, 0, this.g, 0, i2 << 1);
            }
            a(iArr, objArr, i2);
        }
        if (this.h != i2) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return a(obj) >= 0;
    }

    public int a(Object obj) {
        return obj == null ? a() : a(obj, obj.hashCode());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(Object obj) {
        int i = this.h * 2;
        Object[] objArr = this.g;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public boolean containsValue(Object obj) {
        return b(obj) >= 0;
    }

    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(Object obj, V v) {
        int a = a(obj);
        return a >= 0 ? (V) this.g[(a << 1) + 1] : v;
    }

    public K b(int i) {
        return (K) this.g[i << 1];
    }

    public V c(int i) {
        return (V) this.g[(i << 1) + 1];
    }

    public V a(int i, V v) {
        int i2 = (i << 1) + 1;
        V v2 = (V) this.g[i2];
        this.g[i2] = v;
        return v2;
    }

    public boolean isEmpty() {
        return this.h <= 0;
    }

    public V put(K k, V v) {
        int i;
        int a;
        int i2 = this.h;
        if (k == null) {
            a = a();
            i = 0;
        } else {
            int hashCode = k.hashCode();
            i = hashCode;
            a = a(k, hashCode);
        }
        if (a >= 0) {
            int i3 = (a << 1) + 1;
            V v2 = (V) this.g[i3];
            this.g[i3] = v;
            return v2;
        }
        int i4 = ~a;
        if (i2 >= this.f.length) {
            int i5 = 4;
            if (i2 >= 8) {
                i5 = (i2 >> 1) + i2;
            } else if (i2 >= 4) {
                i5 = 8;
            }
            int[] iArr = this.f;
            Object[] objArr = this.g;
            e(i5);
            if (i2 != this.h) {
                throw new ConcurrentModificationException();
            }
            if (this.f.length > 0) {
                System.arraycopy(iArr, 0, this.f, 0, iArr.length);
                System.arraycopy(objArr, 0, this.g, 0, objArr.length);
            }
            a(iArr, objArr, i2);
        }
        if (i4 < i2) {
            int i6 = i4 + 1;
            System.arraycopy(this.f, i4, this.f, i6, i2 - i4);
            System.arraycopy(this.g, i4 << 1, this.g, i6 << 1, (this.h - i4) << 1);
        }
        if (i2 != this.h || i4 >= this.f.length) {
            throw new ConcurrentModificationException();
        }
        this.f[i4] = i;
        int i7 = i4 << 1;
        this.g[i7] = k;
        this.g[i7 + 1] = v;
        this.h++;
        return null;
    }

    public V putIfAbsent(K k, V v) {
        V v2 = get(k);
        return v2 == null ? put(k, v) : v2;
    }

    public V remove(Object obj) {
        int a = a(obj);
        if (a >= 0) {
            return d(a);
        }
        return null;
    }

    public boolean remove(Object obj, Object obj2) {
        int a = a(obj);
        if (a >= 0) {
            V c2 = c(a);
            if (obj2 == c2 || (obj2 != null && obj2.equals(c2))) {
                d(a);
                return true;
            }
            return false;
        }
        return false;
    }

    public V d(int i) {
        int i2 = i << 1;
        V v = (V) this.g[i2 + 1];
        int i3 = this.h;
        int i4 = 0;
        if (i3 <= 1) {
            a(this.f, this.g, i3);
            this.f = c.a;
            this.g = c.c;
        } else {
            int i5 = i3 - 1;
            if (this.f.length > 8 && this.h < this.f.length / 3) {
                int i6 = i3 > 8 ? i3 + (i3 >> 1) : 8;
                int[] iArr = this.f;
                Object[] objArr = this.g;
                e(i6);
                if (i3 != this.h) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f, 0, i);
                    System.arraycopy(objArr, 0, this.g, 0, i2);
                }
                if (i < i5) {
                    int i7 = i + 1;
                    int i8 = i5 - i;
                    System.arraycopy(iArr, i7, this.f, i, i8);
                    System.arraycopy(objArr, i7 << 1, this.g, i2, i8 << 1);
                }
            } else {
                if (i < i5) {
                    int i9 = i + 1;
                    int i10 = i5 - i;
                    System.arraycopy(this.f, i9, this.f, i, i10);
                    System.arraycopy(this.g, i9 << 1, this.g, i2, i10 << 1);
                }
                int i11 = i5 << 1;
                this.g[i11] = null;
                this.g[i11 + 1] = null;
            }
            i4 = i5;
        }
        if (i3 != this.h) {
            throw new ConcurrentModificationException();
        }
        this.h = i4;
        return v;
    }

    public V replace(K k, V v) {
        int a = a(k);
        if (a >= 0) {
            return a(a, (int) v);
        }
        return null;
    }

    public boolean replace(K k, V v, V v2) {
        int a = a(k);
        if (a >= 0) {
            V c2 = c(a);
            if (c2 == v || (v != null && v.equals(c2))) {
                a(a, (int) v2);
                return true;
            }
            return false;
        }
        return false;
    }

    public int size() {
        return this.h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (size() != gVar.size()) {
                return false;
            }
            for (int i = 0; i < this.h; i++) {
                try {
                    K b2 = b(i);
                    V c2 = c(i);
                    Object obj2 = gVar.get(b2);
                    if (c2 == null) {
                        if (obj2 != null || !gVar.containsKey(b2)) {
                            return false;
                        }
                    } else if (!c2.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException unused) {
                    return false;
                } catch (NullPointerException unused2) {
                    return false;
                }
            }
            return true;
        } else if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.h; i2++) {
                try {
                    K b3 = b(i2);
                    V c3 = c(i2);
                    Object obj3 = map.get(b3);
                    if (c3 == null) {
                        if (obj3 != null || !map.containsKey(b3)) {
                            return false;
                        }
                    } else if (!c3.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException unused3) {
                    return false;
                } catch (NullPointerException unused4) {
                    return false;
                }
            }
            return true;
        } else {
            return false;
        }
    }

    public int hashCode() {
        int[] iArr = this.f;
        Object[] objArr = this.g;
        int i = this.h;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            i4 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return i4;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.h * 28);
        sb.append('{');
        for (int i = 0; i < this.h; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K b2 = b(i);
            if (b2 != this) {
                sb.append(b2);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V c2 = c(i);
            if (c2 != this) {
                sb.append(c2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
