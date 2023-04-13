package androidx.lifecycle;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
/* compiled from: ViewModelStore.java */
/* loaded from: classes.dex */
public class w {
    private final HashMap<String, u> a = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, u uVar) {
        u put = this.a.put(str, uVar);
        if (put != null) {
            put.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final u a(String str) {
        return this.a.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<String> a() {
        return new HashSet(this.a.keySet());
    }

    public final void b() {
        for (u uVar : this.a.values()) {
            uVar.d();
        }
        this.a.clear();
    }
}
