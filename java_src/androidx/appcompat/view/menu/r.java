package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.g;
/* compiled from: SubMenuBuilder.java */
/* loaded from: classes.dex */
public class r extends g implements SubMenu {
    private g d;
    private i e;

    public r(Context context, g gVar, i iVar) {
        super(context);
        this.d = gVar;
        this.e = iVar;
    }

    @Override // androidx.appcompat.view.menu.g, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.d.setQwertyMode(z);
    }

    @Override // androidx.appcompat.view.menu.g
    public boolean c() {
        return this.d.c();
    }

    @Override // androidx.appcompat.view.menu.g
    public boolean d() {
        return this.d.d();
    }

    public Menu t() {
        return this.d;
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.e;
    }

    @Override // androidx.appcompat.view.menu.g
    public void a(g.a aVar) {
        this.d.a(aVar);
    }

    @Override // androidx.appcompat.view.menu.g
    public g q() {
        return this.d.q();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.view.menu.g
    public boolean a(g gVar, MenuItem menuItem) {
        return super.a(gVar, menuItem) || this.d.a(gVar, menuItem);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.e.setIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.e.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.a(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        return (SubMenu) super.e(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.a(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        return (SubMenu) super.d(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.a(view);
    }

    @Override // androidx.appcompat.view.menu.g
    public boolean c(i iVar) {
        return this.d.c(iVar);
    }

    @Override // androidx.appcompat.view.menu.g
    public boolean d(i iVar) {
        return this.d.d(iVar);
    }

    @Override // androidx.appcompat.view.menu.g
    public String a() {
        int itemId = this.e != null ? this.e.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.a() + ":" + itemId;
    }

    @Override // androidx.appcompat.view.menu.g, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.d.setGroupDividerEnabled(z);
    }

    @Override // androidx.appcompat.view.menu.g
    public boolean b() {
        return this.d.b();
    }
}
