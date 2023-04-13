package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BaseMenuWrapper.java */
/* loaded from: classes.dex */
public abstract class c {
    final Context a;
    private androidx.b.g<androidx.core.b.a.b, MenuItem> b;
    private androidx.b.g<androidx.core.b.a.c, SubMenu> c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context) {
        this.a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final MenuItem a(MenuItem menuItem) {
        if (menuItem instanceof androidx.core.b.a.b) {
            androidx.core.b.a.b bVar = (androidx.core.b.a.b) menuItem;
            if (this.b == null) {
                this.b = new androidx.b.g<>();
            }
            MenuItem menuItem2 = this.b.get(menuItem);
            if (menuItem2 == null) {
                j jVar = new j(this.a, bVar);
                this.b.put(bVar, jVar);
                return jVar;
            }
            return menuItem2;
        }
        return menuItem;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SubMenu a(SubMenu subMenu) {
        if (subMenu instanceof androidx.core.b.a.c) {
            androidx.core.b.a.c cVar = (androidx.core.b.a.c) subMenu;
            if (this.c == null) {
                this.c = new androidx.b.g<>();
            }
            SubMenu subMenu2 = this.c.get(cVar);
            if (subMenu2 == null) {
                s sVar = new s(this.a, cVar);
                this.c.put(cVar, sVar);
                return sVar;
            }
            return subMenu2;
        }
        return subMenu;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (this.b != null) {
            this.b.clear();
        }
        if (this.c != null) {
            this.c.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        if (this.b == null) {
            return;
        }
        int i2 = 0;
        while (i2 < this.b.size()) {
            if (this.b.b(i2).getGroupId() == i) {
                this.b.d(i2);
                i2--;
            }
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(int i) {
        if (this.b == null) {
            return;
        }
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            if (this.b.b(i2).getItemId() == i) {
                this.b.d(i2);
                return;
            }
        }
    }
}
