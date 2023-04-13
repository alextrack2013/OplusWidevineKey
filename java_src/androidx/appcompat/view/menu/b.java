package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;
/* compiled from: BaseMenuPresenter.java */
/* loaded from: classes.dex */
public abstract class b implements m {
    protected Context a;
    protected Context b;
    protected g c;
    protected LayoutInflater d;
    protected LayoutInflater e;
    protected n f;
    private m.a g;
    private int h;
    private int i;
    private int j;

    public abstract void a(i iVar, n.a aVar);

    public boolean a(int i, i iVar) {
        return true;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean a(g gVar, i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean b(g gVar, i iVar) {
        return false;
    }

    public b(Context context, int i, int i2) {
        this.a = context;
        this.d = LayoutInflater.from(context);
        this.h = i;
        this.i = i2;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(Context context, g gVar) {
        this.b = context;
        this.e = LayoutInflater.from(this.b);
        this.c = gVar;
    }

    public n a(ViewGroup viewGroup) {
        if (this.f == null) {
            this.f = (n) this.d.inflate(this.h, viewGroup, false);
            this.f.a(this.c);
            a(true);
        }
        return this.f;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.f;
        if (viewGroup == null) {
            return;
        }
        int i = 0;
        if (this.c != null) {
            this.c.k();
            ArrayList<i> j = this.c.j();
            int size = j.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i iVar = j.get(i3);
                if (a(i2, iVar)) {
                    View childAt = viewGroup.getChildAt(i2);
                    i itemData = childAt instanceof n.a ? ((n.a) childAt).getItemData() : null;
                    View a = a(iVar, childAt, viewGroup);
                    if (iVar != itemData) {
                        a.setPressed(false);
                        a.jumpDrawablesToCurrentState();
                    }
                    if (a != childAt) {
                        a(a, i2);
                    }
                    i2++;
                }
            }
            i = i2;
        }
        while (i < viewGroup.getChildCount()) {
            if (!a(viewGroup, i)) {
                i++;
            }
        }
    }

    protected void a(View view, int i) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f).addView(view, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(ViewGroup viewGroup, int i) {
        viewGroup.removeViewAt(i);
        return true;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(m.a aVar) {
        this.g = aVar;
    }

    public m.a a() {
        return this.g;
    }

    public n.a b(ViewGroup viewGroup) {
        return (n.a) this.d.inflate(this.i, viewGroup, false);
    }

    public View a(i iVar, View view, ViewGroup viewGroup) {
        n.a b;
        if (view instanceof n.a) {
            b = (n.a) view;
        } else {
            b = b(viewGroup);
        }
        a(iVar, b);
        return (View) b;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(g gVar, boolean z) {
        if (this.g != null) {
            this.g.a(gVar, z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.appcompat.view.menu.g] */
    @Override // androidx.appcompat.view.menu.m
    public boolean a(r rVar) {
        if (this.g != null) {
            m.a aVar = this.g;
            r rVar2 = rVar;
            if (rVar == null) {
                rVar2 = this.c;
            }
            return aVar.a(rVar2);
        }
        return false;
    }

    public void a(int i) {
        this.j = i;
    }
}
