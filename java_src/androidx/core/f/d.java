package androidx.core.f;
/* compiled from: Preconditions.java */
/* loaded from: classes.dex */
public final class d {
    public static <T> T a(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }

    public static <T> T a(T t, Object obj) {
        if (t == null) {
            throw new NullPointerException(String.valueOf(obj));
        }
        return t;
    }

    public static int a(int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        return i;
    }
}
