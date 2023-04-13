package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(androidx.versionedparcelable.a aVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.a = (IconCompat) aVar.b((androidx.versionedparcelable.a) remoteActionCompat.a, 1);
        remoteActionCompat.b = aVar.b(remoteActionCompat.b, 2);
        remoteActionCompat.c = aVar.b(remoteActionCompat.c, 3);
        remoteActionCompat.d = (PendingIntent) aVar.b((androidx.versionedparcelable.a) remoteActionCompat.d, 4);
        remoteActionCompat.e = aVar.b(remoteActionCompat.e, 5);
        remoteActionCompat.f = aVar.b(remoteActionCompat.f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, androidx.versionedparcelable.a aVar) {
        aVar.a(false, false);
        aVar.a(remoteActionCompat.a, 1);
        aVar.a(remoteActionCompat.b, 2);
        aVar.a(remoteActionCompat.c, 3);
        aVar.a(remoteActionCompat.d, 4);
        aVar.a(remoteActionCompat.e, 5);
        aVar.a(remoteActionCompat.f, 6);
    }
}
