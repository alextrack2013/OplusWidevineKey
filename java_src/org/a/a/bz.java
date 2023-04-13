package org.a.a;

import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bz {
    private static final long a = Runtime.getRuntime().maxMemory();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i) {
        int i2 = 1;
        if (i > 127) {
            int i3 = 1;
            while (true) {
                i >>>= 8;
                if (i == 0) {
                    break;
                }
                i3++;
            }
            for (int i4 = (i3 - 1) * 8; i4 >= 0; i4 -= 8) {
                i2++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(InputStream inputStream) {
        if (inputStream instanceof bx) {
            return ((bx) inputStream).a();
        }
        if (inputStream instanceof k) {
            return ((k) inputStream).a();
        }
        if (inputStream instanceof ByteArrayInputStream) {
            return ((ByteArrayInputStream) inputStream).available();
        }
        if (inputStream instanceof FileInputStream) {
            try {
                FileChannel channel = ((FileInputStream) inputStream).getChannel();
                long size = channel != null ? channel.size() : 2147483647L;
                if (size < 2147483647L) {
                    return (int) size;
                }
            } catch (IOException unused) {
            }
        }
        if (a > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i) {
        if (i >= 31) {
            if (i < 128) {
                return 2;
            }
            byte[] bArr = new byte[5];
            int length = bArr.length - 1;
            bArr[length] = (byte) (i & 127);
            do {
                i >>= 7;
                length--;
                bArr[length] = (byte) ((i & 127) | 128);
            } while (i > 127);
            return 1 + (bArr.length - length);
        }
        return 1;
    }
}
