package androidx.b;

import java.util.LinkedHashMap;
import java.util.Locale;
/* compiled from: LruCache.java */
/* loaded from: classes.dex */
public class e<K, V> {
    private final LinkedHashMap<K, V> a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;

    protected void a(boolean z, K k, V v, V v2) {
    }

    protected int b(K k, V v) {
        return 1;
    }

    protected V b(K k) {
        return null;
    }

    public e(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.c = i;
        this.a = new LinkedHashMap<>(0, 0.75f, true);
    }

    public final V a(K k) {
        V put;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            V v = this.a.get(k);
            if (v != null) {
                this.g++;
                return v;
            }
            this.h++;
            V b = b(k);
            if (b == null) {
                return null;
            }
            synchronized (this) {
                this.e++;
                put = this.a.put(k, b);
                if (put != null) {
                    this.a.put(k, put);
                } else {
                    this.b += c(k, b);
                }
            }
            if (put != null) {
                a(false, k, b, put);
                return put;
            }
            a(this.c);
            return b;
        }
    }

    public final V a(K k, V v) {
        V put;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.d++;
            this.b += c(k, v);
            put = this.a.put(k, v);
            if (put != null) {
                this.b -= c(k, put);
            }
        }
        if (put != null) {
            a(false, k, put, v);
        }
        a(this.c);
        return put;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0071, code lost:
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r5) {
        /*
            r4 = this;
        L0:
            monitor-enter(r4)
            int r0 = r4.b     // Catch: java.lang.Throwable -> L72
            if (r0 < 0) goto L53
            java.util.LinkedHashMap<K, V> r0 = r4.a     // Catch: java.lang.Throwable -> L72
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L72
            if (r0 == 0) goto L12
            int r0 = r4.b     // Catch: java.lang.Throwable -> L72
            if (r0 == 0) goto L12
            goto L53
        L12:
            int r0 = r4.b     // Catch: java.lang.Throwable -> L72
            if (r0 <= r5) goto L51
            java.util.LinkedHashMap<K, V> r0 = r4.a     // Catch: java.lang.Throwable -> L72
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L72
            if (r0 == 0) goto L1f
            goto L51
        L1f:
            java.util.LinkedHashMap<K, V> r0 = r4.a     // Catch: java.lang.Throwable -> L72
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L72
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L72
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L72
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L72
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L72
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L72
            java.util.LinkedHashMap<K, V> r2 = r4.a     // Catch: java.lang.Throwable -> L72
            r2.remove(r1)     // Catch: java.lang.Throwable -> L72
            int r2 = r4.b     // Catch: java.lang.Throwable -> L72
            int r3 = r4.c(r1, r0)     // Catch: java.lang.Throwable -> L72
            int r2 = r2 - r3
            r4.b = r2     // Catch: java.lang.Throwable -> L72
            int r2 = r4.f     // Catch: java.lang.Throwable -> L72
            r3 = 1
            int r2 = r2 + r3
            r4.f = r2     // Catch: java.lang.Throwable -> L72
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L72
            r2 = 0
            r4.a(r3, r1, r0, r2)
            goto L0
        L51:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L72
            return
        L53:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L72
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L72
            r0.<init>()     // Catch: java.lang.Throwable -> L72
            java.lang.Class r1 = r4.getClass()     // Catch: java.lang.Throwable -> L72
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L72
            r0.append(r1)     // Catch: java.lang.Throwable -> L72
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            r0.append(r1)     // Catch: java.lang.Throwable -> L72
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L72
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L72
            throw r5     // Catch: java.lang.Throwable -> L72
        L72:
            r5 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L72
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.b.e.a(int):void");
    }

    private int c(K k, V v) {
        int b = b(k, v);
        if (b < 0) {
            throw new IllegalStateException("Negative size: " + k + "=" + v);
        }
        return b;
    }

    public final synchronized String toString() {
        int i;
        i = this.g + this.h;
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.c), Integer.valueOf(this.g), Integer.valueOf(this.h), Integer.valueOf(i != 0 ? (this.g * 100) / i : 0));
    }
}
