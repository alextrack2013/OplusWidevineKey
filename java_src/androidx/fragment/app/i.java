package androidx.fragment.app;

import androidx.fragment.app.c;
import java.lang.reflect.InvocationTargetException;
/* compiled from: FragmentFactory.java */
/* loaded from: classes.dex */
public class i {
    private static final androidx.b.g<String, Class<?>> a = new androidx.b.g<>();

    private static Class<?> d(ClassLoader classLoader, String str) {
        Class<?> cls = a.get(str);
        if (cls == null) {
            Class<?> cls2 = Class.forName(str, false, classLoader);
            a.put(str, cls2);
            return cls2;
        }
        return cls;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(ClassLoader classLoader, String str) {
        try {
            return c.class.isAssignableFrom(d(classLoader, str));
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static Class<? extends c> b(ClassLoader classLoader, String str) {
        try {
            return d(classLoader, str);
        } catch (ClassCastException e) {
            throw new c.b("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e);
        } catch (ClassNotFoundException e2) {
            throw new c.b("Unable to instantiate fragment " + str + ": make sure class name exists", e2);
        }
    }

    public c c(ClassLoader classLoader, String str) {
        try {
            return b(classLoader, str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (IllegalAccessException e) {
            throw new c.b("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new c.b("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (NoSuchMethodException e3) {
            throw new c.b("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e3);
        } catch (InvocationTargetException e4) {
            throw new c.b("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e4);
        }
    }
}
