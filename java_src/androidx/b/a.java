package androidx.b;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* compiled from: ArrayMap.java */
/* loaded from: classes.dex */
public class a<K, V> extends g<K, V> implements Map<K, V> {
    f<K, V> a;

    public a() {
    }

    public a(int i) {
        super(i);
    }

    private f<K, V> b() {
        if (this.a == null) {
            this.a = new f<K, V>() { // from class: androidx.b.a.1
                @Override // androidx.b.f
                protected int a() {
                    return a.this.h;
                }

                @Override // androidx.b.f
                protected Object a(int i, int i2) {
                    return a.this.g[(i << 1) + i2];
                }

                @Override // androidx.b.f
                protected int a(Object obj) {
                    return a.this.a(obj);
                }

                @Override // androidx.b.f
                protected int b(Object obj) {
                    return a.this.b(obj);
                }

                @Override // androidx.b.f
                protected Map<K, V> b() {
                    return a.this;
                }

                @Override // androidx.b.f
                protected void a(K k, V v) {
                    a.this.put(k, v);
                }

                @Override // androidx.b.f
                protected V a(int i, V v) {
                    return a.this.a(i, (int) v);
                }

                @Override // androidx.b.f
                protected void a(int i) {
                    a.this.d(i);
                }

                @Override // androidx.b.f
                protected void c() {
                    a.this.clear();
                }
            };
        }
        return this.a;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        a(this.h + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public boolean a(Collection<?> collection) {
        return f.c(this, collection);
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return b().d();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return b().e();
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return b().f();
    }
}
