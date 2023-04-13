package androidx.constraintlayout.b;
/* compiled from: Pools.java */
/* loaded from: classes.dex */
final class f {

    /* compiled from: Pools.java */
    /* loaded from: classes.dex */
    interface a<T> {
        T a();

        void a(T[] tArr, int i);

        boolean a(T t);
    }

    /* compiled from: Pools.java */
    /* loaded from: classes.dex */
    static class b<T> implements a<T> {
        private final Object[] a;
        private int b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.a = new Object[i];
        }

        @Override // androidx.constraintlayout.b.f.a
        public T a() {
            if (this.b > 0) {
                int i = this.b - 1;
                T t = (T) this.a[i];
                this.a[i] = null;
                this.b--;
                return t;
            }
            return null;
        }

        @Override // androidx.constraintlayout.b.f.a
        public boolean a(T t) {
            if (this.b < this.a.length) {
                this.a[this.b] = t;
                this.b++;
                return true;
            }
            return false;
        }

        @Override // androidx.constraintlayout.b.f.a
        public void a(T[] tArr, int i) {
            if (i > tArr.length) {
                i = tArr.length;
            }
            for (int i2 = 0; i2 < i; i2++) {
                T t = tArr[i2];
                if (this.b < this.a.length) {
                    this.a[this.b] = t;
                    this.b++;
                }
            }
        }
    }
}
