package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.e;
import androidx.lifecycle.f;
import androidx.lifecycle.j;
import androidx.savedstate.a;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
@SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
final class Recreator implements e {
    private final c a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Recreator(c cVar) {
        this.a = cVar;
    }

    @Override // androidx.lifecycle.h
    public void a(j jVar, f.a aVar) {
        if (aVar != f.a.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        jVar.b().b(this);
        Bundle a2 = this.a.e().a("androidx.savedstate.Restarter");
        if (a2 == null) {
            return;
        }
        ArrayList<String> stringArrayList = a2.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        Iterator<String> it = stringArrayList.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    private void a(String str) {
        try {
            Class<? extends U> asSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(a.InterfaceC0039a.class);
            try {
                Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                try {
                    ((a.InterfaceC0039a) declaredConstructor.newInstance(new Object[0])).a(this.a);
                } catch (Exception e) {
                    throw new RuntimeException("Failed to instantiate " + str, e);
                }
            } catch (NoSuchMethodException e2) {
                throw new IllegalStateException("Class" + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
            }
        } catch (ClassNotFoundException e3) {
            throw new RuntimeException("Class " + str + " wasn't found", e3);
        }
    }

    /* loaded from: classes.dex */
    static final class a implements a.b {
        final Set<String> a = new HashSet();

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(androidx.savedstate.a aVar) {
            aVar.a("androidx.savedstate.Restarter", this);
        }

        @Override // androidx.savedstate.a.b
        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.a));
            return bundle;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(String str) {
            this.a.add(str);
        }
    }
}
