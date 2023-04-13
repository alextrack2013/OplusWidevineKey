package androidx.constraintlayout.b.a;

import java.util.ArrayList;
/* compiled from: Chain.java */
/* loaded from: classes.dex */
public class b {
    public static void a(f fVar, androidx.constraintlayout.b.d dVar, ArrayList<e> arrayList, int i) {
        int i2;
        int i3;
        c[] cVarArr;
        if (i == 0) {
            int i4 = fVar.au;
            cVarArr = fVar.ax;
            i3 = i4;
            i2 = 0;
        } else {
            i2 = 2;
            i3 = fVar.av;
            cVarArr = fVar.aw;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            c cVar = cVarArr[i5];
            cVar.a();
            if (arrayList == null || (arrayList != null && arrayList.contains(cVar.a))) {
                a(fVar, dVar, i, i2, cVar);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
        if (r2.ab == 2) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0039, code lost:
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0053, code lost:
        if (r2.ac == 2) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x054c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0560  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0565  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x056b  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0573  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0578  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0589  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0593 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:342:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void a(androidx.constraintlayout.b.a.f r46, androidx.constraintlayout.b.d r47, int r48, int r49, androidx.constraintlayout.b.a.c r50) {
        /*
            Method dump skipped, instructions count: 1463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.b.a.b.a(androidx.constraintlayout.b.a.f, androidx.constraintlayout.b.d, int, int, androidx.constraintlayout.b.a.c):void");
    }
}
