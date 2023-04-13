package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.f;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* compiled from: ConstraintSet.java */
/* loaded from: classes.dex */
public class e {
    private static final int[] c = {0, 4, 8};
    private static SparseIntArray e = new SparseIntArray();
    private HashMap<String, androidx.constraintlayout.widget.b> a = new HashMap<>();
    private boolean b = true;
    private HashMap<Integer, a> d = new HashMap<>();

    static {
        e.append(R.styleable.Constraint_layout_constraintLeft_toLeftOf, 25);
        e.append(R.styleable.Constraint_layout_constraintLeft_toRightOf, 26);
        e.append(R.styleable.Constraint_layout_constraintRight_toLeftOf, 29);
        e.append(R.styleable.Constraint_layout_constraintRight_toRightOf, 30);
        e.append(R.styleable.Constraint_layout_constraintTop_toTopOf, 36);
        e.append(R.styleable.Constraint_layout_constraintTop_toBottomOf, 35);
        e.append(R.styleable.Constraint_layout_constraintBottom_toTopOf, 4);
        e.append(R.styleable.Constraint_layout_constraintBottom_toBottomOf, 3);
        e.append(R.styleable.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        e.append(R.styleable.Constraint_layout_editor_absoluteX, 6);
        e.append(R.styleable.Constraint_layout_editor_absoluteY, 7);
        e.append(R.styleable.Constraint_layout_constraintGuide_begin, 17);
        e.append(R.styleable.Constraint_layout_constraintGuide_end, 18);
        e.append(R.styleable.Constraint_layout_constraintGuide_percent, 19);
        e.append(R.styleable.Constraint_android_orientation, 27);
        e.append(R.styleable.Constraint_layout_constraintStart_toEndOf, 32);
        e.append(R.styleable.Constraint_layout_constraintStart_toStartOf, 33);
        e.append(R.styleable.Constraint_layout_constraintEnd_toStartOf, 10);
        e.append(R.styleable.Constraint_layout_constraintEnd_toEndOf, 9);
        e.append(R.styleable.Constraint_layout_goneMarginLeft, 13);
        e.append(R.styleable.Constraint_layout_goneMarginTop, 16);
        e.append(R.styleable.Constraint_layout_goneMarginRight, 14);
        e.append(R.styleable.Constraint_layout_goneMarginBottom, 11);
        e.append(R.styleable.Constraint_layout_goneMarginStart, 15);
        e.append(R.styleable.Constraint_layout_goneMarginEnd, 12);
        e.append(R.styleable.Constraint_layout_constraintVertical_weight, 40);
        e.append(R.styleable.Constraint_layout_constraintHorizontal_weight, 39);
        e.append(R.styleable.Constraint_layout_constraintHorizontal_chainStyle, 41);
        e.append(R.styleable.Constraint_layout_constraintVertical_chainStyle, 42);
        e.append(R.styleable.Constraint_layout_constraintHorizontal_bias, 20);
        e.append(R.styleable.Constraint_layout_constraintVertical_bias, 37);
        e.append(R.styleable.Constraint_layout_constraintDimensionRatio, 5);
        e.append(R.styleable.Constraint_layout_constraintLeft_creator, 82);
        e.append(R.styleable.Constraint_layout_constraintTop_creator, 82);
        e.append(R.styleable.Constraint_layout_constraintRight_creator, 82);
        e.append(R.styleable.Constraint_layout_constraintBottom_creator, 82);
        e.append(R.styleable.Constraint_layout_constraintBaseline_creator, 82);
        e.append(R.styleable.Constraint_android_layout_marginLeft, 24);
        e.append(R.styleable.Constraint_android_layout_marginRight, 28);
        e.append(R.styleable.Constraint_android_layout_marginStart, 31);
        e.append(R.styleable.Constraint_android_layout_marginEnd, 8);
        e.append(R.styleable.Constraint_android_layout_marginTop, 34);
        e.append(R.styleable.Constraint_android_layout_marginBottom, 2);
        e.append(R.styleable.Constraint_android_layout_width, 23);
        e.append(R.styleable.Constraint_android_layout_height, 21);
        e.append(R.styleable.Constraint_android_visibility, 22);
        e.append(R.styleable.Constraint_android_alpha, 43);
        e.append(R.styleable.Constraint_android_elevation, 44);
        e.append(R.styleable.Constraint_android_rotationX, 45);
        e.append(R.styleable.Constraint_android_rotationY, 46);
        e.append(R.styleable.Constraint_android_rotation, 60);
        e.append(R.styleable.Constraint_android_scaleX, 47);
        e.append(R.styleable.Constraint_android_scaleY, 48);
        e.append(R.styleable.Constraint_android_transformPivotX, 49);
        e.append(R.styleable.Constraint_android_transformPivotY, 50);
        e.append(R.styleable.Constraint_android_translationX, 51);
        e.append(R.styleable.Constraint_android_translationY, 52);
        e.append(R.styleable.Constraint_android_translationZ, 53);
        e.append(R.styleable.Constraint_layout_constraintWidth_default, 54);
        e.append(R.styleable.Constraint_layout_constraintHeight_default, 55);
        e.append(R.styleable.Constraint_layout_constraintWidth_max, 56);
        e.append(R.styleable.Constraint_layout_constraintHeight_max, 57);
        e.append(R.styleable.Constraint_layout_constraintWidth_min, 58);
        e.append(R.styleable.Constraint_layout_constraintHeight_min, 59);
        e.append(R.styleable.Constraint_layout_constraintCircle, 61);
        e.append(R.styleable.Constraint_layout_constraintCircleRadius, 62);
        e.append(R.styleable.Constraint_layout_constraintCircleAngle, 63);
        e.append(R.styleable.Constraint_animate_relativeTo, 64);
        e.append(R.styleable.Constraint_transitionEasing, 65);
        e.append(R.styleable.Constraint_drawPath, 66);
        e.append(R.styleable.Constraint_transitionPathRotate, 67);
        e.append(R.styleable.Constraint_motionStagger, 79);
        e.append(R.styleable.Constraint_android_id, 38);
        e.append(R.styleable.Constraint_motionProgress, 68);
        e.append(R.styleable.Constraint_layout_constraintWidth_percent, 69);
        e.append(R.styleable.Constraint_layout_constraintHeight_percent, 70);
        e.append(R.styleable.Constraint_chainUseRtl, 71);
        e.append(R.styleable.Constraint_barrierDirection, 72);
        e.append(R.styleable.Constraint_barrierMargin, 73);
        e.append(R.styleable.Constraint_constraint_referenced_ids, 74);
        e.append(R.styleable.Constraint_barrierAllowsGoneWidgets, 75);
        e.append(R.styleable.Constraint_pathMotionArc, 76);
        e.append(R.styleable.Constraint_layout_constraintTag, 77);
        e.append(R.styleable.Constraint_visibilityMode, 78);
        e.append(R.styleable.Constraint_layout_constrainedWidth, 80);
        e.append(R.styleable.Constraint_layout_constrainedHeight, 81);
    }

    /* compiled from: ConstraintSet.java */
    /* loaded from: classes.dex */
    public static class b {
        private static SparseIntArray ak = new SparseIntArray();
        public int[] ae;
        public String af;
        public String ag;
        public int c;
        public int d;
        public boolean a = false;
        public boolean b = false;
        public int e = -1;
        public int f = -1;
        public float g = -1.0f;
        public int h = -1;
        public int i = -1;
        public int j = -1;
        public int k = -1;
        public int l = -1;
        public int m = -1;
        public int n = -1;
        public int o = -1;
        public int p = -1;
        public int q = -1;
        public int r = -1;
        public int s = -1;
        public int t = -1;
        public float u = 0.5f;
        public float v = 0.5f;
        public String w = null;
        public int x = -1;
        public int y = 0;
        public float z = 0.0f;
        public int A = -1;
        public int B = -1;
        public int C = -1;
        public int D = -1;
        public int E = -1;
        public int F = -1;
        public int G = -1;
        public int H = -1;
        public int I = -1;
        public int J = -1;
        public int K = -1;
        public int L = -1;
        public int M = -1;
        public int N = -1;
        public int O = -1;
        public float P = -1.0f;
        public float Q = -1.0f;
        public int R = 0;
        public int S = 0;
        public int T = 0;
        public int U = 0;
        public int V = -1;
        public int W = -1;
        public int X = -1;
        public int Y = -1;
        public float Z = 1.0f;
        public float aa = 1.0f;
        public int ab = -1;
        public int ac = 0;
        public int ad = -1;
        public boolean ah = false;
        public boolean ai = false;
        public boolean aj = true;

        public void a(b bVar) {
            this.a = bVar.a;
            this.c = bVar.c;
            this.b = bVar.b;
            this.d = bVar.d;
            this.e = bVar.e;
            this.f = bVar.f;
            this.g = bVar.g;
            this.h = bVar.h;
            this.i = bVar.i;
            this.j = bVar.j;
            this.k = bVar.k;
            this.l = bVar.l;
            this.m = bVar.m;
            this.n = bVar.n;
            this.o = bVar.o;
            this.p = bVar.p;
            this.q = bVar.q;
            this.r = bVar.r;
            this.s = bVar.s;
            this.t = bVar.t;
            this.u = bVar.u;
            this.v = bVar.v;
            this.w = bVar.w;
            this.x = bVar.x;
            this.y = bVar.y;
            this.z = bVar.z;
            this.A = bVar.A;
            this.B = bVar.B;
            this.C = bVar.C;
            this.D = bVar.D;
            this.E = bVar.E;
            this.F = bVar.F;
            this.G = bVar.G;
            this.H = bVar.H;
            this.I = bVar.I;
            this.J = bVar.J;
            this.K = bVar.K;
            this.L = bVar.L;
            this.M = bVar.M;
            this.N = bVar.N;
            this.O = bVar.O;
            this.P = bVar.P;
            this.Q = bVar.Q;
            this.R = bVar.R;
            this.S = bVar.S;
            this.T = bVar.T;
            this.U = bVar.U;
            this.V = bVar.V;
            this.W = bVar.W;
            this.X = bVar.X;
            this.Y = bVar.Y;
            this.Z = bVar.Z;
            this.aa = bVar.aa;
            this.ab = bVar.ab;
            this.ac = bVar.ac;
            this.ad = bVar.ad;
            this.ag = bVar.ag;
            if (bVar.ae != null) {
                this.ae = Arrays.copyOf(bVar.ae, bVar.ae.length);
            } else {
                this.ae = null;
            }
            this.af = bVar.af;
            this.ah = bVar.ah;
            this.ai = bVar.ai;
            this.aj = bVar.aj;
        }

        static {
            ak.append(R.styleable.Layout_layout_constraintLeft_toLeftOf, 24);
            ak.append(R.styleable.Layout_layout_constraintLeft_toRightOf, 25);
            ak.append(R.styleable.Layout_layout_constraintRight_toLeftOf, 28);
            ak.append(R.styleable.Layout_layout_constraintRight_toRightOf, 29);
            ak.append(R.styleable.Layout_layout_constraintTop_toTopOf, 35);
            ak.append(R.styleable.Layout_layout_constraintTop_toBottomOf, 34);
            ak.append(R.styleable.Layout_layout_constraintBottom_toTopOf, 4);
            ak.append(R.styleable.Layout_layout_constraintBottom_toBottomOf, 3);
            ak.append(R.styleable.Layout_layout_constraintBaseline_toBaselineOf, 1);
            ak.append(R.styleable.Layout_layout_editor_absoluteX, 6);
            ak.append(R.styleable.Layout_layout_editor_absoluteY, 7);
            ak.append(R.styleable.Layout_layout_constraintGuide_begin, 17);
            ak.append(R.styleable.Layout_layout_constraintGuide_end, 18);
            ak.append(R.styleable.Layout_layout_constraintGuide_percent, 19);
            ak.append(R.styleable.Layout_android_orientation, 26);
            ak.append(R.styleable.Layout_layout_constraintStart_toEndOf, 31);
            ak.append(R.styleable.Layout_layout_constraintStart_toStartOf, 32);
            ak.append(R.styleable.Layout_layout_constraintEnd_toStartOf, 10);
            ak.append(R.styleable.Layout_layout_constraintEnd_toEndOf, 9);
            ak.append(R.styleable.Layout_layout_goneMarginLeft, 13);
            ak.append(R.styleable.Layout_layout_goneMarginTop, 16);
            ak.append(R.styleable.Layout_layout_goneMarginRight, 14);
            ak.append(R.styleable.Layout_layout_goneMarginBottom, 11);
            ak.append(R.styleable.Layout_layout_goneMarginStart, 15);
            ak.append(R.styleable.Layout_layout_goneMarginEnd, 12);
            ak.append(R.styleable.Layout_layout_constraintVertical_weight, 38);
            ak.append(R.styleable.Layout_layout_constraintHorizontal_weight, 37);
            ak.append(R.styleable.Layout_layout_constraintHorizontal_chainStyle, 39);
            ak.append(R.styleable.Layout_layout_constraintVertical_chainStyle, 40);
            ak.append(R.styleable.Layout_layout_constraintHorizontal_bias, 20);
            ak.append(R.styleable.Layout_layout_constraintVertical_bias, 36);
            ak.append(R.styleable.Layout_layout_constraintDimensionRatio, 5);
            ak.append(R.styleable.Layout_layout_constraintLeft_creator, 76);
            ak.append(R.styleable.Layout_layout_constraintTop_creator, 76);
            ak.append(R.styleable.Layout_layout_constraintRight_creator, 76);
            ak.append(R.styleable.Layout_layout_constraintBottom_creator, 76);
            ak.append(R.styleable.Layout_layout_constraintBaseline_creator, 76);
            ak.append(R.styleable.Layout_android_layout_marginLeft, 23);
            ak.append(R.styleable.Layout_android_layout_marginRight, 27);
            ak.append(R.styleable.Layout_android_layout_marginStart, 30);
            ak.append(R.styleable.Layout_android_layout_marginEnd, 8);
            ak.append(R.styleable.Layout_android_layout_marginTop, 33);
            ak.append(R.styleable.Layout_android_layout_marginBottom, 2);
            ak.append(R.styleable.Layout_android_layout_width, 22);
            ak.append(R.styleable.Layout_android_layout_height, 21);
            ak.append(R.styleable.Layout_layout_constraintCircle, 61);
            ak.append(R.styleable.Layout_layout_constraintCircleRadius, 62);
            ak.append(R.styleable.Layout_layout_constraintCircleAngle, 63);
            ak.append(R.styleable.Layout_layout_constraintWidth_percent, 69);
            ak.append(R.styleable.Layout_layout_constraintHeight_percent, 70);
            ak.append(R.styleable.Layout_chainUseRtl, 71);
            ak.append(R.styleable.Layout_barrierDirection, 72);
            ak.append(R.styleable.Layout_barrierMargin, 73);
            ak.append(R.styleable.Layout_constraint_referenced_ids, 74);
            ak.append(R.styleable.Layout_barrierAllowsGoneWidgets, 75);
        }

        void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Layout);
            this.b = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                int i2 = ak.get(index);
                switch (i2) {
                    case 1:
                        this.p = e.b(obtainStyledAttributes, index, this.p);
                        break;
                    case 2:
                        this.G = obtainStyledAttributes.getDimensionPixelSize(index, this.G);
                        break;
                    case 3:
                        this.o = e.b(obtainStyledAttributes, index, this.o);
                        break;
                    case 4:
                        this.n = e.b(obtainStyledAttributes, index, this.n);
                        break;
                    case 5:
                        this.w = obtainStyledAttributes.getString(index);
                        break;
                    case 6:
                        this.A = obtainStyledAttributes.getDimensionPixelOffset(index, this.A);
                        break;
                    case 7:
                        this.B = obtainStyledAttributes.getDimensionPixelOffset(index, this.B);
                        break;
                    case 8:
                        if (Build.VERSION.SDK_INT >= 17) {
                            this.H = obtainStyledAttributes.getDimensionPixelSize(index, this.H);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        this.t = e.b(obtainStyledAttributes, index, this.t);
                        break;
                    case 10:
                        this.s = e.b(obtainStyledAttributes, index, this.s);
                        break;
                    case 11:
                        this.M = obtainStyledAttributes.getDimensionPixelSize(index, this.M);
                        break;
                    case 12:
                        this.N = obtainStyledAttributes.getDimensionPixelSize(index, this.N);
                        break;
                    case 13:
                        this.J = obtainStyledAttributes.getDimensionPixelSize(index, this.J);
                        break;
                    case 14:
                        this.L = obtainStyledAttributes.getDimensionPixelSize(index, this.L);
                        break;
                    case 15:
                        this.O = obtainStyledAttributes.getDimensionPixelSize(index, this.O);
                        break;
                    case 16:
                        this.K = obtainStyledAttributes.getDimensionPixelSize(index, this.K);
                        break;
                    case 17:
                        this.e = obtainStyledAttributes.getDimensionPixelOffset(index, this.e);
                        break;
                    case 18:
                        this.f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f);
                        break;
                    case 19:
                        this.g = obtainStyledAttributes.getFloat(index, this.g);
                        break;
                    case 20:
                        this.u = obtainStyledAttributes.getFloat(index, this.u);
                        break;
                    case 21:
                        this.d = obtainStyledAttributes.getLayoutDimension(index, this.d);
                        break;
                    case 22:
                        this.c = obtainStyledAttributes.getLayoutDimension(index, this.c);
                        break;
                    case 23:
                        this.D = obtainStyledAttributes.getDimensionPixelSize(index, this.D);
                        break;
                    case 24:
                        this.h = e.b(obtainStyledAttributes, index, this.h);
                        break;
                    case 25:
                        this.i = e.b(obtainStyledAttributes, index, this.i);
                        break;
                    case 26:
                        this.C = obtainStyledAttributes.getInt(index, this.C);
                        break;
                    case 27:
                        this.E = obtainStyledAttributes.getDimensionPixelSize(index, this.E);
                        break;
                    case 28:
                        this.j = e.b(obtainStyledAttributes, index, this.j);
                        break;
                    case 29:
                        this.k = e.b(obtainStyledAttributes, index, this.k);
                        break;
                    case 30:
                        if (Build.VERSION.SDK_INT >= 17) {
                            this.I = obtainStyledAttributes.getDimensionPixelSize(index, this.I);
                            break;
                        } else {
                            break;
                        }
                    case 31:
                        this.q = e.b(obtainStyledAttributes, index, this.q);
                        break;
                    case 32:
                        this.r = e.b(obtainStyledAttributes, index, this.r);
                        break;
                    case 33:
                        this.F = obtainStyledAttributes.getDimensionPixelSize(index, this.F);
                        break;
                    case 34:
                        this.m = e.b(obtainStyledAttributes, index, this.m);
                        break;
                    case 35:
                        this.l = e.b(obtainStyledAttributes, index, this.l);
                        break;
                    case 36:
                        this.v = obtainStyledAttributes.getFloat(index, this.v);
                        break;
                    case 37:
                        this.Q = obtainStyledAttributes.getFloat(index, this.Q);
                        break;
                    case 38:
                        this.P = obtainStyledAttributes.getFloat(index, this.P);
                        break;
                    case 39:
                        this.R = obtainStyledAttributes.getInt(index, this.R);
                        break;
                    case 40:
                        this.S = obtainStyledAttributes.getInt(index, this.S);
                        break;
                    default:
                        switch (i2) {
                            case 54:
                                this.T = obtainStyledAttributes.getInt(index, this.T);
                                continue;
                            case 55:
                                this.U = obtainStyledAttributes.getInt(index, this.U);
                                continue;
                            case 56:
                                this.V = obtainStyledAttributes.getDimensionPixelSize(index, this.V);
                                continue;
                            case 57:
                                this.W = obtainStyledAttributes.getDimensionPixelSize(index, this.W);
                                continue;
                            case 58:
                                this.X = obtainStyledAttributes.getDimensionPixelSize(index, this.X);
                                continue;
                            case 59:
                                this.Y = obtainStyledAttributes.getDimensionPixelSize(index, this.Y);
                                continue;
                            default:
                                switch (i2) {
                                    case 61:
                                        this.x = e.b(obtainStyledAttributes, index, this.x);
                                        continue;
                                    case 62:
                                        this.y = obtainStyledAttributes.getDimensionPixelSize(index, this.y);
                                        continue;
                                    case 63:
                                        this.z = obtainStyledAttributes.getFloat(index, this.z);
                                        continue;
                                    default:
                                        switch (i2) {
                                            case 69:
                                                this.Z = obtainStyledAttributes.getFloat(index, 1.0f);
                                                continue;
                                            case 70:
                                                this.aa = obtainStyledAttributes.getFloat(index, 1.0f);
                                                continue;
                                            case 71:
                                                Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                                continue;
                                            case 72:
                                                this.ab = obtainStyledAttributes.getInt(index, this.ab);
                                                continue;
                                            case 73:
                                                this.ac = obtainStyledAttributes.getDimensionPixelSize(index, this.ac);
                                                continue;
                                            case 74:
                                                this.af = obtainStyledAttributes.getString(index);
                                                continue;
                                            case 75:
                                                this.aj = obtainStyledAttributes.getBoolean(index, this.aj);
                                                continue;
                                            case 76:
                                                Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + ak.get(index));
                                                continue;
                                            case 77:
                                                this.ag = obtainStyledAttributes.getString(index);
                                                continue;
                                            default:
                                                switch (i2) {
                                                    case 80:
                                                        this.ah = obtainStyledAttributes.getBoolean(index, this.ah);
                                                        continue;
                                                    case 81:
                                                        this.ai = obtainStyledAttributes.getBoolean(index, this.ai);
                                                        continue;
                                                    default:
                                                        Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + ak.get(index));
                                                        continue;
                                                        continue;
                                                        continue;
                                                        continue;
                                                }
                                        }
                                }
                        }
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* compiled from: ConstraintSet.java */
    /* renamed from: androidx.constraintlayout.widget.e$e  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0022e {
        private static SparseIntArray n = new SparseIntArray();
        public boolean a = false;
        public float b = 0.0f;
        public float c = 0.0f;
        public float d = 0.0f;
        public float e = 1.0f;
        public float f = 1.0f;
        public float g = Float.NaN;
        public float h = Float.NaN;
        public float i = 0.0f;
        public float j = 0.0f;
        public float k = 0.0f;
        public boolean l = false;
        public float m = 0.0f;

        public void a(C0022e c0022e) {
            this.a = c0022e.a;
            this.b = c0022e.b;
            this.c = c0022e.c;
            this.d = c0022e.d;
            this.e = c0022e.e;
            this.f = c0022e.f;
            this.g = c0022e.g;
            this.h = c0022e.h;
            this.i = c0022e.i;
            this.j = c0022e.j;
            this.k = c0022e.k;
            this.l = c0022e.l;
            this.m = c0022e.m;
        }

        static {
            n.append(R.styleable.Transform_android_rotation, 1);
            n.append(R.styleable.Transform_android_rotationX, 2);
            n.append(R.styleable.Transform_android_rotationY, 3);
            n.append(R.styleable.Transform_android_scaleX, 4);
            n.append(R.styleable.Transform_android_scaleY, 5);
            n.append(R.styleable.Transform_android_transformPivotX, 6);
            n.append(R.styleable.Transform_android_transformPivotY, 7);
            n.append(R.styleable.Transform_android_translationX, 8);
            n.append(R.styleable.Transform_android_translationY, 9);
            n.append(R.styleable.Transform_android_translationZ, 10);
            n.append(R.styleable.Transform_android_elevation, 11);
        }

        void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Transform);
            this.a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (n.get(index)) {
                    case 1:
                        this.b = obtainStyledAttributes.getFloat(index, this.b);
                        break;
                    case 2:
                        this.c = obtainStyledAttributes.getFloat(index, this.c);
                        break;
                    case 3:
                        this.d = obtainStyledAttributes.getFloat(index, this.d);
                        break;
                    case 4:
                        this.e = obtainStyledAttributes.getFloat(index, this.e);
                        break;
                    case 5:
                        this.f = obtainStyledAttributes.getFloat(index, this.f);
                        break;
                    case 6:
                        this.g = obtainStyledAttributes.getDimension(index, this.g);
                        break;
                    case 7:
                        this.h = obtainStyledAttributes.getDimension(index, this.h);
                        break;
                    case 8:
                        this.i = obtainStyledAttributes.getDimension(index, this.i);
                        break;
                    case 9:
                        this.j = obtainStyledAttributes.getDimension(index, this.j);
                        break;
                    case 10:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.k = obtainStyledAttributes.getDimension(index, this.k);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.l = true;
                            this.m = obtainStyledAttributes.getDimension(index, this.m);
                            break;
                        } else {
                            break;
                        }
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* compiled from: ConstraintSet.java */
    /* loaded from: classes.dex */
    public static class d {
        public boolean a = false;
        public int b = 0;
        public int c = 0;
        public float d = 1.0f;
        public float e = Float.NaN;

        public void a(d dVar) {
            this.a = dVar.a;
            this.b = dVar.b;
            this.d = dVar.d;
            this.e = dVar.e;
            this.c = dVar.c;
        }

        void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PropertySet);
            this.a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == R.styleable.PropertySet_android_alpha) {
                    this.d = obtainStyledAttributes.getFloat(index, this.d);
                } else if (index == R.styleable.PropertySet_android_visibility) {
                    this.b = obtainStyledAttributes.getInt(index, this.b);
                    this.b = e.c[this.b];
                } else if (index == R.styleable.PropertySet_visibilityMode) {
                    this.c = obtainStyledAttributes.getInt(index, this.c);
                } else if (index == R.styleable.PropertySet_motionProgress) {
                    this.e = obtainStyledAttributes.getFloat(index, this.e);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* compiled from: ConstraintSet.java */
    /* loaded from: classes.dex */
    public static class c {
        private static SparseIntArray h = new SparseIntArray();
        public boolean a = false;
        public int b = -1;
        public String c = null;
        public int d = -1;
        public int e = 0;
        public float f = Float.NaN;
        public float g = Float.NaN;

        public void a(c cVar) {
            this.a = cVar.a;
            this.b = cVar.b;
            this.c = cVar.c;
            this.d = cVar.d;
            this.e = cVar.e;
            this.g = cVar.g;
            this.f = cVar.f;
        }

        static {
            h.append(R.styleable.Motion_motionPathRotate, 1);
            h.append(R.styleable.Motion_pathMotionArc, 2);
            h.append(R.styleable.Motion_transitionEasing, 3);
            h.append(R.styleable.Motion_drawPath, 4);
            h.append(R.styleable.Motion_animate_relativeTo, 5);
            h.append(R.styleable.Motion_motionStagger, 6);
        }

        void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Motion);
            this.a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (h.get(index)) {
                    case 1:
                        this.g = obtainStyledAttributes.getFloat(index, this.g);
                        break;
                    case 2:
                        this.d = obtainStyledAttributes.getInt(index, this.d);
                        break;
                    case 3:
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            this.c = obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            this.c = androidx.constraintlayout.a.a.a.c[obtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        this.e = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.b = e.b(obtainStyledAttributes, index, this.b);
                        break;
                    case 6:
                        this.f = obtainStyledAttributes.getFloat(index, this.f);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* compiled from: ConstraintSet.java */
    /* loaded from: classes.dex */
    public static class a {
        int a;
        public final d b = new d();
        public final c c = new c();
        public final b d = new b();
        public final C0022e e = new C0022e();
        public HashMap<String, androidx.constraintlayout.widget.b> f = new HashMap<>();

        /* renamed from: a */
        public a clone() {
            a aVar = new a();
            aVar.d.a(this.d);
            aVar.c.a(this.c);
            aVar.b.a(this.b);
            aVar.e.a(this.e);
            aVar.a = this.a;
            return aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(androidx.constraintlayout.widget.c cVar, int i, f.a aVar) {
            a(i, aVar);
            if (cVar instanceof androidx.constraintlayout.widget.a) {
                this.d.ad = 1;
                androidx.constraintlayout.widget.a aVar2 = (androidx.constraintlayout.widget.a) cVar;
                this.d.ab = aVar2.getType();
                this.d.ae = aVar2.getReferencedIds();
                this.d.ac = aVar2.getMargin();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i, f.a aVar) {
            a(i, (ConstraintLayout.a) aVar);
            this.b.d = aVar.ap;
            this.e.b = aVar.as;
            this.e.c = aVar.at;
            this.e.d = aVar.au;
            this.e.e = aVar.av;
            this.e.f = aVar.aw;
            this.e.g = aVar.ax;
            this.e.h = aVar.ay;
            this.e.i = aVar.az;
            this.e.j = aVar.aA;
            this.e.k = aVar.aB;
            this.e.m = aVar.ar;
            this.e.l = aVar.aq;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i, ConstraintLayout.a aVar) {
            this.a = i;
            this.d.h = aVar.d;
            this.d.i = aVar.e;
            this.d.j = aVar.f;
            this.d.k = aVar.g;
            this.d.l = aVar.h;
            this.d.m = aVar.i;
            this.d.n = aVar.j;
            this.d.o = aVar.k;
            this.d.p = aVar.l;
            this.d.q = aVar.p;
            this.d.r = aVar.q;
            this.d.s = aVar.r;
            this.d.t = aVar.s;
            this.d.u = aVar.z;
            this.d.v = aVar.A;
            this.d.w = aVar.B;
            this.d.x = aVar.m;
            this.d.y = aVar.n;
            this.d.z = aVar.o;
            this.d.A = aVar.Q;
            this.d.B = aVar.R;
            this.d.C = aVar.S;
            this.d.g = aVar.c;
            this.d.e = aVar.a;
            this.d.f = aVar.b;
            this.d.c = aVar.width;
            this.d.d = aVar.height;
            this.d.D = aVar.leftMargin;
            this.d.E = aVar.rightMargin;
            this.d.F = aVar.topMargin;
            this.d.G = aVar.bottomMargin;
            this.d.P = aVar.F;
            this.d.Q = aVar.E;
            this.d.S = aVar.H;
            this.d.R = aVar.G;
            this.d.ah = aVar.T;
            this.d.ai = aVar.U;
            this.d.T = aVar.I;
            this.d.U = aVar.J;
            this.d.V = aVar.M;
            this.d.W = aVar.N;
            this.d.X = aVar.K;
            this.d.Y = aVar.L;
            this.d.Z = aVar.O;
            this.d.aa = aVar.P;
            this.d.ag = aVar.V;
            this.d.K = aVar.u;
            this.d.M = aVar.w;
            this.d.J = aVar.t;
            this.d.L = aVar.v;
            this.d.O = aVar.x;
            this.d.N = aVar.y;
            if (Build.VERSION.SDK_INT >= 17) {
                this.d.H = aVar.getMarginEnd();
                this.d.I = aVar.getMarginStart();
            }
        }

        public void a(ConstraintLayout.a aVar) {
            aVar.d = this.d.h;
            aVar.e = this.d.i;
            aVar.f = this.d.j;
            aVar.g = this.d.k;
            aVar.h = this.d.l;
            aVar.i = this.d.m;
            aVar.j = this.d.n;
            aVar.k = this.d.o;
            aVar.l = this.d.p;
            aVar.p = this.d.q;
            aVar.q = this.d.r;
            aVar.r = this.d.s;
            aVar.s = this.d.t;
            aVar.leftMargin = this.d.D;
            aVar.rightMargin = this.d.E;
            aVar.topMargin = this.d.F;
            aVar.bottomMargin = this.d.G;
            aVar.x = this.d.O;
            aVar.y = this.d.N;
            aVar.u = this.d.K;
            aVar.w = this.d.M;
            aVar.z = this.d.u;
            aVar.A = this.d.v;
            aVar.m = this.d.x;
            aVar.n = this.d.y;
            aVar.o = this.d.z;
            aVar.B = this.d.w;
            aVar.Q = this.d.A;
            aVar.R = this.d.B;
            aVar.F = this.d.P;
            aVar.E = this.d.Q;
            aVar.H = this.d.S;
            aVar.G = this.d.R;
            aVar.T = this.d.ah;
            aVar.U = this.d.ai;
            aVar.I = this.d.T;
            aVar.J = this.d.U;
            aVar.M = this.d.V;
            aVar.N = this.d.W;
            aVar.K = this.d.X;
            aVar.L = this.d.Y;
            aVar.O = this.d.Z;
            aVar.P = this.d.aa;
            aVar.S = this.d.C;
            aVar.c = this.d.g;
            aVar.a = this.d.e;
            aVar.b = this.d.f;
            aVar.width = this.d.c;
            aVar.height = this.d.d;
            if (this.d.ag != null) {
                aVar.V = this.d.ag;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                aVar.setMarginStart(this.d.I);
                aVar.setMarginEnd(this.d.H);
            }
            aVar.a();
        }
    }

    public void a(Context context, int i) {
        a((ConstraintLayout) LayoutInflater.from(context).inflate(i, (ViewGroup) null));
    }

    public void a(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.d.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.a aVar = (ConstraintLayout.a) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.d.containsKey(Integer.valueOf(id))) {
                this.d.put(Integer.valueOf(id), new a());
            }
            a aVar2 = this.d.get(Integer.valueOf(id));
            aVar2.f = androidx.constraintlayout.widget.b.a(this.a, childAt);
            aVar2.a(id, aVar);
            aVar2.b.b = childAt.getVisibility();
            if (Build.VERSION.SDK_INT >= 17) {
                aVar2.b.d = childAt.getAlpha();
                aVar2.e.b = childAt.getRotation();
                aVar2.e.c = childAt.getRotationX();
                aVar2.e.d = childAt.getRotationY();
                aVar2.e.e = childAt.getScaleX();
                aVar2.e.f = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    aVar2.e.g = pivotX;
                    aVar2.e.h = pivotY;
                }
                aVar2.e.i = childAt.getTranslationX();
                aVar2.e.j = childAt.getTranslationY();
                if (Build.VERSION.SDK_INT >= 21) {
                    aVar2.e.k = childAt.getTranslationZ();
                    if (aVar2.e.l) {
                        aVar2.e.m = childAt.getElevation();
                    }
                }
            }
            if (childAt instanceof androidx.constraintlayout.widget.a) {
                androidx.constraintlayout.widget.a aVar3 = (androidx.constraintlayout.widget.a) childAt;
                aVar2.d.aj = aVar3.a();
                aVar2.d.ae = aVar3.getReferencedIds();
                aVar2.d.ab = aVar3.getType();
                aVar2.d.ac = aVar3.getMargin();
            }
        }
    }

    public void a(f fVar) {
        int childCount = fVar.getChildCount();
        this.d.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = fVar.getChildAt(i);
            f.a aVar = (f.a) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.d.containsKey(Integer.valueOf(id))) {
                this.d.put(Integer.valueOf(id), new a());
            }
            a aVar2 = this.d.get(Integer.valueOf(id));
            if (childAt instanceof androidx.constraintlayout.widget.c) {
                aVar2.a((androidx.constraintlayout.widget.c) childAt, id, aVar);
            }
            aVar2.a(id, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ConstraintLayout constraintLayout, boolean z) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.d.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.d.containsKey(Integer.valueOf(id))) {
                Log.w("ConstraintSet", "id unknown " + androidx.constraintlayout.a.b.a.a(childAt));
            } else if (this.b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else {
                if (id != -1) {
                    if (this.d.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        a aVar = this.d.get(Integer.valueOf(id));
                        if (childAt instanceof androidx.constraintlayout.widget.a) {
                            aVar.d.ad = 1;
                        }
                        if (aVar.d.ad != -1 && aVar.d.ad == 1) {
                            androidx.constraintlayout.widget.a aVar2 = (androidx.constraintlayout.widget.a) childAt;
                            aVar2.setId(id);
                            aVar2.setType(aVar.d.ab);
                            aVar2.setMargin(aVar.d.ac);
                            aVar2.setAllowsGoneWidget(aVar.d.aj);
                            if (aVar.d.ae != null) {
                                aVar2.setReferencedIds(aVar.d.ae);
                            } else if (aVar.d.af != null) {
                                aVar.d.ae = a(aVar2, aVar.d.af);
                                aVar2.setReferencedIds(aVar.d.ae);
                            }
                        }
                        ConstraintLayout.a aVar3 = (ConstraintLayout.a) childAt.getLayoutParams();
                        aVar3.a();
                        aVar.a(aVar3);
                        if (z) {
                            androidx.constraintlayout.widget.b.a(childAt, aVar.f);
                        }
                        childAt.setLayoutParams(aVar3);
                        if (aVar.b.c == 0) {
                            childAt.setVisibility(aVar.b.b);
                        }
                        if (Build.VERSION.SDK_INT >= 17) {
                            childAt.setAlpha(aVar.b.d);
                            childAt.setRotation(aVar.e.b);
                            childAt.setRotationX(aVar.e.c);
                            childAt.setRotationY(aVar.e.d);
                            childAt.setScaleX(aVar.e.e);
                            childAt.setScaleY(aVar.e.f);
                            if (!Float.isNaN(aVar.e.g)) {
                                childAt.setPivotX(aVar.e.g);
                            }
                            if (!Float.isNaN(aVar.e.h)) {
                                childAt.setPivotY(aVar.e.h);
                            }
                            childAt.setTranslationX(aVar.e.i);
                            childAt.setTranslationY(aVar.e.j);
                            if (Build.VERSION.SDK_INT >= 21) {
                                childAt.setTranslationZ(aVar.e.k);
                                if (aVar.e.l) {
                                    childAt.setElevation(aVar.e.m);
                                }
                            }
                        }
                    } else {
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                }
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            a aVar4 = this.d.get(num);
            if (aVar4.d.ad != -1 && aVar4.d.ad == 1) {
                androidx.constraintlayout.widget.a aVar5 = new androidx.constraintlayout.widget.a(constraintLayout.getContext());
                aVar5.setId(num.intValue());
                if (aVar4.d.ae != null) {
                    aVar5.setReferencedIds(aVar4.d.ae);
                } else if (aVar4.d.af != null) {
                    aVar4.d.ae = a(aVar5, aVar4.d.af);
                    aVar5.setReferencedIds(aVar4.d.ae);
                }
                aVar5.setType(aVar4.d.ab);
                aVar5.setMargin(aVar4.d.ac);
                ConstraintLayout.a generateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                aVar5.b();
                aVar4.a(generateDefaultLayoutParams);
                constraintLayout.addView(aVar5, generateDefaultLayoutParams);
            }
            if (aVar4.d.a) {
                h hVar = new h(constraintLayout.getContext());
                hVar.setId(num.intValue());
                ConstraintLayout.a generateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                aVar4.a(generateDefaultLayoutParams2);
                constraintLayout.addView(hVar, generateDefaultLayoutParams2);
            }
        }
    }

    public void b(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else {
                    switch (eventType) {
                        case 2:
                            String name = xml.getName();
                            a a2 = a(context, Xml.asAttributeSet(xml));
                            if (name.equalsIgnoreCase("Guideline")) {
                                a2.d.a = true;
                            }
                            this.d.put(Integer.valueOf(a2.a), a2);
                            continue;
                        case 3:
                            continue;
                        default:
                            continue;
                    }
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }

    public void a(Context context, XmlPullParser xmlPullParser) {
        char c2;
        try {
            int eventType = xmlPullParser.getEventType();
            a aVar = null;
            while (eventType != 1) {
                if (eventType == 0) {
                    xmlPullParser.getName();
                } else {
                    switch (eventType) {
                        case 2:
                            String name = xmlPullParser.getName();
                            switch (name.hashCode()) {
                                case -2025855158:
                                    if (name.equals("Layout")) {
                                        c2 = 5;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -1984451626:
                                    if (name.equals("Motion")) {
                                        c2 = 6;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -1269513683:
                                    if (name.equals("PropertySet")) {
                                        c2 = 3;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -1238332596:
                                    if (name.equals("Transform")) {
                                        c2 = 4;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -71750448:
                                    if (name.equals("Guideline")) {
                                        c2 = 1;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 1331510167:
                                    if (name.equals("Barrier")) {
                                        c2 = 2;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 1791837707:
                                    if (name.equals("CustomAttribute")) {
                                        c2 = 7;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 1803088381:
                                    if (name.equals("Constraint")) {
                                        c2 = 0;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                default:
                                    c2 = 65535;
                                    break;
                            }
                            switch (c2) {
                                case 0:
                                    aVar = a(context, Xml.asAttributeSet(xmlPullParser));
                                    continue;
                                case 1:
                                    aVar = a(context, Xml.asAttributeSet(xmlPullParser));
                                    aVar.d.a = true;
                                    aVar.d.b = true;
                                    continue;
                                case 2:
                                    aVar = a(context, Xml.asAttributeSet(xmlPullParser));
                                    aVar.d.ad = 1;
                                    continue;
                                case 3:
                                    if (aVar == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                    }
                                    aVar.b.a(context, Xml.asAttributeSet(xmlPullParser));
                                    continue;
                                case 4:
                                    if (aVar == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                    }
                                    aVar.e.a(context, Xml.asAttributeSet(xmlPullParser));
                                    continue;
                                case 5:
                                    if (aVar == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                    }
                                    aVar.d.a(context, Xml.asAttributeSet(xmlPullParser));
                                    continue;
                                case 6:
                                    if (aVar == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                    }
                                    aVar.c.a(context, Xml.asAttributeSet(xmlPullParser));
                                    continue;
                                case 7:
                                    if (aVar == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                    }
                                    androidx.constraintlayout.widget.b.a(context, xmlPullParser, aVar.f);
                                    continue;
                                default:
                                    continue;
                                    continue;
                            }
                        case 3:
                            String name2 = xmlPullParser.getName();
                            if ("ConstraintSet".equals(name2)) {
                                return;
                            }
                            if (name2.equalsIgnoreCase("Constraint")) {
                                this.d.put(Integer.valueOf(aVar.a), aVar);
                                aVar = null;
                                break;
                            } else {
                                continue;
                            }
                        default:
                            continue;
                    }
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        return resourceId == -1 ? typedArray.getInt(i, -1) : resourceId;
    }

    private a a(Context context, AttributeSet attributeSet) {
        a aVar = new a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Constraint);
        a(context, aVar, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        return aVar;
    }

    private void a(Context context, a aVar, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (index != R.styleable.Constraint_android_id && R.styleable.Constraint_android_layout_marginStart != index && R.styleable.Constraint_android_layout_marginEnd != index) {
                aVar.c.a = true;
                aVar.d.b = true;
                aVar.b.a = true;
                aVar.e.a = true;
            }
            switch (e.get(index)) {
                case 1:
                    aVar.d.p = b(typedArray, index, aVar.d.p);
                    break;
                case 2:
                    aVar.d.G = typedArray.getDimensionPixelSize(index, aVar.d.G);
                    break;
                case 3:
                    aVar.d.o = b(typedArray, index, aVar.d.o);
                    break;
                case 4:
                    aVar.d.n = b(typedArray, index, aVar.d.n);
                    break;
                case 5:
                    aVar.d.w = typedArray.getString(index);
                    break;
                case 6:
                    aVar.d.A = typedArray.getDimensionPixelOffset(index, aVar.d.A);
                    break;
                case 7:
                    aVar.d.B = typedArray.getDimensionPixelOffset(index, aVar.d.B);
                    break;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        aVar.d.H = typedArray.getDimensionPixelSize(index, aVar.d.H);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    aVar.d.t = b(typedArray, index, aVar.d.t);
                    break;
                case 10:
                    aVar.d.s = b(typedArray, index, aVar.d.s);
                    break;
                case 11:
                    aVar.d.M = typedArray.getDimensionPixelSize(index, aVar.d.M);
                    break;
                case 12:
                    aVar.d.N = typedArray.getDimensionPixelSize(index, aVar.d.N);
                    break;
                case 13:
                    aVar.d.J = typedArray.getDimensionPixelSize(index, aVar.d.J);
                    break;
                case 14:
                    aVar.d.L = typedArray.getDimensionPixelSize(index, aVar.d.L);
                    break;
                case 15:
                    aVar.d.O = typedArray.getDimensionPixelSize(index, aVar.d.O);
                    break;
                case 16:
                    aVar.d.K = typedArray.getDimensionPixelSize(index, aVar.d.K);
                    break;
                case 17:
                    aVar.d.e = typedArray.getDimensionPixelOffset(index, aVar.d.e);
                    break;
                case 18:
                    aVar.d.f = typedArray.getDimensionPixelOffset(index, aVar.d.f);
                    break;
                case 19:
                    aVar.d.g = typedArray.getFloat(index, aVar.d.g);
                    break;
                case 20:
                    aVar.d.u = typedArray.getFloat(index, aVar.d.u);
                    break;
                case 21:
                    aVar.d.d = typedArray.getLayoutDimension(index, aVar.d.d);
                    break;
                case 22:
                    aVar.b.b = typedArray.getInt(index, aVar.b.b);
                    aVar.b.b = c[aVar.b.b];
                    break;
                case 23:
                    aVar.d.c = typedArray.getLayoutDimension(index, aVar.d.c);
                    break;
                case 24:
                    aVar.d.D = typedArray.getDimensionPixelSize(index, aVar.d.D);
                    break;
                case 25:
                    aVar.d.h = b(typedArray, index, aVar.d.h);
                    break;
                case 26:
                    aVar.d.i = b(typedArray, index, aVar.d.i);
                    break;
                case 27:
                    aVar.d.C = typedArray.getInt(index, aVar.d.C);
                    break;
                case 28:
                    aVar.d.E = typedArray.getDimensionPixelSize(index, aVar.d.E);
                    break;
                case 29:
                    aVar.d.j = b(typedArray, index, aVar.d.j);
                    break;
                case 30:
                    aVar.d.k = b(typedArray, index, aVar.d.k);
                    break;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        aVar.d.I = typedArray.getDimensionPixelSize(index, aVar.d.I);
                        break;
                    } else {
                        break;
                    }
                case 32:
                    aVar.d.q = b(typedArray, index, aVar.d.q);
                    break;
                case 33:
                    aVar.d.r = b(typedArray, index, aVar.d.r);
                    break;
                case 34:
                    aVar.d.F = typedArray.getDimensionPixelSize(index, aVar.d.F);
                    break;
                case 35:
                    aVar.d.m = b(typedArray, index, aVar.d.m);
                    break;
                case 36:
                    aVar.d.l = b(typedArray, index, aVar.d.l);
                    break;
                case 37:
                    aVar.d.v = typedArray.getFloat(index, aVar.d.v);
                    break;
                case 38:
                    aVar.a = typedArray.getResourceId(index, aVar.a);
                    break;
                case 39:
                    aVar.d.Q = typedArray.getFloat(index, aVar.d.Q);
                    break;
                case 40:
                    aVar.d.P = typedArray.getFloat(index, aVar.d.P);
                    break;
                case 41:
                    aVar.d.R = typedArray.getInt(index, aVar.d.R);
                    break;
                case 42:
                    aVar.d.S = typedArray.getInt(index, aVar.d.S);
                    break;
                case 43:
                    aVar.b.d = typedArray.getFloat(index, aVar.b.d);
                    break;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        aVar.e.l = true;
                        aVar.e.m = typedArray.getDimension(index, aVar.e.m);
                        break;
                    } else {
                        break;
                    }
                case 45:
                    aVar.e.c = typedArray.getFloat(index, aVar.e.c);
                    break;
                case 46:
                    aVar.e.d = typedArray.getFloat(index, aVar.e.d);
                    break;
                case 47:
                    aVar.e.e = typedArray.getFloat(index, aVar.e.e);
                    break;
                case 48:
                    aVar.e.f = typedArray.getFloat(index, aVar.e.f);
                    break;
                case 49:
                    aVar.e.g = typedArray.getDimension(index, aVar.e.g);
                    break;
                case 50:
                    aVar.e.h = typedArray.getDimension(index, aVar.e.h);
                    break;
                case 51:
                    aVar.e.i = typedArray.getDimension(index, aVar.e.i);
                    break;
                case 52:
                    aVar.e.j = typedArray.getDimension(index, aVar.e.j);
                    break;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        aVar.e.k = typedArray.getDimension(index, aVar.e.k);
                        break;
                    } else {
                        break;
                    }
                case 54:
                    aVar.d.T = typedArray.getInt(index, aVar.d.T);
                    break;
                case 55:
                    aVar.d.U = typedArray.getInt(index, aVar.d.U);
                    break;
                case 56:
                    aVar.d.V = typedArray.getDimensionPixelSize(index, aVar.d.V);
                    break;
                case 57:
                    aVar.d.W = typedArray.getDimensionPixelSize(index, aVar.d.W);
                    break;
                case 58:
                    aVar.d.X = typedArray.getDimensionPixelSize(index, aVar.d.X);
                    break;
                case 59:
                    aVar.d.Y = typedArray.getDimensionPixelSize(index, aVar.d.Y);
                    break;
                case 60:
                    aVar.e.b = typedArray.getFloat(index, aVar.e.b);
                    break;
                case 61:
                    aVar.d.x = b(typedArray, index, aVar.d.x);
                    break;
                case 62:
                    aVar.d.y = typedArray.getDimensionPixelSize(index, aVar.d.y);
                    break;
                case 63:
                    aVar.d.z = typedArray.getFloat(index, aVar.d.z);
                    break;
                case 64:
                    aVar.c.b = b(typedArray, index, aVar.c.b);
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        aVar.c.c = typedArray.getString(index);
                        break;
                    } else {
                        aVar.c.c = androidx.constraintlayout.a.a.a.c[typedArray.getInteger(index, 0)];
                        break;
                    }
                case 66:
                    aVar.c.e = typedArray.getInt(index, 0);
                    break;
                case 67:
                    aVar.c.g = typedArray.getFloat(index, aVar.c.g);
                    break;
                case 68:
                    aVar.b.e = typedArray.getFloat(index, aVar.b.e);
                    break;
                case 69:
                    aVar.d.Z = typedArray.getFloat(index, 1.0f);
                    break;
                case 70:
                    aVar.d.aa = typedArray.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    aVar.d.ab = typedArray.getInt(index, aVar.d.ab);
                    break;
                case 73:
                    aVar.d.ac = typedArray.getDimensionPixelSize(index, aVar.d.ac);
                    break;
                case 74:
                    aVar.d.af = typedArray.getString(index);
                    break;
                case 75:
                    aVar.d.aj = typedArray.getBoolean(index, aVar.d.aj);
                    break;
                case 76:
                    aVar.c.d = typedArray.getInt(index, aVar.c.d);
                    break;
                case 77:
                    aVar.d.ag = typedArray.getString(index);
                    break;
                case 78:
                    aVar.b.c = typedArray.getInt(index, aVar.b.c);
                    break;
                case 79:
                    aVar.c.f = typedArray.getFloat(index, aVar.c.f);
                    break;
                case 80:
                    aVar.d.ah = typedArray.getBoolean(index, aVar.d.ah);
                    break;
                case 81:
                    aVar.d.ai = typedArray.getBoolean(index, aVar.d.ai);
                    break;
                case 82:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + e.get(index));
                    break;
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + e.get(index));
                    break;
            }
        }
    }

    private int[] a(View view, String str) {
        int i;
        Object a2;
        String[] split = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            try {
                i = R.id.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i = 0;
            }
            if (i == 0) {
                i = context.getResources().getIdentifier(trim, "id", context.getPackageName());
            }
            if (i == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (a2 = ((ConstraintLayout) view.getParent()).a(0, trim)) != null && (a2 instanceof Integer)) {
                i = ((Integer) a2).intValue();
            }
            iArr[i3] = i;
            i2++;
            i3++;
        }
        return i3 != split.length ? Arrays.copyOf(iArr, i3) : iArr;
    }
}
