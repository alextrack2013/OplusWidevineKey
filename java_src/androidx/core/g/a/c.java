package androidx.core.g.a;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;
/* compiled from: AccessibilityNodeProviderCompat.java */
/* loaded from: classes.dex */
public class c {
    private final Object a;

    public androidx.core.g.a.b a(int i) {
        return null;
    }

    public List<androidx.core.g.a.b> a(String str, int i) {
        return null;
    }

    public boolean a(int i, int i2, Bundle bundle) {
        return false;
    }

    public androidx.core.g.a.b b(int i) {
        return null;
    }

    /* compiled from: AccessibilityNodeProviderCompat.java */
    /* loaded from: classes.dex */
    static class a extends AccessibilityNodeProvider {
        final c a;

        a(c cVar) {
            this.a = cVar;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            androidx.core.g.a.b a = this.a.a(i);
            if (a == null) {
                return null;
            }
            return a.a();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            List<androidx.core.g.a.b> a = this.a.a(str, i);
            if (a == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = a.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(a.get(i2).a());
            }
            return arrayList;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            return this.a.a(i, i2, bundle);
        }
    }

    /* compiled from: AccessibilityNodeProviderCompat.java */
    /* loaded from: classes.dex */
    static class b extends a {
        b(c cVar) {
            super(cVar);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i) {
            androidx.core.g.a.b b = this.a.b(i);
            if (b == null) {
                return null;
            }
            return b.a();
        }
    }

    public c() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.a = new b(this);
        } else if (Build.VERSION.SDK_INT >= 16) {
            this.a = new a(this);
        } else {
            this.a = null;
        }
    }

    public c(Object obj) {
        this.a = obj;
    }

    public Object a() {
        return this.a;
    }
}
