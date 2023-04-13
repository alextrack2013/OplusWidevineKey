package androidx.core.graphics;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import androidx.core.a.a.c;
import androidx.core.d.b;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: TypefaceCompatApi29Impl.java */
/* loaded from: classes.dex */
public class i extends j {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.core.graphics.j
    public b.C0027b a(b.C0027b[] c0027bArr, int i) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.core.graphics.j
    public Typeface a(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // androidx.core.graphics.j
    public Typeface a(Context context, CancellationSignal cancellationSignal, b.C0027b[] c0027bArr, int i) {
        int i2;
        ParcelFileDescriptor openFileDescriptor;
        ContentResolver contentResolver = context.getContentResolver();
        FontFamily.Builder builder = null;
        for (b.C0027b c0027b : c0027bArr) {
            try {
                openFileDescriptor = contentResolver.openFileDescriptor(c0027b.a(), "r", cancellationSignal);
            } catch (IOException unused) {
            }
            if (openFileDescriptor != null) {
                Font build = new Font.Builder(openFileDescriptor).setWeight(c0027b.c()).setSlant(c0027b.d() ? 1 : 0).setTtcIndex(c0027b.b()).build();
                if (builder == null) {
                    builder = new FontFamily.Builder(build);
                } else {
                    builder.addFont(build);
                }
                i2 = openFileDescriptor == null ? i2 + 1 : 0;
            } else if (openFileDescriptor == null) {
            }
            openFileDescriptor.close();
        }
        if (builder == null) {
            return null;
        }
        return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle((i & 1) != 0 ? 700 : 400, (i & 2) != 0 ? 1 : 0)).build();
    }

    @Override // androidx.core.graphics.j
    public Typeface a(Context context, c.b bVar, Resources resources, int i) {
        c.C0023c[] a;
        FontFamily.Builder builder = null;
        for (c.C0023c c0023c : bVar.a()) {
            try {
                Font build = new Font.Builder(resources, c0023c.f()).setWeight(c0023c.b()).setSlant(c0023c.c() ? 1 : 0).setTtcIndex(c0023c.e()).setFontVariationSettings(c0023c.d()).build();
                if (builder == null) {
                    builder = new FontFamily.Builder(build);
                } else {
                    builder.addFont(build);
                }
            } catch (IOException unused) {
            }
        }
        if (builder == null) {
            return null;
        }
        return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle((i & 1) != 0 ? 700 : 400, (i & 2) != 0 ? 1 : 0)).build();
    }

    @Override // androidx.core.graphics.j
    public Typeface a(Context context, Resources resources, int i, String str, int i2) {
        try {
            Font build = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (IOException unused) {
            return null;
        }
    }
}
