package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;
/* compiled from: TintResources.java */
/* loaded from: classes.dex */
class aw extends ao {
    private final WeakReference<Context> a;

    public aw(Context context, Resources resources) {
        super(resources);
        this.a = new WeakReference<>(context);
    }

    @Override // androidx.appcompat.widget.ao, android.content.res.Resources
    public Drawable getDrawable(int i) {
        Drawable drawable = super.getDrawable(i);
        Context context = this.a.get();
        if (drawable != null && context != null) {
            an.a().a(context, i, drawable);
        }
        return drawable;
    }
}
