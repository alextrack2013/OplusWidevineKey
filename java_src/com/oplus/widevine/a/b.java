package com.oplus.widevine.a;
/* compiled from: EngineerModeBox.java */
/* loaded from: classes.dex */
public class b {
    public static boolean a() {
        try {
            new c().b();
            new c().a();
            com.oplus.widevine.c.b.a("EngineerModeBox", "KeyAttestationTest pass");
            return true;
        } catch (Exception e) {
            com.oplus.widevine.c.b.a("EngineerModeBox", "KeyAttestationTest failed", e);
            return false;
        }
    }
}
