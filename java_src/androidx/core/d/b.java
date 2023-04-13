package androidx.core.d;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.b.e;
import androidx.b.g;
import androidx.core.a.a.f;
import androidx.core.d.c;
import androidx.core.graphics.d;
import androidx.core.graphics.k;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
/* compiled from: FontsContractCompat.java */
/* loaded from: classes.dex */
public class b {
    static final e<String, Typeface> a = new e<>(16);
    private static final androidx.core.d.c d = new androidx.core.d.c("fonts", 10, 10000);
    static final Object b = new Object();
    static final g<String, ArrayList<c.a<c>>> c = new g<>();
    private static final Comparator<byte[]> e = new Comparator<byte[]>() { // from class: androidx.core.d.b.4
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(byte[] bArr, byte[] bArr2) {
            if (bArr.length != bArr2.length) {
                return bArr.length - bArr2.length;
            }
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] != bArr2[i]) {
                    return bArr[i] - bArr2[i];
                }
            }
            return 0;
        }
    };

    static c a(Context context, androidx.core.d.a aVar, int i) {
        try {
            a a2 = a(context, (CancellationSignal) null, aVar);
            if (a2.a() == 0) {
                Typeface a3 = d.a(context, null, a2.b(), i);
                return new c(a3, a3 != null ? 0 : -3);
            }
            return new c(null, a2.a() == 1 ? -2 : -3);
        } catch (PackageManager.NameNotFoundException unused) {
            return new c(null, -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FontsContractCompat.java */
    /* loaded from: classes.dex */
    public static final class c {
        final Typeface a;
        final int b;

        c(Typeface typeface, int i) {
            this.a = typeface;
            this.b = i;
        }
    }

    public static Typeface a(final Context context, final androidx.core.d.a aVar, final f.a aVar2, final Handler handler, boolean z, int i, final int i2) {
        final String str = aVar.f() + "-" + i2;
        Typeface a2 = a.a((e<String, Typeface>) str);
        if (a2 != null) {
            if (aVar2 != null) {
                aVar2.a(a2);
            }
            return a2;
        } else if (z && i == -1) {
            c a3 = a(context, aVar, i2);
            if (aVar2 != null) {
                if (a3.b == 0) {
                    aVar2.a(a3.a, handler);
                } else {
                    aVar2.a(a3.b, handler);
                }
            }
            return a3.a;
        } else {
            Callable<c> callable = new Callable<c>() { // from class: androidx.core.d.b.1
                @Override // java.util.concurrent.Callable
                /* renamed from: a */
                public c call() {
                    c a4 = b.a(context, aVar, i2);
                    if (a4.a != null) {
                        b.a.a(str, a4.a);
                    }
                    return a4;
                }
            };
            if (z) {
                try {
                    return ((c) d.a(callable, i)).a;
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            c.a<c> aVar3 = aVar2 == null ? null : new c.a<c>() { // from class: androidx.core.d.b.2
                @Override // androidx.core.d.c.a
                public void a(c cVar) {
                    if (cVar == null) {
                        f.a.this.a(1, handler);
                    } else if (cVar.b == 0) {
                        f.a.this.a(cVar.a, handler);
                    } else {
                        f.a.this.a(cVar.b, handler);
                    }
                }
            };
            synchronized (b) {
                ArrayList<c.a<c>> arrayList = c.get(str);
                if (arrayList != null) {
                    if (aVar3 != null) {
                        arrayList.add(aVar3);
                    }
                    return null;
                }
                if (aVar3 != null) {
                    ArrayList<c.a<c>> arrayList2 = new ArrayList<>();
                    arrayList2.add(aVar3);
                    c.put(str, arrayList2);
                }
                d.a(callable, new c.a<c>() { // from class: androidx.core.d.b.3
                    @Override // androidx.core.d.c.a
                    public void a(c cVar) {
                        synchronized (b.b) {
                            ArrayList<c.a<c>> arrayList3 = b.c.get(str);
                            if (arrayList3 == null) {
                                return;
                            }
                            b.c.remove(str);
                            for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                                arrayList3.get(i3).a(cVar);
                            }
                        }
                    }
                });
                return null;
            }
        }
    }

    /* compiled from: FontsContractCompat.java */
    /* renamed from: androidx.core.d.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0027b {
        private final Uri a;
        private final int b;
        private final int c;
        private final boolean d;
        private final int e;

        public C0027b(Uri uri, int i, int i2, boolean z, int i3) {
            this.a = (Uri) androidx.core.f.d.a(uri);
            this.b = i;
            this.c = i2;
            this.d = z;
            this.e = i3;
        }

        public Uri a() {
            return this.a;
        }

        public int b() {
            return this.b;
        }

        public int c() {
            return this.c;
        }

        public boolean d() {
            return this.d;
        }

        public int e() {
            return this.e;
        }
    }

    /* compiled from: FontsContractCompat.java */
    /* loaded from: classes.dex */
    public static class a {
        private final int a;
        private final C0027b[] b;

        public a(int i, C0027b[] c0027bArr) {
            this.a = i;
            this.b = c0027bArr;
        }

        public int a() {
            return this.a;
        }

        public C0027b[] b() {
            return this.b;
        }
    }

    public static Map<Uri, ByteBuffer> a(Context context, C0027b[] c0027bArr, CancellationSignal cancellationSignal) {
        HashMap hashMap = new HashMap();
        for (C0027b c0027b : c0027bArr) {
            if (c0027b.e() == 0) {
                Uri a2 = c0027b.a();
                if (!hashMap.containsKey(a2)) {
                    hashMap.put(a2, k.a(context, cancellationSignal, a2));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    public static a a(Context context, CancellationSignal cancellationSignal, androidx.core.d.a aVar) {
        ProviderInfo a2 = a(context.getPackageManager(), aVar, context.getResources());
        if (a2 == null) {
            return new a(1, null);
        }
        return new a(0, a(context, aVar, a2.authority, cancellationSignal));
    }

    public static ProviderInfo a(PackageManager packageManager, androidx.core.d.a aVar, Resources resources) {
        String a2 = aVar.a();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(a2, 0);
        if (resolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException("No package found for authority: " + a2);
        } else if (!resolveContentProvider.packageName.equals(aVar.b())) {
            throw new PackageManager.NameNotFoundException("Found content provider " + a2 + ", but package was not " + aVar.b());
        } else {
            List<byte[]> a3 = a(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
            Collections.sort(a3, e);
            List<List<byte[]>> a4 = a(aVar, resources);
            for (int i = 0; i < a4.size(); i++) {
                ArrayList arrayList = new ArrayList(a4.get(i));
                Collections.sort(arrayList, e);
                if (a(a3, arrayList)) {
                    return resolveContentProvider;
                }
            }
            return null;
        }
    }

    private static List<List<byte[]>> a(androidx.core.d.a aVar, Resources resources) {
        if (aVar.d() != null) {
            return aVar.d();
        }
        return androidx.core.a.a.c.a(resources, aVar.e());
    }

    private static boolean a(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static List<byte[]> a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    static C0027b[] a(Context context, androidx.core.d.a aVar, String str, CancellationSignal cancellationSignal) {
        Cursor query;
        Uri withAppendedId;
        ArrayList arrayList = new ArrayList();
        Uri build = new Uri.Builder().scheme("content").authority(str).build();
        Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
        Cursor cursor = null;
        try {
            if (Build.VERSION.SDK_INT > 16) {
                query = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{aVar.c()}, null, cancellationSignal);
            } else {
                query = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{aVar.c()}, null);
            }
            cursor = query;
            if (cursor != null && cursor.getCount() > 0) {
                int columnIndex = cursor.getColumnIndex("result_code");
                ArrayList arrayList2 = new ArrayList();
                int columnIndex2 = cursor.getColumnIndex("_id");
                int columnIndex3 = cursor.getColumnIndex("file_id");
                int columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                int columnIndex5 = cursor.getColumnIndex("font_weight");
                int columnIndex6 = cursor.getColumnIndex("font_italic");
                while (cursor.moveToNext()) {
                    int i = columnIndex != -1 ? cursor.getInt(columnIndex) : 0;
                    int i2 = columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0;
                    if (columnIndex3 == -1) {
                        withAppendedId = ContentUris.withAppendedId(build, cursor.getLong(columnIndex2));
                    } else {
                        withAppendedId = ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3));
                    }
                    arrayList2.add(new C0027b(withAppendedId, i2, columnIndex5 != -1 ? cursor.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1, i));
                }
                arrayList = arrayList2;
            }
            return (C0027b[]) arrayList.toArray(new C0027b[0]);
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }
}
