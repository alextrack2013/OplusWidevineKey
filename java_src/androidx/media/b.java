package androidx.media;

import android.annotation.TargetApi;
import android.media.AudioAttributes;
/* compiled from: AudioAttributesImplApi21.java */
@TargetApi(21)
/* loaded from: classes.dex */
class b implements a {
    AudioAttributes a;
    int b = -1;

    public int hashCode() {
        return this.a.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            return this.a.equals(((b) obj).a);
        }
        return false;
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.a;
    }
}
