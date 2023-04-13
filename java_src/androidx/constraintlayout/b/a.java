package androidx.constraintlayout.b;

import androidx.constraintlayout.b.b;
import java.util.Arrays;
/* compiled from: ArrayLinkedVariables.java */
/* loaded from: classes.dex */
public class a implements b.a {
    private static float l = 0.001f;
    protected final c b;
    private final b c;
    int a = 0;
    private int d = 8;
    private h e = null;
    private int[] f = new int[this.d];
    private int[] g = new int[this.d];
    private float[] h = new float[this.d];
    private int i = -1;
    private int j = -1;
    private boolean k = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(b bVar, c cVar) {
        this.c = bVar;
        this.b = cVar;
    }

    @Override // androidx.constraintlayout.b.b.a
    public final void a(h hVar, float f) {
        if (f == 0.0f) {
            a(hVar, true);
        } else if (this.i == -1) {
            this.i = 0;
            this.h[this.i] = f;
            this.f[this.i] = hVar.b;
            this.g[this.i] = -1;
            hVar.l++;
            hVar.a(this.c);
            this.a++;
            if (this.k) {
                return;
            }
            this.j++;
            if (this.j >= this.f.length) {
                this.k = true;
                this.j = this.f.length - 1;
            }
        } else {
            int i = this.i;
            int i2 = -1;
            for (int i3 = 0; i != -1 && i3 < this.a; i3++) {
                if (this.f[i] == hVar.b) {
                    this.h[i] = f;
                    return;
                }
                if (this.f[i] < hVar.b) {
                    i2 = i;
                }
                i = this.g[i];
            }
            int i4 = this.j + 1;
            if (this.k) {
                if (this.f[this.j] == -1) {
                    i4 = this.j;
                } else {
                    i4 = this.f.length;
                }
            }
            if (i4 >= this.f.length && this.a < this.f.length) {
                int i5 = 0;
                while (true) {
                    if (i5 >= this.f.length) {
                        break;
                    } else if (this.f[i5] == -1) {
                        i4 = i5;
                        break;
                    } else {
                        i5++;
                    }
                }
            }
            if (i4 >= this.f.length) {
                i4 = this.f.length;
                this.d *= 2;
                this.k = false;
                this.j = i4 - 1;
                this.h = Arrays.copyOf(this.h, this.d);
                this.f = Arrays.copyOf(this.f, this.d);
                this.g = Arrays.copyOf(this.g, this.d);
            }
            this.f[i4] = hVar.b;
            this.h[i4] = f;
            if (i2 != -1) {
                this.g[i4] = this.g[i2];
                this.g[i2] = i4;
            } else {
                this.g[i4] = this.i;
                this.i = i4;
            }
            hVar.l++;
            hVar.a(this.c);
            this.a++;
            if (!this.k) {
                this.j++;
            }
            if (this.a >= this.f.length) {
                this.k = true;
            }
            if (this.j >= this.f.length) {
                this.k = true;
                this.j = this.f.length - 1;
            }
        }
    }

    @Override // androidx.constraintlayout.b.b.a
    public void a(h hVar, float f, boolean z) {
        if (f <= (-l) || f >= l) {
            if (this.i == -1) {
                this.i = 0;
                this.h[this.i] = f;
                this.f[this.i] = hVar.b;
                this.g[this.i] = -1;
                hVar.l++;
                hVar.a(this.c);
                this.a++;
                if (this.k) {
                    return;
                }
                this.j++;
                if (this.j >= this.f.length) {
                    this.k = true;
                    this.j = this.f.length - 1;
                    return;
                }
                return;
            }
            int i = this.i;
            int i2 = -1;
            for (int i3 = 0; i != -1 && i3 < this.a; i3++) {
                if (this.f[i] == hVar.b) {
                    float f2 = this.h[i] + f;
                    if (f2 > (-l) && f2 < l) {
                        f2 = 0.0f;
                    }
                    this.h[i] = f2;
                    if (f2 == 0.0f) {
                        if (i == this.i) {
                            this.i = this.g[i];
                        } else {
                            this.g[i2] = this.g[i];
                        }
                        if (z) {
                            hVar.b(this.c);
                        }
                        if (this.k) {
                            this.j = i;
                        }
                        hVar.l--;
                        this.a--;
                        return;
                    }
                    return;
                }
                if (this.f[i] < hVar.b) {
                    i2 = i;
                }
                i = this.g[i];
            }
            int i4 = this.j + 1;
            if (this.k) {
                if (this.f[this.j] == -1) {
                    i4 = this.j;
                } else {
                    i4 = this.f.length;
                }
            }
            if (i4 >= this.f.length && this.a < this.f.length) {
                int i5 = 0;
                while (true) {
                    if (i5 >= this.f.length) {
                        break;
                    } else if (this.f[i5] == -1) {
                        i4 = i5;
                        break;
                    } else {
                        i5++;
                    }
                }
            }
            if (i4 >= this.f.length) {
                i4 = this.f.length;
                this.d *= 2;
                this.k = false;
                this.j = i4 - 1;
                this.h = Arrays.copyOf(this.h, this.d);
                this.f = Arrays.copyOf(this.f, this.d);
                this.g = Arrays.copyOf(this.g, this.d);
            }
            this.f[i4] = hVar.b;
            this.h[i4] = f;
            if (i2 != -1) {
                this.g[i4] = this.g[i2];
                this.g[i2] = i4;
            } else {
                this.g[i4] = this.i;
                this.i = i4;
            }
            hVar.l++;
            hVar.a(this.c);
            this.a++;
            if (!this.k) {
                this.j++;
            }
            if (this.j >= this.f.length) {
                this.k = true;
                this.j = this.f.length - 1;
            }
        }
    }

    @Override // androidx.constraintlayout.b.b.a
    public float a(b bVar, boolean z) {
        float b = b(bVar.a);
        a(bVar.a, z);
        b.a aVar = bVar.e;
        int c = aVar.c();
        for (int i = 0; i < c; i++) {
            h a = aVar.a(i);
            a(a, aVar.b(a) * b, z);
        }
        return b;
    }

    @Override // androidx.constraintlayout.b.b.a
    public final float a(h hVar, boolean z) {
        if (this.e == hVar) {
            this.e = null;
        }
        if (this.i == -1) {
            return 0.0f;
        }
        int i = this.i;
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.a) {
            if (this.f[i] == hVar.b) {
                if (i == this.i) {
                    this.i = this.g[i];
                } else {
                    this.g[i3] = this.g[i];
                }
                if (z) {
                    hVar.b(this.c);
                }
                hVar.l--;
                this.a--;
                this.f[i] = -1;
                if (this.k) {
                    this.j = i;
                }
                return this.h[i];
            }
            i2++;
            i3 = i;
            i = this.g[i];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.b.b.a
    public final void a() {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.a; i2++) {
            h hVar = this.b.d[this.f[i]];
            if (hVar != null) {
                hVar.b(this.c);
            }
            i = this.g[i];
        }
        this.i = -1;
        this.j = -1;
        this.k = false;
        this.a = 0;
    }

    @Override // androidx.constraintlayout.b.b.a
    public boolean a(h hVar) {
        if (this.i == -1) {
            return false;
        }
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.a; i2++) {
            if (this.f[i] == hVar.b) {
                return true;
            }
            i = this.g[i];
        }
        return false;
    }

    @Override // androidx.constraintlayout.b.b.a
    public void b() {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.a; i2++) {
            float[] fArr = this.h;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.g[i];
        }
    }

    @Override // androidx.constraintlayout.b.b.a
    public void a(float f) {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.a; i2++) {
            float[] fArr = this.h;
            fArr[i] = fArr[i] / f;
            i = this.g[i];
        }
    }

    @Override // androidx.constraintlayout.b.b.a
    public int c() {
        return this.a;
    }

    @Override // androidx.constraintlayout.b.b.a
    public h a(int i) {
        int i2 = this.i;
        for (int i3 = 0; i2 != -1 && i3 < this.a; i3++) {
            if (i3 == i) {
                return this.b.d[this.f[i2]];
            }
            i2 = this.g[i2];
        }
        return null;
    }

    @Override // androidx.constraintlayout.b.b.a
    public float b(int i) {
        int i2 = this.i;
        for (int i3 = 0; i2 != -1 && i3 < this.a; i3++) {
            if (i3 == i) {
                return this.h[i2];
            }
            i2 = this.g[i2];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.b.b.a
    public final float b(h hVar) {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.a; i2++) {
            if (this.f[i] == hVar.b) {
                return this.h[i];
            }
            i = this.g[i];
        }
        return 0.0f;
    }

    public String toString() {
        String str = "";
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.a; i2++) {
            str = ((str + " -> ") + this.h[i] + " : ") + this.b.d[this.f[i]];
            i = this.g[i];
        }
        return str;
    }
}
