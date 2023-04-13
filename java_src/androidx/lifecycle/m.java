package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Lifecycling.java */
/* loaded from: classes.dex */
public class m {
    private static Map<Class<?>, Integer> a = new HashMap();
    private static Map<Class<?>, List<Constructor<? extends d>>> b = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h a(Object obj) {
        boolean z = obj instanceof h;
        boolean z2 = obj instanceof c;
        if (z && z2) {
            return new FullLifecycleObserverAdapter((c) obj, (h) obj);
        }
        if (z2) {
            return new FullLifecycleObserverAdapter((c) obj, null);
        }
        if (z) {
            return (h) obj;
        }
        Class<?> cls = obj.getClass();
        if (b(cls) == 2) {
            List<Constructor<? extends d>> list = b.get(cls);
            if (list.size() == 1) {
                return new SingleGeneratedAdapterObserver(a(list.get(0), obj));
            }
            d[] dVarArr = new d[list.size()];
            for (int i = 0; i < list.size(); i++) {
                dVarArr[i] = a(list.get(i), obj);
            }
            return new CompositeGeneratedAdaptersObserver(dVarArr);
        }
        return new ReflectiveGenericLifecycleObserver(obj);
    }

    private static d a(Constructor<? extends d> constructor, Object obj) {
        try {
            return constructor.newInstance(obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    private static Constructor<? extends d> a(Class<?> cls) {
        try {
            Package r0 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r0 != null ? r0.getName() : "";
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String a2 = a(canonicalName);
            if (!name.isEmpty()) {
                a2 = name + "." + a2;
            }
            Constructor declaredConstructor = Class.forName(a2).getDeclaredConstructor(cls);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor;
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    private static int b(Class<?> cls) {
        Integer num = a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int c = c(cls);
        a.put(cls, Integer.valueOf(c));
        return c;
    }

    private static int c(Class<?> cls) {
        Class<?>[] interfaces;
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends d> a2 = a(cls);
        if (a2 != null) {
            b.put(cls, Collections.singletonList(a2));
            return 2;
        } else if (a.a.a(cls)) {
            return 1;
        } else {
            Class<? super Object> superclass = cls.getSuperclass();
            ArrayList arrayList = null;
            if (d(superclass)) {
                if (b(superclass) == 1) {
                    return 1;
                }
                arrayList = new ArrayList(b.get(superclass));
            }
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (d(cls2)) {
                    if (b(cls2) == 1) {
                        return 1;
                    }
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.addAll(b.get(cls2));
                }
            }
            if (arrayList != null) {
                b.put(cls, arrayList);
                return 2;
            }
            return 1;
        }
    }

    private static boolean d(Class<?> cls) {
        return cls != null && i.class.isAssignableFrom(cls);
    }

    public static String a(String str) {
        return str.replace(".", "_") + "_LifecycleAdapter";
    }
}
