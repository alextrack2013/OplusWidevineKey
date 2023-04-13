package androidx.core.widget;

import android.widget.ListView;
/* compiled from: ListViewAutoScrollHelper.java */
/* loaded from: classes.dex */
public class f extends a {
    private final ListView f;

    @Override // androidx.core.widget.a
    public boolean e(int i) {
        return false;
    }

    public f(ListView listView) {
        super(listView);
        this.f = listView;
    }

    @Override // androidx.core.widget.a
    public void a(int i, int i2) {
        g.a(this.f, i2);
    }

    @Override // androidx.core.widget.a
    public boolean f(int i) {
        ListView listView = this.f;
        int count = listView.getCount();
        if (count == 0) {
            return false;
        }
        int childCount = listView.getChildCount();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        int i2 = firstVisiblePosition + childCount;
        if (i > 0) {
            if (i2 >= count && listView.getChildAt(childCount - 1).getBottom() <= listView.getHeight()) {
                return false;
            }
        } else if (i >= 0) {
            return false;
        } else {
            if (firstVisiblePosition <= 0 && listView.getChildAt(0).getTop() >= 0) {
                return false;
            }
        }
        return true;
    }
}
