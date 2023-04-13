package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.R;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentLayoutInflaterFactory.java */
/* loaded from: classes.dex */
public class k implements LayoutInflater.Factory2 {
    private final m a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(m mVar) {
        this.a = mVar;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        if (g.class.getName().equals(str)) {
            return new g(context, attributeSet, this.a);
        }
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Fragment);
            if (attributeValue == null) {
                attributeValue = obtainStyledAttributes.getString(R.styleable.Fragment_android_name);
            }
            int resourceId = obtainStyledAttributes.getResourceId(R.styleable.Fragment_android_id, -1);
            String string = obtainStyledAttributes.getString(R.styleable.Fragment_android_tag);
            obtainStyledAttributes.recycle();
            if (attributeValue == null || !i.a(context.getClassLoader(), attributeValue)) {
                return null;
            }
            int id = view != null ? view.getId() : 0;
            if (id == -1 && resourceId == -1 && string == null) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
            }
            c c = resourceId != -1 ? this.a.c(resourceId) : null;
            if (c == null && string != null) {
                c = this.a.a(string);
            }
            if (c == null && id != -1) {
                c = this.a.c(id);
            }
            if (m.a(2)) {
                Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + attributeValue + " existing=" + c);
            }
            if (c == null) {
                c = this.a.w().c(context.getClassLoader(), attributeValue);
                c.m = true;
                c.v = resourceId != 0 ? resourceId : id;
                c.w = id;
                c.x = string;
                c.n = true;
                c.r = this.a;
                c.s = this.a.c;
                c.a(this.a.c.j(), attributeSet, c.c);
                this.a.i(c);
                this.a.f(c);
            } else if (c.n) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
            } else {
                c.n = true;
                c.s = this.a.c;
                c.a(this.a.c.j(), attributeSet, c.c);
            }
            if (this.a.b < 1 && c.m) {
                this.a.a(c, 1);
            } else {
                this.a.f(c);
            }
            if (c.F == null) {
                throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
            }
            if (resourceId != 0) {
                c.F.setId(resourceId);
            }
            if (c.F.getTag() == null) {
                c.F.setTag(string);
            }
            return c.F;
        }
        return null;
    }
}
