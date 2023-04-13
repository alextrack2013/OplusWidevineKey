package androidx.core.e;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import androidx.core.f.c;
import java.util.concurrent.Executor;
/* compiled from: PrecomputedTextCompat.java */
/* loaded from: classes.dex */
public class a implements Spannable {
    private static final Object a = new Object();
    private static Executor b;
    private final Spannable c;
    private final C0028a d;
    private final PrecomputedText e;

    /* compiled from: PrecomputedTextCompat.java */
    /* renamed from: androidx.core.e.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0028a {
        final PrecomputedText.Params a;
        private final TextPaint b;
        private final TextDirectionHeuristic c;
        private final int d;
        private final int e;

        /* compiled from: PrecomputedTextCompat.java */
        /* renamed from: androidx.core.e.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0029a {
            private final TextPaint a;
            private TextDirectionHeuristic b;
            private int c;
            private int d;

            public C0029a(TextPaint textPaint) {
                this.a = textPaint;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.c = 1;
                    this.d = 1;
                } else {
                    this.d = 0;
                    this.c = 0;
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    this.b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.b = null;
                }
            }

            public C0029a a(int i) {
                this.c = i;
                return this;
            }

            public C0029a b(int i) {
                this.d = i;
                return this;
            }

            public C0029a a(TextDirectionHeuristic textDirectionHeuristic) {
                this.b = textDirectionHeuristic;
                return this;
            }

            public C0028a a() {
                return new C0028a(this.a, this.b, this.c, this.d);
            }
        }

        @SuppressLint({"NewApi"})
        C0028a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.a = new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            } else {
                this.a = null;
            }
            this.b = textPaint;
            this.c = textDirectionHeuristic;
            this.d = i;
            this.e = i2;
        }

        public C0028a(PrecomputedText.Params params) {
            this.b = params.getTextPaint();
            this.c = params.getTextDirection();
            this.d = params.getBreakStrategy();
            this.e = params.getHyphenationFrequency();
            this.a = Build.VERSION.SDK_INT < 29 ? null : params;
        }

        public TextPaint a() {
            return this.b;
        }

        public TextDirectionHeuristic b() {
            return this.c;
        }

        public int c() {
            return this.d;
        }

        public int d() {
            return this.e;
        }

        public boolean a(C0028a c0028a) {
            if ((Build.VERSION.SDK_INT < 23 || (this.d == c0028a.c() && this.e == c0028a.d())) && this.b.getTextSize() == c0028a.a().getTextSize() && this.b.getTextScaleX() == c0028a.a().getTextScaleX() && this.b.getTextSkewX() == c0028a.a().getTextSkewX()) {
                if ((Build.VERSION.SDK_INT < 21 || (this.b.getLetterSpacing() == c0028a.a().getLetterSpacing() && TextUtils.equals(this.b.getFontFeatureSettings(), c0028a.a().getFontFeatureSettings()))) && this.b.getFlags() == c0028a.a().getFlags()) {
                    if (Build.VERSION.SDK_INT >= 24) {
                        if (!this.b.getTextLocales().equals(c0028a.a().getTextLocales())) {
                            return false;
                        }
                    } else if (Build.VERSION.SDK_INT >= 17 && !this.b.getTextLocale().equals(c0028a.a().getTextLocale())) {
                        return false;
                    }
                    return this.b.getTypeface() == null ? c0028a.a().getTypeface() == null : this.b.getTypeface().equals(c0028a.a().getTypeface());
                }
                return false;
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof C0028a) {
                C0028a c0028a = (C0028a) obj;
                if (a(c0028a)) {
                    return Build.VERSION.SDK_INT < 18 || this.c == c0028a.b();
                }
                return false;
            }
            return false;
        }

        public int hashCode() {
            if (Build.VERSION.SDK_INT >= 24) {
                return c.a(Float.valueOf(this.b.getTextSize()), Float.valueOf(this.b.getTextScaleX()), Float.valueOf(this.b.getTextSkewX()), Float.valueOf(this.b.getLetterSpacing()), Integer.valueOf(this.b.getFlags()), this.b.getTextLocales(), this.b.getTypeface(), Boolean.valueOf(this.b.isElegantTextHeight()), this.c, Integer.valueOf(this.d), Integer.valueOf(this.e));
            }
            if (Build.VERSION.SDK_INT >= 21) {
                return c.a(Float.valueOf(this.b.getTextSize()), Float.valueOf(this.b.getTextScaleX()), Float.valueOf(this.b.getTextSkewX()), Float.valueOf(this.b.getLetterSpacing()), Integer.valueOf(this.b.getFlags()), this.b.getTextLocale(), this.b.getTypeface(), Boolean.valueOf(this.b.isElegantTextHeight()), this.c, Integer.valueOf(this.d), Integer.valueOf(this.e));
            }
            if (Build.VERSION.SDK_INT >= 18) {
                return c.a(Float.valueOf(this.b.getTextSize()), Float.valueOf(this.b.getTextScaleX()), Float.valueOf(this.b.getTextSkewX()), Integer.valueOf(this.b.getFlags()), this.b.getTextLocale(), this.b.getTypeface(), this.c, Integer.valueOf(this.d), Integer.valueOf(this.e));
            }
            if (Build.VERSION.SDK_INT >= 17) {
                return c.a(Float.valueOf(this.b.getTextSize()), Float.valueOf(this.b.getTextScaleX()), Float.valueOf(this.b.getTextSkewX()), Integer.valueOf(this.b.getFlags()), this.b.getTextLocale(), this.b.getTypeface(), this.c, Integer.valueOf(this.d), Integer.valueOf(this.e));
            }
            return c.a(Float.valueOf(this.b.getTextSize()), Float.valueOf(this.b.getTextScaleX()), Float.valueOf(this.b.getTextSkewX()), Integer.valueOf(this.b.getFlags()), this.b.getTypeface(), this.c, Integer.valueOf(this.d), Integer.valueOf(this.e));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.b.getTextSize());
            sb.append(", textScaleX=" + this.b.getTextScaleX());
            sb.append(", textSkewX=" + this.b.getTextSkewX());
            if (Build.VERSION.SDK_INT >= 21) {
                sb.append(", letterSpacing=" + this.b.getLetterSpacing());
                sb.append(", elegantTextHeight=" + this.b.isElegantTextHeight());
            }
            if (Build.VERSION.SDK_INT >= 24) {
                sb.append(", textLocale=" + this.b.getTextLocales());
            } else if (Build.VERSION.SDK_INT >= 17) {
                sb.append(", textLocale=" + this.b.getTextLocale());
            }
            sb.append(", typeface=" + this.b.getTypeface());
            if (Build.VERSION.SDK_INT >= 26) {
                sb.append(", variationSettings=" + this.b.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.c);
            sb.append(", breakStrategy=" + this.d);
            sb.append(", hyphenationFrequency=" + this.e);
            sb.append("}");
            return sb.toString();
        }
    }

    public PrecomputedText a() {
        if (this.c instanceof PrecomputedText) {
            return (PrecomputedText) this.c;
        }
        return null;
    }

    public C0028a b() {
        return this.d;
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void setSpan(Object obj, int i, int i2, int i3) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.e.setSpan(obj, i, i2, i3);
        } else {
            this.c.setSpan(obj, i, i2, i3);
        }
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.e.removeSpan(obj);
        } else {
            this.c.removeSpan(obj);
        }
    }

    @Override // android.text.Spanned
    @SuppressLint({"NewApi"})
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 29) {
            return (T[]) this.e.getSpans(i, i2, cls);
        }
        return (T[]) this.c.getSpans(i, i2, cls);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.c.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.c.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.c.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.c.nextSpanTransition(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.c.length();
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.c.charAt(i);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.c.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.c.toString();
    }
}
