package androidx.media;
/* loaded from: classes.dex */
public final class AudioAttributesImplBaseParcelizer {
    public static c read(androidx.versionedparcelable.a aVar) {
        c cVar = new c();
        cVar.a = aVar.b(cVar.a, 1);
        cVar.b = aVar.b(cVar.b, 2);
        cVar.c = aVar.b(cVar.c, 3);
        cVar.d = aVar.b(cVar.d, 4);
        return cVar;
    }

    public static void write(c cVar, androidx.versionedparcelable.a aVar) {
        aVar.a(false, false);
        aVar.a(cVar.a, 1);
        aVar.a(cVar.b, 2);
        aVar.a(cVar.c, 3);
        aVar.a(cVar.d, 4);
    }
}
