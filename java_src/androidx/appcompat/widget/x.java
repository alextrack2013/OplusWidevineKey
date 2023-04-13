package androidx.appcompat.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.R;
import androidx.appcompat.app.b;
/* compiled from: AppCompatSpinner.java */
/* loaded from: classes.dex */
public class x extends Spinner implements androidx.core.g.s {
    private static final int[] c = {16843505};
    int a;
    final Rect b;
    private final f d;
    private final Context e;
    private ai f;
    private SpinnerAdapter g;
    private final boolean h;
    private e i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AppCompatSpinner.java */
    /* loaded from: classes.dex */
    public interface e {
        CharSequence a();

        void a(int i);

        void a(int i, int i2);

        void a(Drawable drawable);

        void a(ListAdapter listAdapter);

        void a(CharSequence charSequence);

        int a_();

        Drawable b();

        void b(int i);

        void c();

        void c(int i);

        boolean d();

        int f();
    }

    public x(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.spinnerStyle);
    }

    public x(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
    }

    public x(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i, i2, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0050, code lost:
        if (r11 != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
        r11.recycle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0064, code lost:
        if (r11 == null) goto L7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public x(android.content.Context r7, android.util.AttributeSet r8, int r9, int r10, android.content.res.Resources.Theme r11) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.x.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.e;
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        if (this.i != null) {
            this.i.a(drawable);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(androidx.appcompat.a.a.a.b(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        if (this.i != null) {
            return this.i.b();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getPopupBackground();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        if (this.i != null) {
            this.i.a(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        if (this.i != null) {
            return this.i.a_();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownVerticalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        if (this.i != null) {
            this.i.c(i);
            this.i.b(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownHorizontalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        if (this.i != null) {
            return this.i.f();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownHorizontalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.i != null) {
            this.a = i;
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.i != null) {
            return this.a;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownWidth();
        }
        return 0;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.h) {
            this.g = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.i != null) {
            this.i.a(new b(spinnerAdapter, (this.e == null ? getContext() : this.e).getTheme()));
        }
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.i == null || !this.i.d()) {
            return;
        }
        this.i.c();
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f == null || !this.f.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.i == null || View.MeasureSpec.getMode(i) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        if (this.i != null) {
            if (this.i.d()) {
                return true;
            }
            a();
            return true;
        }
        return super.performClick();
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        if (this.i != null) {
            this.i.a(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        return this.i != null ? this.i.a() : super.getPrompt();
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (this.d != null) {
            this.d.a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.d != null) {
            this.d.a(drawable);
        }
    }

    @Override // androidx.core.g.s
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.d != null) {
            this.d.a(colorStateList);
        }
    }

    @Override // androidx.core.g.s
    public ColorStateList getSupportBackgroundTintList() {
        if (this.d != null) {
            return this.d.a();
        }
        return null;
    }

    @Override // androidx.core.g.s
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.d != null) {
            this.d.a(mode);
        }
    }

    @Override // androidx.core.g.s
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.d != null) {
            return this.d.b();
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.d != null) {
            this.d.c();
        }
    }

    int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        int i2 = 0;
        View view = null;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
        }
        if (drawable != null) {
            drawable.getPadding(this.b);
            return i2 + this.b.left + this.b.right;
        }
        return i2;
    }

    final e getInternalPopup() {
        return this.i;
    }

    void a() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.i.a(getTextDirection(), getTextAlignment());
        } else {
            this.i.a(-1, -1);
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        d dVar = new d(super.onSaveInstanceState());
        dVar.a = this.i != null && this.i.d();
        return dVar;
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        d dVar = (d) parcelable;
        super.onRestoreInstanceState(dVar.getSuperState());
        if (!dVar.a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.x.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (!x.this.getInternalPopup().d()) {
                    x.this.a();
                }
                ViewTreeObserver viewTreeObserver2 = x.this.getViewTreeObserver();
                if (viewTreeObserver2 != null) {
                    if (Build.VERSION.SDK_INT >= 16) {
                        viewTreeObserver2.removeOnGlobalLayoutListener(this);
                    } else {
                        viewTreeObserver2.removeGlobalOnLayoutListener(this);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AppCompatSpinner.java */
    /* loaded from: classes.dex */
    public static class d extends View.BaseSavedState {
        public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator<d>() { // from class: androidx.appcompat.widget.x.d.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public d createFromParcel(Parcel parcel) {
                return new d(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public d[] newArray(int i) {
                return new d[i];
            }
        };
        boolean a;

        d(Parcelable parcelable) {
            super(parcelable);
        }

        d(Parcel parcel) {
            super(parcel);
            this.a = parcel.readByte() != 0;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.a ? (byte) 1 : (byte) 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AppCompatSpinner.java */
    /* loaded from: classes.dex */
    public static class b implements ListAdapter, SpinnerAdapter {
        private SpinnerAdapter a;
        private ListAdapter b;

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        public b(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                    ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                        themedSpinnerAdapter.setDropDownViewTheme(theme);
                    }
                } else if (spinnerAdapter instanceof at) {
                    at atVar = (at) spinnerAdapter;
                    if (atVar.a() == null) {
                        atVar.a(theme);
                    }
                }
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.a == null) {
                return 0;
            }
            return this.a.getCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (this.a == null) {
                return null;
            }
            return this.a.getItem(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            if (this.a == null) {
                return -1L;
            }
            return this.a.getItemId(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            if (this.a == null) {
                return null;
            }
            return this.a.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            return this.a != null && this.a.hasStableIds();
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.a != null) {
                this.a.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.a != null) {
                this.a.unregisterDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }
    }

    /* compiled from: AppCompatSpinner.java */
    /* loaded from: classes.dex */
    class a implements DialogInterface.OnClickListener, e {
        androidx.appcompat.app.b a;
        private ListAdapter c;
        private CharSequence d;

        @Override // androidx.appcompat.widget.x.e
        public int a_() {
            return 0;
        }

        @Override // androidx.appcompat.widget.x.e
        public Drawable b() {
            return null;
        }

        @Override // androidx.appcompat.widget.x.e
        public int f() {
            return 0;
        }

        a() {
        }

        @Override // androidx.appcompat.widget.x.e
        public void c() {
            if (this.a != null) {
                this.a.dismiss();
                this.a = null;
            }
        }

        @Override // androidx.appcompat.widget.x.e
        public boolean d() {
            if (this.a != null) {
                return this.a.isShowing();
            }
            return false;
        }

        @Override // androidx.appcompat.widget.x.e
        public void a(ListAdapter listAdapter) {
            this.c = listAdapter;
        }

        @Override // androidx.appcompat.widget.x.e
        public void a(CharSequence charSequence) {
            this.d = charSequence;
        }

        @Override // androidx.appcompat.widget.x.e
        public CharSequence a() {
            return this.d;
        }

        @Override // androidx.appcompat.widget.x.e
        public void a(int i, int i2) {
            if (this.c == null) {
                return;
            }
            b.a aVar = new b.a(x.this.getPopupContext());
            if (this.d != null) {
                aVar.a(this.d);
            }
            this.a = aVar.a(this.c, x.this.getSelectedItemPosition(), this).b();
            ListView a = this.a.a();
            if (Build.VERSION.SDK_INT >= 17) {
                a.setTextDirection(i);
                a.setTextAlignment(i2);
            }
            this.a.show();
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            x.this.setSelection(i);
            if (x.this.getOnItemClickListener() != null) {
                x.this.performItemClick(null, i, this.c.getItemId(i));
            }
            c();
        }

        @Override // androidx.appcompat.widget.x.e
        public void a(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.x.e
        public void a(int i) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.x.e
        public void b(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.x.e
        public void c(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }
    }

    /* compiled from: AppCompatSpinner.java */
    /* loaded from: classes.dex */
    class c extends ak implements e {
        ListAdapter a;
        private CharSequence h;
        private final Rect i;
        private int j;

        public c(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.i = new Rect();
            b(x.this);
            a(true);
            d(0);
            a(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.widget.x.c.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                    x.this.setSelection(i2);
                    if (x.this.getOnItemClickListener() != null) {
                        x.this.performItemClick(view, i2, c.this.a.getItemId(i2));
                    }
                    c.this.c();
                }
            });
        }

        @Override // androidx.appcompat.widget.ak, androidx.appcompat.widget.x.e
        public void a(ListAdapter listAdapter) {
            super.a(listAdapter);
            this.a = listAdapter;
        }

        @Override // androidx.appcompat.widget.x.e
        public CharSequence a() {
            return this.h;
        }

        @Override // androidx.appcompat.widget.x.e
        public void a(CharSequence charSequence) {
            this.h = charSequence;
        }

        void g() {
            int h;
            Drawable b = b();
            int i = 0;
            if (b != null) {
                b.getPadding(x.this.b);
                i = bd.a(x.this) ? x.this.b.right : -x.this.b.left;
            } else {
                Rect rect = x.this.b;
                x.this.b.right = 0;
                rect.left = 0;
            }
            int paddingLeft = x.this.getPaddingLeft();
            int paddingRight = x.this.getPaddingRight();
            int width = x.this.getWidth();
            if (x.this.a == -2) {
                int a = x.this.a((SpinnerAdapter) this.a, b());
                int i2 = (x.this.getContext().getResources().getDisplayMetrics().widthPixels - x.this.b.left) - x.this.b.right;
                if (a > i2) {
                    a = i2;
                }
                h(Math.max(a, (width - paddingLeft) - paddingRight));
            } else if (x.this.a == -1) {
                h((width - paddingLeft) - paddingRight);
            } else {
                h(x.this.a);
            }
            if (bd.a(x.this)) {
                h = i + (((width - paddingRight) - k()) - h());
            } else {
                h = i + paddingLeft + h();
            }
            b(h);
        }

        @Override // androidx.appcompat.widget.x.e
        public void a(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            boolean d = d();
            g();
            i(2);
            super.b_();
            ListView e = e();
            e.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                e.setTextDirection(i);
                e.setTextAlignment(i2);
            }
            j(x.this.getSelectedItemPosition());
            if (d || (viewTreeObserver = x.this.getViewTreeObserver()) == null) {
                return;
            }
            final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.x.c.2
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (!c.this.a(x.this)) {
                        c.this.c();
                        return;
                    }
                    c.this.g();
                    c.super.b_();
                }
            };
            viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
            a(new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.widget.x.c.3
                @Override // android.widget.PopupWindow.OnDismissListener
                public void onDismiss() {
                    ViewTreeObserver viewTreeObserver2 = x.this.getViewTreeObserver();
                    if (viewTreeObserver2 != null) {
                        viewTreeObserver2.removeGlobalOnLayoutListener(onGlobalLayoutListener);
                    }
                }
            });
        }

        boolean a(View view) {
            return androidx.core.g.t.n(view) && view.getGlobalVisibleRect(this.i);
        }

        @Override // androidx.appcompat.widget.x.e
        public void c(int i) {
            this.j = i;
        }

        public int h() {
            return this.j;
        }
    }
}
