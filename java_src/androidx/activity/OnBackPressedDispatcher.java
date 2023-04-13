package androidx.activity;

import android.annotation.SuppressLint;
import androidx.lifecycle.f;
import androidx.lifecycle.h;
import androidx.lifecycle.j;
import java.util.ArrayDeque;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class OnBackPressedDispatcher {
    final ArrayDeque<c> a;
    private final Runnable b;

    public OnBackPressedDispatcher() {
        this(null);
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.a = new ArrayDeque<>();
        this.b = runnable;
    }

    androidx.activity.a a(c cVar) {
        this.a.add(cVar);
        a aVar = new a(cVar);
        cVar.a(aVar);
        return aVar;
    }

    @SuppressLint({"LambdaLast"})
    public void a(j jVar, c cVar) {
        f b = jVar.b();
        if (b.a() == f.b.DESTROYED) {
            return;
        }
        cVar.a(new LifecycleOnBackPressedCancellable(b, cVar));
    }

    public void a() {
        Iterator<c> descendingIterator = this.a.descendingIterator();
        while (descendingIterator.hasNext()) {
            c next = descendingIterator.next();
            if (next.a()) {
                next.c();
                return;
            }
        }
        if (this.b != null) {
            this.b.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements androidx.activity.a {
        private final c b;

        a(c cVar) {
            this.b = cVar;
        }

        @Override // androidx.activity.a
        public void a() {
            OnBackPressedDispatcher.this.a.remove(this.b);
            this.b.b(this);
        }
    }

    /* loaded from: classes.dex */
    private class LifecycleOnBackPressedCancellable implements androidx.activity.a, h {
        private final f b;
        private final c c;
        private androidx.activity.a d;

        LifecycleOnBackPressedCancellable(f fVar, c cVar) {
            this.b = fVar;
            this.c = cVar;
            fVar.a(this);
        }

        @Override // androidx.lifecycle.h
        public void a(j jVar, f.a aVar) {
            if (aVar == f.a.ON_START) {
                this.d = OnBackPressedDispatcher.this.a(this.c);
            } else if (aVar == f.a.ON_STOP) {
                if (this.d != null) {
                    this.d.a();
                }
            } else if (aVar == f.a.ON_DESTROY) {
                a();
            }
        }

        @Override // androidx.activity.a
        public void a() {
            this.b.b(this);
            this.c.b(this);
            if (this.d != null) {
                this.d.a();
                this.d = null;
            }
        }
    }
}
