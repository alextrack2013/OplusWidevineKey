package androidx.constraintlayout.a.b;

import android.view.View;
/* compiled from: Debug.java */
/* loaded from: classes.dex */
public class a {
    public static String a(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
            return "UNKNOWN";
        }
    }
}
