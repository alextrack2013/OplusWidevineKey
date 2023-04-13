package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.g.u;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: MenuBuilder.java */
/* loaded from: classes.dex */
public class g implements androidx.core.b.a.a {
    private static final int[] d = {1, 4, 5, 3, 2, 0};
    private boolean A;
    CharSequence a;
    Drawable b;
    View c;
    private final Context e;
    private final Resources f;
    private boolean g;
    private boolean h;
    private a i;
    private ContextMenu.ContextMenuInfo q;
    private i y;
    private int p = 0;
    private boolean r = false;
    private boolean s = false;
    private boolean t = false;
    private boolean u = false;
    private boolean v = false;
    private ArrayList<i> w = new ArrayList<>();
    private CopyOnWriteArrayList<WeakReference<m>> x = new CopyOnWriteArrayList<>();
    private boolean z = false;
    private ArrayList<i> j = new ArrayList<>();
    private ArrayList<i> k = new ArrayList<>();
    private boolean l = true;
    private ArrayList<i> m = new ArrayList<>();
    private ArrayList<i> n = new ArrayList<>();
    private boolean o = true;

    /* compiled from: MenuBuilder.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(g gVar);

        boolean a(g gVar, MenuItem menuItem);
    }

    /* compiled from: MenuBuilder.java */
    /* loaded from: classes.dex */
    public interface b {
        boolean a(i iVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a() {
        return "android:menu:actionviewstates";
    }

    public g q() {
        return this;
    }

    public g(Context context) {
        this.e = context;
        this.f = context.getResources();
        e(true);
    }

    public g a(int i) {
        this.p = i;
        return this;
    }

    public void a(m mVar) {
        a(mVar, this.e);
    }

    public void a(m mVar, Context context) {
        this.x.add(new WeakReference<>(mVar));
        mVar.a(context, this);
        this.o = true;
    }

    public void b(m mVar) {
        Iterator<WeakReference<m>> it = this.x.iterator();
        while (it.hasNext()) {
            WeakReference<m> next = it.next();
            m mVar2 = next.get();
            if (mVar2 == null || mVar2 == mVar) {
                this.x.remove(next);
            }
        }
    }

    private void d(boolean z) {
        if (this.x.isEmpty()) {
            return;
        }
        h();
        Iterator<WeakReference<m>> it = this.x.iterator();
        while (it.hasNext()) {
            WeakReference<m> next = it.next();
            m mVar = next.get();
            if (mVar == null) {
                this.x.remove(next);
            } else {
                mVar.a(z);
            }
        }
        i();
    }

    private boolean a(r rVar, m mVar) {
        if (this.x.isEmpty()) {
            return false;
        }
        boolean a2 = mVar != null ? mVar.a(rVar) : false;
        Iterator<WeakReference<m>> it = this.x.iterator();
        while (it.hasNext()) {
            WeakReference<m> next = it.next();
            m mVar2 = next.get();
            if (mVar2 == null) {
                this.x.remove(next);
            } else if (!a2) {
                a2 = mVar2.a(rVar);
            }
        }
        return a2;
    }

    public void a(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((r) item.getSubMenu()).a(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(a(), sparseArray);
        }
    }

    public void b(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(a());
        int size = size();
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((r) item.getSubMenu()).b(bundle);
            }
        }
        int i2 = bundle.getInt("android:menu:expandedactionview");
        if (i2 <= 0 || (findItem = findItem(i2)) == null) {
            return;
        }
        findItem.expandActionView();
    }

    public void a(a aVar) {
        this.i = aVar;
    }

    protected MenuItem a(int i, int i2, int i3, CharSequence charSequence) {
        int f = f(i3);
        i a2 = a(i, i2, i3, f, charSequence, this.p);
        if (this.q != null) {
            a2.a(this.q);
        }
        this.j.add(a(this.j, f), a2);
        b(true);
        return a2;
    }

    private i a(int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        return new i(this, i, i2, i3, i4, charSequence, i5);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return a(0, 0, 0, this.f.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return a(i, i2, i3, this.f.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        i iVar = (i) a(i, i2, i3, charSequence);
        r rVar = new r(this.e, this, iVar);
        iVar.a(rVar);
        return rVar;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f.getString(i4));
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.z = z;
    }

    public boolean b() {
        return this.z;
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        PackageManager packageManager = this.e.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        for (int i5 = 0; i5 < size; i5++) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i5);
            Intent intent2 = new Intent(resolveInfo.specificIndex < 0 ? intent : intentArr[resolveInfo.specificIndex]);
            intent2.setComponent(new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name));
            MenuItem intent3 = add(i, i2, i3, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && resolveInfo.specificIndex >= 0) {
                menuItemArr[resolveInfo.specificIndex] = intent3;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        a(b(i), true);
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int c = c(i);
        if (c >= 0) {
            int size = this.j.size() - c;
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (i2 >= size || this.j.get(c).getGroupId() != i) {
                    break;
                }
                a(c, false);
                i2 = i3;
            }
            b(true);
        }
    }

    private void a(int i, boolean z) {
        if (i < 0 || i >= this.j.size()) {
            return;
        }
        this.j.remove(i);
        if (z) {
            b(true);
        }
    }

    @Override // android.view.Menu
    public void clear() {
        if (this.y != null) {
            d(this.y);
        }
        this.j.clear();
        b(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.j.size();
        h();
        for (int i = 0; i < size; i++) {
            i iVar = this.j.get(i);
            if (iVar.getGroupId() == groupId && iVar.g() && iVar.isCheckable()) {
                iVar.b(iVar == menuItem);
            }
        }
        i();
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.j.size();
        for (int i2 = 0; i2 < size; i2++) {
            i iVar = this.j.get(i2);
            if (iVar.getGroupId() == i) {
                iVar.a(z2);
                iVar.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        int size = this.j.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            i iVar = this.j.get(i2);
            if (iVar.getGroupId() == i && iVar.c(z)) {
                z2 = true;
            }
        }
        if (z2) {
            b(true);
        }
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.j.size();
        for (int i2 = 0; i2 < size; i2++) {
            i iVar = this.j.get(i2);
            if (iVar.getGroupId() == i) {
                iVar.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.A) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.j.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            i iVar = this.j.get(i2);
            if (iVar.getItemId() == i) {
                return iVar;
            }
            if (iVar.hasSubMenu() && (findItem = iVar.getSubMenu().findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    public int b(int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.j.get(i2).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    public int c(int i) {
        return a(i, 0);
    }

    public int a(int i, int i2) {
        int size = size();
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < size) {
            if (this.j.get(i2).getGroupId() == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    @Override // android.view.Menu
    public int size() {
        return this.j.size();
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.j.get(i);
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return a(i, keyEvent) != null;
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.g = z;
        b(false);
    }

    private static int f(int i) {
        int i2 = ((-65536) & i) >> 16;
        if (i2 < 0 || i2 >= d.length) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        return (i & 65535) | (d[i2] << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return this.g;
    }

    private void e(boolean z) {
        boolean z2 = true;
        this.h = (z && this.f.getConfiguration().keyboard != 1 && u.a(ViewConfiguration.get(this.e), this.e)) ? false : false;
    }

    public boolean d() {
        return this.h;
    }

    Resources e() {
        return this.f;
    }

    public Context f() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(g gVar, MenuItem menuItem) {
        return this.i != null && this.i.a(gVar, menuItem);
    }

    public void g() {
        if (this.i != null) {
            this.i.a(this);
        }
    }

    private static int a(ArrayList<i> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).c() <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        i a2 = a(i, keyEvent);
        boolean a3 = a2 != null ? a(a2, i2) : false;
        if ((i2 & 2) != 0) {
            a(true);
        }
        return a3;
    }

    void a(List<i> list, int i, KeyEvent keyEvent) {
        boolean c = c();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.j.size();
            for (int i2 = 0; i2 < size; i2++) {
                i iVar = this.j.get(i2);
                if (iVar.hasSubMenu()) {
                    ((g) iVar.getSubMenu()).a(list, i, keyEvent);
                }
                char alphabeticShortcut = c ? iVar.getAlphabeticShortcut() : iVar.getNumericShortcut();
                if (((modifiers & 69647) == ((c ? iVar.getAlphabeticModifiers() : iVar.getNumericModifiers()) & 69647)) && alphabeticShortcut != 0 && ((alphabeticShortcut == keyData.meta[0] || alphabeticShortcut == keyData.meta[2] || (c && alphabeticShortcut == '\b' && i == 67)) && iVar.isEnabled())) {
                    list.add(iVar);
                }
            }
        }
    }

    i a(int i, KeyEvent keyEvent) {
        char numericShortcut;
        ArrayList<i> arrayList = this.w;
        arrayList.clear();
        a(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean c = c();
        for (int i2 = 0; i2 < size; i2++) {
            i iVar = arrayList.get(i2);
            if (c) {
                numericShortcut = iVar.getAlphabeticShortcut();
            } else {
                numericShortcut = iVar.getNumericShortcut();
            }
            if ((numericShortcut == keyData.meta[0] && (metaState & 2) == 0) || ((numericShortcut == keyData.meta[2] && (metaState & 2) != 0) || (c && numericShortcut == '\b' && i == 67))) {
                return iVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return a(findItem(i), i2);
    }

    public boolean a(MenuItem menuItem, int i) {
        return a(menuItem, (m) null, i);
    }

    public boolean a(MenuItem menuItem, m mVar, int i) {
        i iVar = (i) menuItem;
        if (iVar == null || !iVar.isEnabled()) {
            return false;
        }
        boolean b2 = iVar.b();
        androidx.core.g.b a2 = iVar.a();
        boolean z = a2 != null && a2.c();
        if (iVar.m()) {
            b2 |= iVar.expandActionView();
            if (b2) {
                a(true);
            }
        } else if (iVar.hasSubMenu() || z) {
            if ((i & 4) == 0) {
                a(false);
            }
            if (!iVar.hasSubMenu()) {
                iVar.a(new r(f(), this, iVar));
            }
            r rVar = (r) iVar.getSubMenu();
            if (z) {
                a2.a(rVar);
            }
            b2 |= a(rVar, mVar);
            if (!b2) {
                a(true);
            }
        } else if ((i & 1) == 0) {
            a(true);
        }
        return b2;
    }

    public final void a(boolean z) {
        if (this.v) {
            return;
        }
        this.v = true;
        Iterator<WeakReference<m>> it = this.x.iterator();
        while (it.hasNext()) {
            WeakReference<m> next = it.next();
            m mVar = next.get();
            if (mVar == null) {
                this.x.remove(next);
            } else {
                mVar.a(this, z);
            }
        }
        this.v = false;
    }

    @Override // android.view.Menu
    public void close() {
        a(true);
    }

    public void b(boolean z) {
        if (!this.r) {
            if (z) {
                this.l = true;
                this.o = true;
            }
            d(z);
            return;
        }
        this.s = true;
        if (z) {
            this.t = true;
        }
    }

    public void h() {
        if (this.r) {
            return;
        }
        this.r = true;
        this.s = false;
        this.t = false;
    }

    public void i() {
        this.r = false;
        if (this.s) {
            this.s = false;
            b(this.t);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(i iVar) {
        this.l = true;
        b(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(i iVar) {
        this.o = true;
        b(true);
    }

    public ArrayList<i> j() {
        if (this.l) {
            this.k.clear();
            int size = this.j.size();
            for (int i = 0; i < size; i++) {
                i iVar = this.j.get(i);
                if (iVar.isVisible()) {
                    this.k.add(iVar);
                }
            }
            this.l = false;
            this.o = true;
            return this.k;
        }
        return this.k;
    }

    public void k() {
        ArrayList<i> j = j();
        if (this.o) {
            Iterator<WeakReference<m>> it = this.x.iterator();
            boolean z = false;
            while (it.hasNext()) {
                WeakReference<m> next = it.next();
                m mVar = next.get();
                if (mVar == null) {
                    this.x.remove(next);
                } else {
                    z |= mVar.b();
                }
            }
            if (z) {
                this.m.clear();
                this.n.clear();
                int size = j.size();
                for (int i = 0; i < size; i++) {
                    i iVar = j.get(i);
                    if (iVar.j()) {
                        this.m.add(iVar);
                    } else {
                        this.n.add(iVar);
                    }
                }
            } else {
                this.m.clear();
                this.n.clear();
                this.n.addAll(j());
            }
            this.o = false;
        }
    }

    public ArrayList<i> l() {
        k();
        return this.m;
    }

    public ArrayList<i> m() {
        k();
        return this.n;
    }

    public void clearHeader() {
        this.b = null;
        this.a = null;
        this.c = null;
        b(false);
    }

    private void a(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources e = e();
        if (view != null) {
            this.c = view;
            this.a = null;
            this.b = null;
        } else {
            if (i > 0) {
                this.a = e.getText(i);
            } else if (charSequence != null) {
                this.a = charSequence;
            }
            if (i2 > 0) {
                this.b = androidx.core.a.a.a(f(), i2);
            } else if (drawable != null) {
                this.b = drawable;
            }
            this.c = null;
        }
        b(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g a(CharSequence charSequence) {
        a(0, charSequence, 0, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g d(int i) {
        a(i, null, 0, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g a(Drawable drawable) {
        a(0, null, 0, drawable, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g e(int i) {
        a(0, null, i, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g a(View view) {
        a(0, null, 0, null, view);
        return this;
    }

    public CharSequence n() {
        return this.a;
    }

    public Drawable o() {
        return this.b;
    }

    public View p() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean r() {
        return this.u;
    }

    public boolean c(i iVar) {
        boolean z = false;
        if (this.x.isEmpty()) {
            return false;
        }
        h();
        Iterator<WeakReference<m>> it = this.x.iterator();
        while (it.hasNext()) {
            WeakReference<m> next = it.next();
            m mVar = next.get();
            if (mVar == null) {
                this.x.remove(next);
            } else {
                z = mVar.a(this, iVar);
                if (z) {
                    break;
                }
            }
        }
        i();
        if (z) {
            this.y = iVar;
        }
        return z;
    }

    public boolean d(i iVar) {
        boolean z = false;
        if (this.x.isEmpty() || this.y != iVar) {
            return false;
        }
        h();
        Iterator<WeakReference<m>> it = this.x.iterator();
        while (it.hasNext()) {
            WeakReference<m> next = it.next();
            m mVar = next.get();
            if (mVar == null) {
                this.x.remove(next);
            } else {
                z = mVar.b(this, iVar);
                if (z) {
                    break;
                }
            }
        }
        i();
        if (z) {
            this.y = null;
        }
        return z;
    }

    public i s() {
        return this.y;
    }

    public void c(boolean z) {
        this.A = z;
    }
}
