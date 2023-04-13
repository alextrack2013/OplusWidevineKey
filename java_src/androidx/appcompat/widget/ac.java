package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ToggleButton;
/* compiled from: AppCompatToggleButton.java */
/* loaded from: classes.dex */
public class ac extends ToggleButton {
    private final z a;

    public ac(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842827);
    }

    public ac(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        as.a(this, getContext());
        this.a = new z(this);
        this.a.a(attributeSet, i);
    }
}
