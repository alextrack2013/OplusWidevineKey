package android.support.v4.a;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.a.a;
/* compiled from: ResultReceiver.java */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator<b>() { // from class: android.support.v4.a.b.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b[] newArray(int i) {
            return new b[i];
        }
    };
    final boolean a = false;
    final Handler b = null;
    android.support.v4.a.a c;

    protected void a(int i, Bundle bundle) {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* compiled from: ResultReceiver.java */
    /* renamed from: android.support.v4.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class RunnableC0002b implements Runnable {
        final int a;
        final Bundle b;

        RunnableC0002b(int i, Bundle bundle) {
            this.a = i;
            this.b = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(this.a, this.b);
        }
    }

    /* compiled from: ResultReceiver.java */
    /* loaded from: classes.dex */
    class a extends a.AbstractBinderC0000a {
        a() {
        }

        @Override // android.support.v4.a.a
        public void a(int i, Bundle bundle) {
            if (b.this.b != null) {
                b.this.b.post(new RunnableC0002b(i, bundle));
            } else {
                b.this.a(i, bundle);
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.c == null) {
                this.c = new a();
            }
            parcel.writeStrongBinder(this.c.asBinder());
        }
    }

    b(Parcel parcel) {
        this.c = a.AbstractBinderC0000a.a(parcel.readStrongBinder());
    }
}
