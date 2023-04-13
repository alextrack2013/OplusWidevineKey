package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
/* loaded from: classes.dex */
public class IconCompatParcelizer {
    public static IconCompat read(androidx.versionedparcelable.a aVar) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.a = aVar.b(iconCompat.a, 1);
        iconCompat.c = aVar.b(iconCompat.c, 2);
        iconCompat.d = aVar.b((androidx.versionedparcelable.a) iconCompat.d, 3);
        iconCompat.e = aVar.b(iconCompat.e, 4);
        iconCompat.f = aVar.b(iconCompat.f, 5);
        iconCompat.g = (ColorStateList) aVar.b((androidx.versionedparcelable.a) iconCompat.g, 6);
        iconCompat.j = aVar.b(iconCompat.j, 7);
        iconCompat.c();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, androidx.versionedparcelable.a aVar) {
        aVar.a(true, true);
        iconCompat.a(aVar.a());
        if (-1 != iconCompat.a) {
            aVar.a(iconCompat.a, 1);
        }
        if (iconCompat.c != null) {
            aVar.a(iconCompat.c, 2);
        }
        if (iconCompat.d != null) {
            aVar.a(iconCompat.d, 3);
        }
        if (iconCompat.e != 0) {
            aVar.a(iconCompat.e, 4);
        }
        if (iconCompat.f != 0) {
            aVar.a(iconCompat.f, 5);
        }
        if (iconCompat.g != null) {
            aVar.a(iconCompat.g, 6);
        }
        if (iconCompat.j != null) {
            aVar.a(iconCompat.j, 7);
        }
    }
}
