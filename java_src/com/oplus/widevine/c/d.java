package com.oplus.widevine.c;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.SystemProperties;
import android.telephony.TelephonyManager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
/* compiled from: Utils.java */
/* loaded from: classes.dex */
public class d {
    public boolean a() {
        return "1".equals(SystemProperties.get("ro.boot.flash.locked"));
    }

    public boolean a(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context == null || (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) == null) {
            return false;
        }
        return activeNetworkInfo.isAvailable();
    }

    @SuppressLint({"MissingPermission", "NewApi"})
    public String b(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getImei(0);
    }

    public void a(InputStream inputStream, String str) {
        ZipInputStream zipInputStream = new ZipInputStream(inputStream);
        FileOutputStream fileOutputStream = null;
        try {
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry != null) {
                    if (nextEntry.isDirectory()) {
                        String name = nextEntry.getName();
                        String substring = name.substring(0, name.length() - 1);
                        new File(str + File.separator + substring).mkdir();
                    } else {
                        File file2 = new File(str + File.separator + nextEntry.getName());
                        file2.createNewFile();
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                        while (true) {
                            try {
                                int read = zipInputStream.read();
                                if (read == -1) {
                                    break;
                                }
                                fileOutputStream2.write(read);
                            } catch (Throwable th) {
                                th = th;
                                fileOutputStream = fileOutputStream2;
                                zipInputStream.close();
                                fileOutputStream.flush();
                                fileOutputStream.close();
                                throw th;
                            }
                        }
                        fileOutputStream2.close();
                        fileOutputStream = fileOutputStream2;
                    }
                } else {
                    zipInputStream.close();
                    zipInputStream.close();
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public boolean a(String str) {
        File[] listFiles;
        if (!str.endsWith(File.separator)) {
            str = str + File.separator;
        }
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                if (file2.isFile()) {
                    file2.delete();
                } else if (file2.isDirectory()) {
                    a(file2.getAbsolutePath());
                }
            }
            return file.delete();
        }
        return false;
    }
}
