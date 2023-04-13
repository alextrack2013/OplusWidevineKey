package androidx.appcompat.view;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.b;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.view.menu.o;
import java.util.ArrayList;
/* compiled from: SupportActionModeWrapper.java */
/* loaded from: classes.dex */
public class f extends ActionMode {
    final Context a;
    final b b;

    public f(Context context, b bVar) {
        this.a = context;
        this.b = bVar;
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.b.j();
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.b.a(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.b.b(charSequence);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.b.a(charSequence);
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.b.d();
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.b.c();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new o(this.a, (androidx.core.b.a.a) this.b.b());
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.b.f();
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.b.a(i);
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.b.g();
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.b.b(i);
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.b.i();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.b.a(view);
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.b.a();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.b.k();
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.b.a(z);
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.b.h();
    }

    /* compiled from: SupportActionModeWrapper.java */
    /* loaded from: classes.dex */
    public static class a implements b.a {
        final ActionMode.Callback a;
        final Context b;
        final ArrayList<f> c = new ArrayList<>();
        final androidx.b.g<Menu, Menu> d = new androidx.b.g<>();

        public a(Context context, ActionMode.Callback callback) {
            this.b = context;
            this.a = callback;
        }

        @Override // androidx.appcompat.view.b.a
        public boolean a(b bVar, Menu menu) {
            return this.a.onCreateActionMode(b(bVar), a(menu));
        }

        @Override // androidx.appcompat.view.b.a
        public boolean b(b bVar, Menu menu) {
            return this.a.onPrepareActionMode(b(bVar), a(menu));
        }

        @Override // androidx.appcompat.view.b.a
        public boolean a(b bVar, MenuItem menuItem) {
            return this.a.onActionItemClicked(b(bVar), new j(this.b, (androidx.core.b.a.b) menuItem));
        }

        @Override // androidx.appcompat.view.b.a
        public void a(b bVar) {
            this.a.onDestroyActionMode(b(bVar));
        }

        private Menu a(Menu menu) {
            Menu menu2 = this.d.get(menu);
            if (menu2 == null) {
                o oVar = new o(this.b, (androidx.core.b.a.a) menu);
                this.d.put(menu, oVar);
                return oVar;
            }
            return menu2;
        }

        public ActionMode b(b bVar) {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                f fVar = this.c.get(i);
                if (fVar != null && fVar.b == bVar) {
                    return fVar;
                }
            }
            f fVar2 = new f(this.b, bVar);
            this.c.add(fVar2);
            return fVar2;
        }
    }
}
