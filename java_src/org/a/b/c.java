package org.a.b;

import java.security.AccessControlException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Map;
/* loaded from: classes.dex */
public class c {
    private static final ThreadLocal a = new ThreadLocal();

    public static boolean a(String str) {
        try {
            String b = b(str);
            if (b != null) {
                return "true".equals(d.a(b));
            }
        } catch (AccessControlException unused) {
        }
        return false;
    }

    private static String b(final String str) {
        return (String) AccessController.doPrivileged(new PrivilegedAction() { // from class: org.a.b.c.1
            @Override // java.security.PrivilegedAction
            public Object run() {
                Map map = (Map) c.a.get();
                return map != null ? map.get(str) : System.getProperty(str);
            }
        });
    }
}
