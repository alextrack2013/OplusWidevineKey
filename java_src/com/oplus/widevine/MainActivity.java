package com.oplus.widevine;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.os.SystemProperties;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.b;
import com.oplus.widevine.b.g;
import com.oplus.widevine.b.j;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class MainActivity extends Activity {
    private TextView a;
    private a b;
    private a c;
    private final Handler d = new b(this);

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_main);
        this.a = (TextView) findViewById(R.id.output_view);
        findViewById(R.id.button).setOnClickListener(new View.OnClickListener(this) { // from class: com.oplus.widevine.a
            private final MainActivity a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.a = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.a.b(view);
            }
        });
        findViewById(R.id.button3).setOnClickListener(new View.OnClickListener(this) { // from class: com.oplus.widevine.b
            private final MainActivity a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.a = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.a.a(view);
            }
        });
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b(View view) {
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(View view) {
        finish();
    }

    private void a() {
        b.a aVar = new b.a(this);
        aVar.a(false);
        aVar.a("Agree", new DialogInterface.OnClickListener(this) { // from class: com.oplus.widevine.c
            private final MainActivity a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.a = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                this.a.b(dialogInterface, i);
            }
        }).b("Disagree", new DialogInterface.OnClickListener(this) { // from class: com.oplus.widevine.d
            private final MainActivity a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.a = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                this.a.a(dialogInterface, i);
            }
        });
        androidx.appcompat.app.b b2 = aVar.b();
        b2.a("To provide services for you , we need to collect and use your imei information, do you agree?");
        b2.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        a(this.a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        finish();
    }

    private void b() {
        if (new com.oplus.widevine.c.d().a(this)) {
            g.a(this, this.d, j.class).a();
            if (this.b == null) {
                this.b = new a(0, 60000L, 6000L);
            }
            this.b.cancel();
            this.a.setText("Try to wirte Windevine-Key...");
            this.b.start();
            return;
        }
        this.a.setText("The network is unavailable, unable to write key");
    }

    private void a(TextView textView) {
        String str;
        com.oplus.widevine.c.d dVar = new com.oplus.widevine.c.d();
        e.k = SystemProperties.get("ro.oppo.regionmark", "IN").toLowerCase();
        boolean a2 = dVar.a();
        boolean a3 = dVar.a(this);
        boolean a4 = com.oplus.widevine.a.d.a();
        String str2 = "Region: " + e.k + "\nIs Devices Locked: " + a2 + "\nIs Widevine-key exists: " + a4 + "\n\n";
        if (!a3) {
            str = str2 + "The network is unavailable, unable to write key";
        } else if (a4) {
            str = str2 + "The Widevine-Key is already exists,if you want, you can click the button 'Widevine' to overwrite.";
        } else {
            str = str2 + "Click the button 'Widevine' to start writing key";
        }
        textView.setText(str);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.c != null) {
            this.c.cancel();
        }
        if (this.b != null) {
            this.b.cancel();
        }
        if (this.d != null) {
            this.d.removeCallbacksAndMessages(null);
        }
    }

    /* loaded from: classes.dex */
    private static class b extends Handler {
        private final WeakReference<MainActivity> a;

        public b(MainActivity mainActivity) {
            this.a = new WeakReference<>(mainActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            MainActivity mainActivity = this.a.get();
            switch (message.what) {
                case 0:
                    mainActivity.a.setText(((Boolean) message.obj).booleanValue() ? "Windevine-Key written successfully" : "Failed to write windevine-key");
                    return;
                case 1:
                    mainActivity.a.setText(((Boolean) message.obj).booleanValue() ? "GoogleKey written successfully" : "Failed to write GoogleKey");
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends CountDownTimer {
        private final int b;

        public a(int i, long j, long j2) {
            super(j, j2);
            this.b = i;
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            boolean a = com.oplus.widevine.a.d.a();
            Message obtainMessage = MainActivity.this.d.obtainMessage();
            if (a) {
                obtainMessage.what = this.b;
                obtainMessage.obj = true;
                MainActivity.this.d.sendMessage(obtainMessage);
                cancel();
            }
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            boolean a = com.oplus.widevine.a.d.a();
            Message obtainMessage = MainActivity.this.d.obtainMessage();
            obtainMessage.what = this.b;
            obtainMessage.obj = Boolean.valueOf(a);
            MainActivity.this.d.sendMessage(obtainMessage);
        }
    }
}
