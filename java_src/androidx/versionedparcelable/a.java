package androidx.versionedparcelable;

import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* compiled from: VersionedParcel.java */
/* loaded from: classes.dex */
public abstract class a {
    protected final androidx.b.a<String, Method> a;
    protected final androidx.b.a<String, Method> b;
    protected final androidx.b.a<String, Class> c;

    protected abstract void a(int i);

    protected abstract void a(Parcelable parcelable);

    protected abstract void a(CharSequence charSequence);

    protected abstract void a(String str);

    protected abstract void a(boolean z);

    public void a(boolean z, boolean z2) {
    }

    protected abstract void a(byte[] bArr);

    public boolean a() {
        return false;
    }

    protected abstract void b();

    protected abstract boolean b(int i);

    protected abstract a c();

    protected abstract void c(int i);

    protected abstract int d();

    protected abstract String e();

    protected abstract byte[] f();

    protected abstract CharSequence g();

    protected abstract <T extends Parcelable> T h();

    protected abstract boolean i();

    public a(androidx.b.a<String, Method> aVar, androidx.b.a<String, Method> aVar2, androidx.b.a<String, Class> aVar3) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
    }

    public void a(boolean z, int i) {
        c(i);
        a(z);
    }

    public void a(byte[] bArr, int i) {
        c(i);
        a(bArr);
    }

    public void a(CharSequence charSequence, int i) {
        c(i);
        a(charSequence);
    }

    public void a(int i, int i2) {
        c(i2);
        a(i);
    }

    public void a(String str, int i) {
        c(i);
        a(str);
    }

    public void a(Parcelable parcelable, int i) {
        c(i);
        a(parcelable);
    }

    public boolean b(boolean z, int i) {
        return !b(i) ? z : i();
    }

    public int b(int i, int i2) {
        return !b(i2) ? i : d();
    }

    public String b(String str, int i) {
        return !b(i) ? str : e();
    }

    public byte[] b(byte[] bArr, int i) {
        return !b(i) ? bArr : f();
    }

    public <T extends Parcelable> T b(T t, int i) {
        return !b(i) ? t : (T) h();
    }

    public CharSequence b(CharSequence charSequence, int i) {
        return !b(i) ? charSequence : g();
    }

    public void a(c cVar, int i) {
        c(i);
        a(cVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(c cVar) {
        if (cVar == null) {
            a((String) null);
            return;
        }
        b(cVar);
        a c = c();
        a((a) cVar, c);
        c.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void b(c cVar) {
        try {
            a(b((Class<? extends c>) cVar.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(cVar.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    public <T extends c> T b(T t, int i) {
        return !b(i) ? t : (T) j();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T extends c> T j() {
        String e = e();
        if (e == null) {
            return null;
        }
        return (T) a(e, c());
    }

    protected <T extends c> T a(String str, a aVar) {
        try {
            return (T) b(str).invoke(null, aVar);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    protected <T extends c> void a(T t, a aVar) {
        try {
            a(t.getClass()).invoke(null, t, aVar);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    private Method b(String str) {
        Method method = this.a.get(str);
        if (method == null) {
            System.currentTimeMillis();
            Method declaredMethod = Class.forName(str, true, a.class.getClassLoader()).getDeclaredMethod("read", a.class);
            this.a.put(str, declaredMethod);
            return declaredMethod;
        }
        return method;
    }

    private Method a(Class cls) {
        Method method = this.b.get(cls.getName());
        if (method == null) {
            Class b = b(cls);
            System.currentTimeMillis();
            Method declaredMethod = b.getDeclaredMethod("write", cls, a.class);
            this.b.put(cls.getName(), declaredMethod);
            return declaredMethod;
        }
        return method;
    }

    private Class b(Class<? extends c> cls) {
        Class cls2 = this.c.get(cls.getName());
        if (cls2 == null) {
            Class<?> cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            this.c.put(cls.getName(), cls3);
            return cls3;
        }
        return cls2;
    }
}
