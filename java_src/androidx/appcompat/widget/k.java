package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.R;
import androidx.appcompat.widget.an;
/* compiled from: AppCompatDrawableManager.java */
/* loaded from: classes.dex */
public final class k {
    private static final PorterDuff.Mode a = PorterDuff.Mode.SRC_IN;
    private static k b;
    private an c;

    public static synchronized void a() {
        synchronized (k.class) {
            if (b == null) {
                b = new k();
                b.c = an.a();
                b.c.a(new an.e() { // from class: androidx.appcompat.widget.k.1
                    private final int[] a = {R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
                    private final int[] b = {R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
                    private final int[] c = {R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl_dark, R.drawable.abc_text_select_handle_middle_mtrl_dark, R.drawable.abc_text_select_handle_right_mtrl_dark, R.drawable.abc_text_select_handle_left_mtrl_light, R.drawable.abc_text_select_handle_middle_mtrl_light, R.drawable.abc_text_select_handle_right_mtrl_light};
                    private final int[] d = {R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
                    private final int[] e = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
                    private final int[] f = {R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};

                    private ColorStateList a(Context context) {
                        return b(context, as.a(context, R.attr.colorButtonNormal));
                    }

                    private ColorStateList b(Context context) {
                        return b(context, 0);
                    }

                    private ColorStateList c(Context context) {
                        return b(context, as.a(context, R.attr.colorAccent));
                    }

                    private ColorStateList b(Context context, int i) {
                        int a2 = as.a(context, R.attr.colorControlHighlight);
                        return new ColorStateList(new int[][]{as.a, as.d, as.b, as.h}, new int[]{as.c(context, R.attr.colorButtonNormal), androidx.core.graphics.a.a(a2, i), androidx.core.graphics.a.a(a2, i), i});
                    }

                    private ColorStateList d(Context context) {
                        int[][] iArr = new int[3];
                        int[] iArr2 = new int[3];
                        ColorStateList b2 = as.b(context, R.attr.colorSwitchThumbNormal);
                        if (b2 != null && b2.isStateful()) {
                            iArr[0] = as.a;
                            iArr2[0] = b2.getColorForState(iArr[0], 0);
                            iArr[1] = as.e;
                            iArr2[1] = as.a(context, R.attr.colorControlActivated);
                            iArr[2] = as.h;
                            iArr2[2] = b2.getDefaultColor();
                        } else {
                            iArr[0] = as.a;
                            iArr2[0] = as.c(context, R.attr.colorSwitchThumbNormal);
                            iArr[1] = as.e;
                            iArr2[1] = as.a(context, R.attr.colorControlActivated);
                            iArr[2] = as.h;
                            iArr2[2] = as.a(context, R.attr.colorSwitchThumbNormal);
                        }
                        return new ColorStateList(iArr, iArr2);
                    }

                    @Override // androidx.appcompat.widget.an.e
                    public Drawable a(an anVar, Context context, int i) {
                        if (i == R.drawable.abc_cab_background_top_material) {
                            return new LayerDrawable(new Drawable[]{anVar.a(context, R.drawable.abc_cab_background_internal_bg), anVar.a(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
                        }
                        return null;
                    }

                    private void a(Drawable drawable, int i, PorterDuff.Mode mode) {
                        if (af.b(drawable)) {
                            drawable = drawable.mutate();
                        }
                        if (mode == null) {
                            mode = k.a;
                        }
                        drawable.setColorFilter(k.a(i, mode));
                    }

                    @Override // androidx.appcompat.widget.an.e
                    public boolean a(Context context, int i, Drawable drawable) {
                        if (i == R.drawable.abc_seekbar_track_material) {
                            LayerDrawable layerDrawable = (LayerDrawable) drawable;
                            a(layerDrawable.findDrawableByLayerId(16908288), as.a(context, R.attr.colorControlNormal), k.a);
                            a(layerDrawable.findDrawableByLayerId(16908303), as.a(context, R.attr.colorControlNormal), k.a);
                            a(layerDrawable.findDrawableByLayerId(16908301), as.a(context, R.attr.colorControlActivated), k.a);
                            return true;
                        } else if (i == R.drawable.abc_ratingbar_material || i == R.drawable.abc_ratingbar_indicator_material || i == R.drawable.abc_ratingbar_small_material) {
                            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                            a(layerDrawable2.findDrawableByLayerId(16908288), as.c(context, R.attr.colorControlNormal), k.a);
                            a(layerDrawable2.findDrawableByLayerId(16908303), as.a(context, R.attr.colorControlActivated), k.a);
                            a(layerDrawable2.findDrawableByLayerId(16908301), as.a(context, R.attr.colorControlActivated), k.a);
                            return true;
                        } else {
                            return false;
                        }
                    }

                    private boolean a(int[] iArr, int i) {
                        for (int i2 : iArr) {
                            if (i2 == i) {
                                return true;
                            }
                        }
                        return false;
                    }

                    @Override // androidx.appcompat.widget.an.e
                    public ColorStateList a(Context context, int i) {
                        if (i == R.drawable.abc_edit_text_material) {
                            return androidx.appcompat.a.a.a.a(context, R.color.abc_tint_edittext);
                        }
                        if (i == R.drawable.abc_switch_track_mtrl_alpha) {
                            return androidx.appcompat.a.a.a.a(context, R.color.abc_tint_switch_track);
                        }
                        if (i == R.drawable.abc_switch_thumb_material) {
                            return d(context);
                        }
                        if (i == R.drawable.abc_btn_default_mtrl_shape) {
                            return a(context);
                        }
                        if (i == R.drawable.abc_btn_borderless_material) {
                            return b(context);
                        }
                        if (i == R.drawable.abc_btn_colored_material) {
                            return c(context);
                        }
                        if (i == R.drawable.abc_spinner_mtrl_am_alpha || i == R.drawable.abc_spinner_textfield_background_material) {
                            return androidx.appcompat.a.a.a.a(context, R.color.abc_tint_spinner);
                        }
                        if (a(this.b, i)) {
                            return as.b(context, R.attr.colorControlNormal);
                        }
                        if (a(this.e, i)) {
                            return androidx.appcompat.a.a.a.a(context, R.color.abc_tint_default);
                        }
                        if (a(this.f, i)) {
                            return androidx.appcompat.a.a.a.a(context, R.color.abc_tint_btn_checkable);
                        }
                        if (i == R.drawable.abc_seekbar_thumb_material) {
                            return androidx.appcompat.a.a.a.a(context, R.color.abc_tint_seek_thumb);
                        }
                        return null;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:21:0x0047  */
                    /* JADX WARN: Removed duplicated region for block: B:28:0x0062 A[RETURN] */
                    @Override // androidx.appcompat.widget.an.e
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public boolean b(android.content.Context r7, int r8, android.graphics.drawable.Drawable r9) {
                        /*
                            r6 = this;
                            android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.k.c()
                            int[] r1 = r6.a
                            boolean r1 = r6.a(r1, r8)
                            r2 = 16842801(0x1010031, float:2.3693695E-38)
                            r3 = -1
                            r4 = 0
                            r5 = 1
                            if (r1 == 0) goto L17
                            int r2 = androidx.appcompat.R.attr.colorControlNormal
                        L14:
                            r8 = r3
                        L15:
                            r6 = r5
                            goto L45
                        L17:
                            int[] r1 = r6.c
                            boolean r1 = r6.a(r1, r8)
                            if (r1 == 0) goto L22
                            int r2 = androidx.appcompat.R.attr.colorControlActivated
                            goto L14
                        L22:
                            int[] r1 = r6.d
                            boolean r6 = r6.a(r1, r8)
                            if (r6 == 0) goto L2d
                            android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
                            goto L14
                        L2d:
                            int r6 = androidx.appcompat.R.drawable.abc_list_divider_mtrl_alpha
                            if (r8 != r6) goto L3d
                            r2 = 16842800(0x1010030, float:2.3693693E-38)
                            r6 = 1109603123(0x42233333, float:40.8)
                            int r6 = java.lang.Math.round(r6)
                            r8 = r6
                            goto L15
                        L3d:
                            int r6 = androidx.appcompat.R.drawable.abc_dialog_material_background
                            if (r8 != r6) goto L42
                            goto L14
                        L42:
                            r8 = r3
                            r6 = r4
                            r2 = r6
                        L45:
                            if (r6 == 0) goto L62
                            boolean r6 = androidx.appcompat.widget.af.b(r9)
                            if (r6 == 0) goto L51
                            android.graphics.drawable.Drawable r9 = r9.mutate()
                        L51:
                            int r6 = androidx.appcompat.widget.as.a(r7, r2)
                            android.graphics.PorterDuffColorFilter r6 = androidx.appcompat.widget.k.a(r6, r0)
                            r9.setColorFilter(r6)
                            if (r8 == r3) goto L61
                            r9.setAlpha(r8)
                        L61:
                            return r5
                        L62:
                            return r4
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.k.AnonymousClass1.b(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
                    }

                    @Override // androidx.appcompat.widget.an.e
                    public PorterDuff.Mode a(int i) {
                        if (i == R.drawable.abc_switch_thumb_material) {
                            return PorterDuff.Mode.MULTIPLY;
                        }
                        return null;
                    }
                });
            }
        }
    }

    public static synchronized k b() {
        k kVar;
        synchronized (k.class) {
            if (b == null) {
                a();
            }
            kVar = b;
        }
        return kVar;
    }

    public synchronized Drawable a(Context context, int i) {
        return this.c.a(context, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Drawable a(Context context, int i, boolean z) {
        return this.c.a(context, i, z);
    }

    public synchronized void a(Context context) {
        this.c.a(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized ColorStateList b(Context context, int i) {
        return this.c.b(context, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Drawable drawable, av avVar, int[] iArr) {
        an.a(drawable, avVar, iArr);
    }

    public static synchronized PorterDuffColorFilter a(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter a2;
        synchronized (k.class) {
            a2 = an.a(i, mode);
        }
        return a2;
    }
}
