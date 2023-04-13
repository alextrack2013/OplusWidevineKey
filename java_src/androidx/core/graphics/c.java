package androidx.core.graphics;

import android.graphics.Path;
import android.util.Log;
import java.util.ArrayList;
/* compiled from: PathParser.java */
/* loaded from: classes.dex */
public class c {
    static float[] a(float[] fArr, int i, int i2) {
        if (i > i2) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (i < 0 || i > length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = i2 - i;
        int min = Math.min(i3, length - i);
        float[] fArr2 = new float[i3];
        System.arraycopy(fArr, i, fArr2, 0, min);
        return fArr2;
    }

    public static Path a(String str) {
        Path path = new Path();
        b[] b2 = b(str);
        if (b2 != null) {
            try {
                b.a(b2, path);
                return path;
            } catch (RuntimeException e) {
                throw new RuntimeException("Error in parsing " + str, e);
            }
        }
        return null;
    }

    public static b[] b(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            int a2 = a(str, i);
            String trim = str.substring(i2, a2).trim();
            if (trim.length() > 0) {
                a(arrayList, trim.charAt(0), c(trim));
            }
            i2 = a2;
            i = a2 + 1;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            a(arrayList, str.charAt(i2), new float[0]);
        }
        return (b[]) arrayList.toArray(new b[arrayList.size()]);
    }

    public static b[] a(b[] bVarArr) {
        if (bVarArr == null) {
            return null;
        }
        b[] bVarArr2 = new b[bVarArr.length];
        for (int i = 0; i < bVarArr.length; i++) {
            bVarArr2[i] = new b(bVarArr[i]);
        }
        return bVarArr2;
    }

    public static boolean a(b[] bVarArr, b[] bVarArr2) {
        if (bVarArr == null || bVarArr2 == null || bVarArr.length != bVarArr2.length) {
            return false;
        }
        for (int i = 0; i < bVarArr.length; i++) {
            if (bVarArr[i].a != bVarArr2[i].a || bVarArr[i].b.length != bVarArr2[i].b.length) {
                return false;
            }
        }
        return true;
    }

    public static void b(b[] bVarArr, b[] bVarArr2) {
        for (int i = 0; i < bVarArr2.length; i++) {
            bVarArr[i].a = bVarArr2[i].a;
            for (int i2 = 0; i2 < bVarArr2[i].b.length; i2++) {
                bVarArr[i].b[i2] = bVarArr2[i].b[i2];
            }
        }
    }

    private static int a(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (((charAt - 'A') * (charAt - 'Z') <= 0 || (charAt - 'a') * (charAt - 'z') <= 0) && charAt != 'e' && charAt != 'E') {
                return i;
            }
            i++;
        }
        return i;
    }

    private static void a(ArrayList<b> arrayList, char c, float[] fArr) {
        arrayList.add(new b(c, fArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PathParser.java */
    /* loaded from: classes.dex */
    public static class a {
        int a;
        boolean b;

        a() {
        }
    }

    private static float[] c(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            a aVar = new a();
            int length = str.length();
            int i = 1;
            int i2 = 0;
            while (i < length) {
                a(str, i, aVar);
                int i3 = aVar.a;
                if (i < i3) {
                    fArr[i2] = Float.parseFloat(str.substring(i, i3));
                    i2++;
                }
                i = aVar.b ? i3 : i3 + 1;
            }
            return a(fArr, 0, i2);
        } catch (NumberFormatException e) {
            throw new RuntimeException("error in parsing \"" + str + "\"", e);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003a A[LOOP:0: B:3:0x0007->B:24:0x003a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(java.lang.String r8, int r9, androidx.core.graphics.c.a r10) {
        /*
            r0 = 0
            r10.b = r0
            r1 = r9
            r2 = r0
            r3 = r2
            r4 = r3
        L7:
            int r5 = r8.length()
            if (r1 >= r5) goto L3d
            char r5 = r8.charAt(r1)
            r6 = 32
            r7 = 1
            if (r5 == r6) goto L35
            r6 = 69
            if (r5 == r6) goto L33
            r6 = 101(0x65, float:1.42E-43)
            if (r5 == r6) goto L33
            switch(r5) {
                case 44: goto L35;
                case 45: goto L2a;
                case 46: goto L22;
                default: goto L21;
            }
        L21:
            goto L31
        L22:
            if (r3 != 0) goto L27
            r2 = r0
            r3 = r7
            goto L37
        L27:
            r10.b = r7
            goto L35
        L2a:
            if (r1 == r9) goto L31
            if (r2 != 0) goto L31
            r10.b = r7
            goto L35
        L31:
            r2 = r0
            goto L37
        L33:
            r2 = r7
            goto L37
        L35:
            r2 = r0
            r4 = r7
        L37:
            if (r4 == 0) goto L3a
            goto L3d
        L3a:
            int r1 = r1 + 1
            goto L7
        L3d:
            r10.a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.c.a(java.lang.String, int, androidx.core.graphics.c$a):void");
    }

    /* compiled from: PathParser.java */
    /* loaded from: classes.dex */
    public static class b {
        public char a;
        public float[] b;

        b(char c, float[] fArr) {
            this.a = c;
            this.b = fArr;
        }

        b(b bVar) {
            this.a = bVar.a;
            this.b = c.a(bVar.b, 0, bVar.b.length);
        }

        public static void a(b[] bVarArr, Path path) {
            float[] fArr = new float[6];
            char c = 'm';
            for (int i = 0; i < bVarArr.length; i++) {
                a(path, fArr, c, bVarArr[i].a, bVarArr[i].b);
                c = bVarArr[i].a;
            }
        }

        public void a(b bVar, b bVar2, float f) {
            this.a = bVar.a;
            for (int i = 0; i < bVar.b.length; i++) {
                this.b[i] = (bVar.b[i] * (1.0f - f)) + (bVar2.b[i] * f);
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private static void a(Path path, float[] fArr, char c, char c2, float[] fArr2) {
            int i;
            int i2;
            int i3;
            float f;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            char c3 = 0;
            float f9 = fArr[0];
            float f10 = fArr[1];
            float f11 = fArr[2];
            float f12 = fArr[3];
            float f13 = fArr[4];
            float f14 = fArr[5];
            switch (c2) {
                case 'A':
                case 'a':
                    i = 7;
                    i2 = i;
                    break;
                case 'C':
                case 'c':
                    i = 6;
                    i2 = i;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i2 = 1;
                    break;
                case 'L':
                case 'M':
                case 'T':
                case 'l':
                case 'm':
                case 't':
                default:
                    i2 = 2;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i2 = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f13, f14);
                    f9 = f13;
                    f11 = f9;
                    f10 = f14;
                    f12 = f10;
                    i2 = 2;
                    break;
            }
            float f15 = f9;
            float f16 = f10;
            float f17 = f13;
            float f18 = f14;
            int i4 = 0;
            char c4 = c;
            while (i4 < fArr2.length) {
                float f19 = 0.0f;
                switch (c2) {
                    case 'A':
                        i3 = i4;
                        int i5 = i3 + 5;
                        int i6 = i3 + 6;
                        a(path, f15, f16, fArr2[i5], fArr2[i6], fArr2[i3 + 0], fArr2[i3 + 1], fArr2[i3 + 2], fArr2[i3 + 3] != 0.0f, fArr2[i3 + 4] != 0.0f);
                        f15 = fArr2[i5];
                        f16 = fArr2[i6];
                        f12 = f16;
                        f11 = f15;
                        break;
                    case 'C':
                        i3 = i4;
                        int i7 = i3 + 2;
                        int i8 = i3 + 3;
                        int i9 = i3 + 4;
                        int i10 = i3 + 5;
                        path.cubicTo(fArr2[i3 + 0], fArr2[i3 + 1], fArr2[i7], fArr2[i8], fArr2[i9], fArr2[i10]);
                        f15 = fArr2[i9];
                        float f20 = fArr2[i10];
                        float f21 = fArr2[i7];
                        float f22 = fArr2[i8];
                        f16 = f20;
                        f12 = f22;
                        f11 = f21;
                        break;
                    case 'H':
                        i3 = i4;
                        int i11 = i3 + 0;
                        path.lineTo(fArr2[i11], f16);
                        f15 = fArr2[i11];
                        break;
                    case 'L':
                        i3 = i4;
                        int i12 = i3 + 0;
                        int i13 = i3 + 1;
                        path.lineTo(fArr2[i12], fArr2[i13]);
                        f15 = fArr2[i12];
                        f16 = fArr2[i13];
                        break;
                    case 'M':
                        i3 = i4;
                        int i14 = i3 + 0;
                        f15 = fArr2[i14];
                        int i15 = i3 + 1;
                        f16 = fArr2[i15];
                        if (i3 > 0) {
                            path.lineTo(fArr2[i14], fArr2[i15]);
                            break;
                        } else {
                            path.moveTo(fArr2[i14], fArr2[i15]);
                            f18 = f16;
                            f17 = f15;
                            break;
                        }
                    case 'Q':
                        i3 = i4;
                        int i16 = i3 + 0;
                        int i17 = i3 + 1;
                        int i18 = i3 + 2;
                        int i19 = i3 + 3;
                        path.quadTo(fArr2[i16], fArr2[i17], fArr2[i18], fArr2[i19]);
                        f = fArr2[i16];
                        f2 = fArr2[i17];
                        f15 = fArr2[i18];
                        f16 = fArr2[i19];
                        f11 = f;
                        f12 = f2;
                        break;
                    case 'S':
                        float f23 = f16;
                        float f24 = f15;
                        i3 = i4;
                        if (c4 == 'c' || c4 == 's' || c4 == 'C' || c4 == 'S') {
                            float f25 = (f24 * 2.0f) - f11;
                            f3 = (f23 * 2.0f) - f12;
                            f4 = f25;
                        } else {
                            f4 = f24;
                            f3 = f23;
                        }
                        int i20 = i3 + 0;
                        int i21 = i3 + 1;
                        int i22 = i3 + 2;
                        int i23 = i3 + 3;
                        path.cubicTo(f4, f3, fArr2[i20], fArr2[i21], fArr2[i22], fArr2[i23]);
                        f = fArr2[i20];
                        f2 = fArr2[i21];
                        f15 = fArr2[i22];
                        f16 = fArr2[i23];
                        f11 = f;
                        f12 = f2;
                        break;
                    case 'T':
                        float f26 = f16;
                        float f27 = f15;
                        i3 = i4;
                        if (c4 == 'q' || c4 == 't' || c4 == 'Q' || c4 == 'T') {
                            f26 = (f26 * 2.0f) - f12;
                            f27 = (f27 * 2.0f) - f11;
                        }
                        int i24 = i3 + 0;
                        int i25 = i3 + 1;
                        path.quadTo(f27, f26, fArr2[i24], fArr2[i25]);
                        f15 = fArr2[i24];
                        f16 = fArr2[i25];
                        f11 = f27;
                        f12 = f26;
                        break;
                    case 'V':
                        i3 = i4;
                        int i26 = i3 + 0;
                        path.lineTo(f15, fArr2[i26]);
                        f16 = fArr2[i26];
                        break;
                    case 'a':
                        int i27 = i4 + 5;
                        int i28 = i4 + 6;
                        i3 = i4;
                        a(path, f15, f16, fArr2[i27] + f15, fArr2[i28] + f16, fArr2[i4 + 0], fArr2[i4 + 1], fArr2[i4 + 2], fArr2[i4 + 3] != 0.0f, fArr2[i4 + 4] != 0.0f);
                        f15 += fArr2[i27];
                        f16 += fArr2[i28];
                        f12 = f16;
                        f11 = f15;
                        break;
                    case 'c':
                        int i29 = i4 + 2;
                        int i30 = i4 + 3;
                        int i31 = i4 + 4;
                        int i32 = i4 + 5;
                        path.rCubicTo(fArr2[i4 + 0], fArr2[i4 + 1], fArr2[i29], fArr2[i30], fArr2[i31], fArr2[i32]);
                        f5 = fArr2[i29] + f15;
                        f6 = fArr2[i30] + f16;
                        f15 += fArr2[i31];
                        f16 += fArr2[i32];
                        f11 = f5;
                        f12 = f6;
                        i3 = i4;
                        break;
                    case 'h':
                        int i33 = i4 + 0;
                        path.rLineTo(fArr2[i33], 0.0f);
                        f15 += fArr2[i33];
                        i3 = i4;
                        break;
                    case 'l':
                        int i34 = i4 + 0;
                        int i35 = i4 + 1;
                        path.rLineTo(fArr2[i34], fArr2[i35]);
                        f15 += fArr2[i34];
                        f16 += fArr2[i35];
                        i3 = i4;
                        break;
                    case 'm':
                        int i36 = i4 + 0;
                        f15 += fArr2[i36];
                        int i37 = i4 + 1;
                        f16 += fArr2[i37];
                        if (i4 > 0) {
                            path.rLineTo(fArr2[i36], fArr2[i37]);
                        } else {
                            path.rMoveTo(fArr2[i36], fArr2[i37]);
                            f18 = f16;
                            f17 = f15;
                        }
                        i3 = i4;
                        break;
                    case 'q':
                        int i38 = i4 + 0;
                        int i39 = i4 + 1;
                        int i40 = i4 + 2;
                        int i41 = i4 + 3;
                        path.rQuadTo(fArr2[i38], fArr2[i39], fArr2[i40], fArr2[i41]);
                        f5 = fArr2[i38] + f15;
                        f6 = fArr2[i39] + f16;
                        f15 += fArr2[i40];
                        f16 += fArr2[i41];
                        f11 = f5;
                        f12 = f6;
                        i3 = i4;
                        break;
                    case 's':
                        if (c4 == 'c' || c4 == 's' || c4 == 'C' || c4 == 'S') {
                            float f28 = f15 - f11;
                            f7 = f16 - f12;
                            f19 = f28;
                        } else {
                            f7 = 0.0f;
                        }
                        int i42 = i4 + 0;
                        int i43 = i4 + 1;
                        int i44 = i4 + 2;
                        int i45 = i4 + 3;
                        path.rCubicTo(f19, f7, fArr2[i42], fArr2[i43], fArr2[i44], fArr2[i45]);
                        f5 = fArr2[i42] + f15;
                        f6 = fArr2[i43] + f16;
                        f15 += fArr2[i44];
                        f16 += fArr2[i45];
                        f11 = f5;
                        f12 = f6;
                        i3 = i4;
                        break;
                    case 't':
                        if (c4 == 'q' || c4 == 't' || c4 == 'Q' || c4 == 'T') {
                            f19 = f15 - f11;
                            f8 = f16 - f12;
                        } else {
                            f8 = 0.0f;
                        }
                        int i46 = i4 + 0;
                        int i47 = i4 + 1;
                        path.rQuadTo(f19, f8, fArr2[i46], fArr2[i47]);
                        float f29 = f19 + f15;
                        float f30 = f8 + f16;
                        f15 += fArr2[i46];
                        f16 += fArr2[i47];
                        f12 = f30;
                        f11 = f29;
                        i3 = i4;
                        break;
                    case 'v':
                        int i48 = i4 + 0;
                        path.rLineTo(0.0f, fArr2[i48]);
                        f16 += fArr2[i48];
                        i3 = i4;
                        break;
                    default:
                        i3 = i4;
                        break;
                }
                i4 = i3 + i2;
                c4 = c2;
                c3 = 0;
            }
            fArr[c3] = f15;
            fArr[1] = f16;
            fArr[2] = f11;
            fArr[3] = f12;
            fArr[4] = f17;
            fArr[5] = f18;
        }

        private static void a(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
            double d;
            double d2;
            double radians = Math.toRadians(f7);
            double cos = Math.cos(radians);
            double sin = Math.sin(radians);
            double d3 = f;
            double d4 = f2;
            double d5 = f5;
            double d6 = ((d3 * cos) + (d4 * sin)) / d5;
            double d7 = f6;
            double d8 = (((-f) * sin) + (d4 * cos)) / d7;
            double d9 = f4;
            double d10 = ((f3 * cos) + (d9 * sin)) / d5;
            double d11 = (((-f3) * sin) + (d9 * cos)) / d7;
            double d12 = d6 - d10;
            double d13 = d8 - d11;
            double d14 = (d6 + d10) / 2.0d;
            double d15 = (d8 + d11) / 2.0d;
            double d16 = (d12 * d12) + (d13 * d13);
            if (d16 == 0.0d) {
                Log.w("PathParser", " Points are coincident");
                return;
            }
            double d17 = (1.0d / d16) - 0.25d;
            if (d17 < 0.0d) {
                Log.w("PathParser", "Points are too far apart " + d16);
                float sqrt = (float) (Math.sqrt(d16) / 1.99999d);
                a(path, f, f2, f3, f4, f5 * sqrt, f6 * sqrt, f7, z, z2);
                return;
            }
            double sqrt2 = Math.sqrt(d17);
            double d18 = d12 * sqrt2;
            double d19 = sqrt2 * d13;
            if (z == z2) {
                d = d14 - d19;
                d2 = d15 + d18;
            } else {
                d = d14 + d19;
                d2 = d15 - d18;
            }
            double atan2 = Math.atan2(d8 - d2, d6 - d);
            double atan22 = Math.atan2(d11 - d2, d10 - d) - atan2;
            int i = (atan22 > 0.0d ? 1 : (atan22 == 0.0d ? 0 : -1));
            if (z2 != (i >= 0)) {
                atan22 = i > 0 ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
            }
            double d20 = d * d5;
            double d21 = d2 * d7;
            a(path, (d20 * cos) - (d21 * sin), (d20 * sin) + (d21 * cos), d5, d7, d3, d4, radians, atan2, atan22);
        }

        private static void a(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
            double d10 = d3;
            int ceil = (int) Math.ceil(Math.abs((d9 * 4.0d) / 3.141592653589793d));
            double cos = Math.cos(d7);
            double sin = Math.sin(d7);
            double cos2 = Math.cos(d8);
            double sin2 = Math.sin(d8);
            double d11 = -d10;
            double d12 = d11 * cos;
            double d13 = d4 * sin;
            double d14 = d11 * sin;
            double d15 = d4 * cos;
            double d16 = (sin2 * d14) + (cos2 * d15);
            double d17 = d9 / ceil;
            int i = 0;
            double d18 = d6;
            double d19 = d16;
            double d20 = (d12 * sin2) - (d13 * cos2);
            double d21 = d5;
            double d22 = d8;
            while (i < ceil) {
                double d23 = d14;
                double d24 = d22 + d17;
                double sin3 = Math.sin(d24);
                double cos3 = Math.cos(d24);
                double d25 = d17;
                double d26 = (d + ((d10 * cos) * cos3)) - (d13 * sin3);
                double d27 = d2 + (d10 * sin * cos3) + (d15 * sin3);
                double d28 = (d12 * sin3) - (d13 * cos3);
                double d29 = (sin3 * d23) + (cos3 * d15);
                double d30 = d24 - d22;
                double d31 = d15;
                double tan = Math.tan(d30 / 2.0d);
                double sin4 = (Math.sin(d30) * (Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d)) / 3.0d;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) (d21 + (d20 * sin4)), (float) (d18 + (d19 * sin4)), (float) (d26 - (sin4 * d28)), (float) (d27 - (sin4 * d29)), (float) d26, (float) d27);
                i++;
                d18 = d27;
                d21 = d26;
                d14 = d23;
                d19 = d29;
                d20 = d28;
                d17 = d25;
                d15 = d31;
                d22 = d24;
                ceil = ceil;
                cos = cos;
                sin = sin;
                d10 = d3;
            }
        }
    }
}
