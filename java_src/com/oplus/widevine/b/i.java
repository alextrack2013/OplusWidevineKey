package com.oplus.widevine.b;

import android.content.ContentValues;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* compiled from: RealmeKeysTask.java */
/* loaded from: classes.dex */
public abstract class i extends Handler {
    protected final Context a;
    protected Message b;
    protected int c;
    protected a d;

    /* compiled from: RealmeKeysTask.java */
    /* loaded from: classes.dex */
    public interface a {
        void a();
    }

    public boolean c() {
        return true;
    }

    public i(Context context, Looper looper) {
        super(looper);
        this.b = null;
        this.c = 0;
        this.a = context;
    }

    public void a(a aVar) {
        this.d = aVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        this.b = message;
        if (message != null) {
            this.c = message.what;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ContentValues b(String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("appId", "RMX1851");
        contentValues.put("secureKey", com.oplus.widevine.c.c.b(str));
        return contentValues;
    }

    public void b() {
        sendEmptyMessage(2);
        removeCallbacksAndMessages(null);
    }
}
