package com.greenbulb.sonarpen.a;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private c a;
    private double[] b;
    private double[] c;
    private double[] d;
    private double[] e;
    private double[] f;
    private double[] g;
    private double[] h;
    private double[][] i;
    private int j;
    private int k;
    private int l = 0;
    private int m = 0;
    private byte[] n;

    public b(int i) {
        b(i);
    }

    private short a(int i) {
        byte[] bArr = this.n;
        return (short) (((short) (bArr[r3] & 255)) | ((short) ((bArr[(i * 2) + 1] & 255) << 8)));
    }

    private void a(double[] dArr, double[] dArr2) {
        double length = 4.0d / ((double) (dArr2.length * dArr2.length));
        double d = dArr2[0];
        dArr[0] = ((d * d) * length) / 4.0d;
        int i = 1;
        int i2 = 1;
        while (i < dArr2.length - 1) {
            double d2 = dArr2[i];
            double d3 = dArr2[i + 1];
            dArr[i2] = ((d2 * d2) + (d3 * d3)) * length;
            i += 2;
            i2++;
        }
        dArr[i2] = ((dArr2[dArr2.length - 1] * dArr2[dArr2.length - 1]) * length) / 4.0d;
    }

    private void b(int i) {
        this.j = i;
        this.b = new double[i];
        this.c = new double[i];
        this.d = new double[i];
        this.e = new double[i];
        this.f = new double[i];
        this.g = new double[i];
        this.a = new c(i);
        this.i = new double[(int) Math.ceil(1.0d / ((double) i))][];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            double[][] dArr = this.i;
            if (i3 >= dArr.length) {
                break;
            }
            dArr[i3] = new double[i];
            i3++;
        }
        this.h = new double[i];
        while (true) {
            double[] dArr2 = this.h;
            if (i2 >= dArr2.length) {
                return;
            }
            dArr2[i2] = (Math.asin(Math.sin((((double) i2) * 3.141592653589793d) / ((double) dArr2.length))) / 3.141592653589793d) * 2.0d;
            i2++;
        }
    }

    public double a() {
        if (this.m != 0) {
            int length = this.d.length;
            double[] dArr = this.b;
            for (int i = 0; i < length; i++) {
                dArr[i] = dArr[i] / ((double) this.m);
            }
            System.arraycopy(dArr, 0, this.d, 0, length);
            Arrays.fill(dArr, 0.0d);
            this.m = 0;
            for (int i2 = 0; i2 < length; i2++) {
                this.e[i2] = Math.log10(this.d[i2]) * 10.0d;
            }
        }
        double dLog10 = Math.log10(3.814697265625E-6d) * 20.0d;
        double d = 0.0d;
        int i3 = 1;
        while (true) {
            double[] dArr2 = this.e;
            if (i3 >= dArr2.length) {
                break;
            }
            double d2 = dArr2[i3];
            if (d2 > dLog10) {
                d = i3;
                dLog10 = d2;
            }
            i3++;
        }
        double d3 = 44100;
        int i4 = this.j;
        double d4 = i4;
        double d5 = (d * d3) / d4;
        if (44100 / i4 >= d5 || d5 >= 22050 - r4) {
            return d5;
        }
        int iRound = (int) Math.round((d5 / d3) * d4);
        double[] dArr3 = this.e;
        double d6 = dArr3[iRound - 1];
        double d7 = dArr3[iRound];
        double d8 = dArr3[iRound + 1];
        double d9 = ((d8 + d6) / 2.0d) - d7;
        double d10 = (d8 - d6) / 2.0d;
        if (d9 >= 0.0d) {
            return d5;
        }
        double d11 = (-d10) / (d9 * 2.0d);
        return Math.abs(d11) < 1.0d ? d5 + ((d11 * d3) / ((double) this.j)) : d5;
    }

    public void a(byte[] bArr, int i) {
        int i2;
        int i3;
        this.n = bArr;
        int i4 = 0;
        while (i4 < i) {
            while (true) {
                i2 = this.k;
                i3 = this.j;
                if (i2 >= i3 || i4 >= i) {
                    break;
                }
                int i5 = i4 + 1;
                double dA = ((double) a(i4)) / 32768.0d;
                double[] dArr = this.f;
                int i6 = this.k;
                this.k = i6 + 1;
                dArr[i6] = dA;
                i4 = i5;
            }
            if (i2 == i3) {
                for (int i7 = 0; i7 < this.j; i7++) {
                    this.g[i7] = this.f[i7] * this.h[i7];
                }
                this.a.a(this.g);
                a(this.c, this.g);
                double[] dArr2 = this.c;
                System.arraycopy(dArr2, 0, this.i[this.l], 0, dArr2.length);
                this.l = (this.l + 1) % this.i.length;
                for (int i8 = 0; i8 < this.j; i8++) {
                    double[] dArr3 = this.b;
                    dArr3[i8] = dArr3[i8] + this.c[i8];
                }
                this.m++;
                double[] dArr4 = this.f;
                int length = dArr4.length / 2;
                System.arraycopy(dArr4, length, dArr4, 0, length);
                this.k = length;
            }
        }
    }
}
