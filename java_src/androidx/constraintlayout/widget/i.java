package androidx.constraintlayout.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.view.View;
import androidx.constraintlayout.b.a.e;
import androidx.constraintlayout.widget.ConstraintLayout;
/* compiled from: Placeholder.java */
/* loaded from: classes.dex */
public class i extends View {
    private int a;
    private View b;
    private int c;

    public void setEmptyVisibility(int i) {
        this.c = i;
    }

    public int getEmptyVisibility() {
        return this.c;
    }

    public View getContent() {
        return this.b;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int height = rect.height();
            int width = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, "?".length(), rect);
            canvas.drawText("?", ((width / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((height / 2.0f) + (rect.height() / 2.0f)) - rect.bottom, paint);
        }
    }

    public void a(ConstraintLayout constraintLayout) {
        if (this.a == -1 && !isInEditMode()) {
            setVisibility(this.c);
        }
        this.b = constraintLayout.findViewById(this.a);
        if (this.b != null) {
            ((ConstraintLayout.a) this.b.getLayoutParams()).ab = true;
            this.b.setVisibility(0);
            setVisibility(0);
        }
    }

    public void setContentId(int i) {
        View findViewById;
        if (this.a == i) {
            return;
        }
        if (this.b != null) {
            this.b.setVisibility(0);
            ((ConstraintLayout.a) this.b.getLayoutParams()).ab = false;
            this.b = null;
        }
        this.a = i;
        if (i == -1 || (findViewById = ((View) getParent()).findViewById(i)) == null) {
            return;
        }
        findViewById.setVisibility(8);
    }

    public void b(ConstraintLayout constraintLayout) {
        if (this.b == null) {
            return;
        }
        ConstraintLayout.a aVar = (ConstraintLayout.a) getLayoutParams();
        ConstraintLayout.a aVar2 = (ConstraintLayout.a) this.b.getLayoutParams();
        aVar2.an.j(0);
        if (aVar.an.S() != e.a.FIXED) {
            aVar.an.o(aVar2.an.A());
        }
        if (aVar.an.T() != e.a.FIXED) {
            aVar.an.p(aVar2.an.B());
        }
        aVar2.an.j(8);
    }
}
