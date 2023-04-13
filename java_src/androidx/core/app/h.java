package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: TaskStackBuilder.java */
/* loaded from: classes.dex */
public final class h implements Iterable<Intent> {
    private final ArrayList<Intent> a = new ArrayList<>();
    private final Context b;

    /* compiled from: TaskStackBuilder.java */
    /* loaded from: classes.dex */
    public interface a {
        Intent i();
    }

    private h(Context context) {
        this.b = context;
    }

    public static h a(Context context) {
        return new h(context);
    }

    public h a(Intent intent) {
        this.a.add(intent);
        return this;
    }

    public h a(Activity activity) {
        Intent i = activity instanceof a ? ((a) activity).i() : null;
        if (i == null) {
            i = f.a(activity);
        }
        if (i != null) {
            ComponentName component = i.getComponent();
            if (component == null) {
                component = i.resolveActivity(this.b.getPackageManager());
            }
            a(component);
            a(i);
        }
        return this;
    }

    public h a(ComponentName componentName) {
        int size = this.a.size();
        try {
            Intent a2 = f.a(this.b, componentName);
            while (a2 != null) {
                this.a.add(size, a2);
                a2 = f.a(this.b, a2.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.a.iterator();
    }

    public void a() {
        a((Bundle) null);
    }

    public void a(Bundle bundle) {
        if (this.a.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) this.a.toArray(new Intent[this.a.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        if (androidx.core.a.a.a(this.b, intentArr, bundle)) {
            return;
        }
        Intent intent = new Intent(intentArr[intentArr.length - 1]);
        intent.addFlags(268435456);
        this.b.startActivity(intent);
    }
}
