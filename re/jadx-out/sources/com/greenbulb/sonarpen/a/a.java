package com.greenbulb.sonarpen.a;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private byte[] a;
    private int[] b;
    private double c;
    private int d;
    private double e;

    private double a(int i) {
        if (i < 0) {
            i *= -1;
        }
        double d = (((double) i) / 32767.0d) * 100.0d;
        if (d == 0.0d) {
            d = 1.0d;
        }
        double dSqrt = Math.sqrt(100.0d / d);
        double d2 = dSqrt * dSqrt;
        return (((d2 <= 100.0d ? d2 : 100.0d) * (-1.0d)) + 1.0d) / 3.141592653589793d;
    }

    private int[] a(byte[] bArr) {
        int[] iArr = new int[bArr.length / 2];
        int i = 0;
        while (i < bArr.length) {
            iArr[i == 0 ? 0 : i / 2] = (short) (((short) ((bArr[i + 1] & 255) << 8)) | ((short) (bArr[i] & 255)));
            i += 2;
        }
        return iArr;
    }

    private double f() {
        int length = this.a.length / 2;
        int i = 8192;
        while (i > length) {
            i >>= 1;
        }
        b bVar = new b(i);
        bVar.a(this.a, length);
        return a(bVar.a());
    }

    public double a(double d) {
        return ((double) ((int) (d * 10.0d))) / 10.0d;
    }

    public int a() {
        if (this.d == 0) {
            b();
        }
        return this.d;
    }

    public void b(byte[] bArr) {
        this.a = bArr;
        this.b = null;
        this.c = 0.0d;
        this.d = 0;
        this.e = 0.0d;
    }

    public int[] b() {
        if (this.b == null) {
            c();
        }
        int i = 0;
        int i2 = 0;
        for (int i3 : this.b) {
            if (i3 > i) {
                i = i3;
            }
            if (i3 < i2) {
                i2 = i3;
            }
        }
        this.d = Math.max(i, i2 * (-1));
        return new int[]{i, i2};
    }

    public int[] c() {
        if (this.b == null) {
            this.b = a(this.a);
        }
        return this.b;
    }

    public double d() {
        if (this.e == 0.0d) {
            this.e = a(a(this.d));
        }
        return this.e;
    }

    public double e() {
        if (this.c == 0.0d) {
            this.c = f();
        }
        return this.c;
    }
}
