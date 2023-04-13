package androidx.constraintlayout.b.a.a;

import androidx.constraintlayout.b.a.e;
import java.util.ArrayList;
/* compiled from: Grouping.java */
/* loaded from: classes.dex */
public class i {
    public static boolean a(e.a aVar, e.a aVar2, e.a aVar3, e.a aVar4) {
        return (aVar3 == e.a.FIXED || aVar3 == e.a.WRAP_CONTENT || (aVar3 == e.a.MATCH_PARENT && aVar != e.a.WRAP_CONTENT)) || (aVar4 == e.a.FIXED || aVar4 == e.a.WRAP_CONTENT || (aVar4 == e.a.MATCH_PARENT && aVar2 != e.a.WRAP_CONTENT));
    }

    /* JADX WARN: Removed duplicated region for block: B:182:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x038f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:243:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(androidx.constraintlayout.b.a.f r17, androidx.constraintlayout.b.a.a.b.InterfaceC0020b r18) {
        /*
            Method dump skipped, instructions count: 916
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.b.a.a.i.a(androidx.constraintlayout.b.a.f, androidx.constraintlayout.b.a.a.b$b):boolean");
    }

    private static o a(ArrayList<o> arrayList, int i) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            o oVar = arrayList.get(i2);
            if (i == oVar.c) {
                return oVar;
            }
        }
        return null;
    }

    public static o a(androidx.constraintlayout.b.a.e eVar, int i, ArrayList<o> arrayList, o oVar) {
        int i2;
        int y;
        if (i == 0) {
            i2 = eVar.ak;
        } else {
            i2 = eVar.al;
        }
        if (i2 != -1 && (oVar == null || i2 != oVar.c)) {
            int i3 = 0;
            while (true) {
                if (i3 >= arrayList.size()) {
                    break;
                }
                o oVar2 = arrayList.get(i3);
                if (oVar2.b() == i2) {
                    if (oVar != null) {
                        oVar.a(i, oVar2);
                        arrayList.remove(oVar);
                    }
                    oVar = oVar2;
                } else {
                    i3++;
                }
            }
        } else if (i2 != -1) {
            return oVar;
        }
        if (oVar == null) {
            if ((eVar instanceof androidx.constraintlayout.b.a.j) && (y = ((androidx.constraintlayout.b.a.j) eVar).y(i)) != -1) {
                int i4 = 0;
                while (true) {
                    if (i4 >= arrayList.size()) {
                        break;
                    }
                    o oVar3 = arrayList.get(i4);
                    if (oVar3.b() == y) {
                        oVar = oVar3;
                        break;
                    }
                    i4++;
                }
            }
            if (oVar == null) {
                oVar = new o(i);
            }
            arrayList.add(oVar);
        }
        if (oVar.a(eVar)) {
            if (eVar instanceof androidx.constraintlayout.b.a.h) {
                androidx.constraintlayout.b.a.h hVar = (androidx.constraintlayout.b.a.h) eVar;
                hVar.b().a(hVar.c() == 0 ? 1 : 0, arrayList, oVar);
            }
            if (i == 0) {
                eVar.ak = oVar.b();
                eVar.w.a(i, arrayList, oVar);
                eVar.y.a(i, arrayList, oVar);
            } else {
                eVar.al = oVar.b();
                eVar.x.a(i, arrayList, oVar);
                eVar.A.a(i, arrayList, oVar);
                eVar.z.a(i, arrayList, oVar);
            }
            eVar.D.a(i, arrayList, oVar);
        }
        return oVar;
    }
}
