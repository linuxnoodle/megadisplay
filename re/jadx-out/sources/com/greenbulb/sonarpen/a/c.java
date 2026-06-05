package com.greenbulb.sonarpen.a;

/* JADX INFO: loaded from: classes.dex */
public class c {
    static final int[] d = {4, 2, 3, 5};
    private double[] a;
    private double[] b;
    private int c;

    public c(int i) {
        this.c = i;
        double[] dArr = this.a;
        if (dArr == null || dArr.length != (i * 2) + 15) {
            this.a = new double[(i * 2) + 15];
        }
        a(i, this.a);
        this.b = new double[i];
    }

    void a(int i, int i2, int i3, int i4, double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4, double[] dArr5, double[] dArr6, int i5) {
        double d2 = 6.283185307179586d / ((double) i2);
        double dCos = Math.cos(d2);
        double dSin = Math.sin(d2);
        int i6 = 2;
        int i7 = (i2 + 1) / 2;
        int i8 = i - 1;
        int i9 = i8 / 2;
        if (i != 1) {
            for (int i10 = 0; i10 < i4; i10++) {
                dArr5[i10] = dArr3[i10];
            }
            for (int i11 = 1; i11 < i2; i11++) {
                for (int i12 = 0; i12 < i3; i12++) {
                    int i13 = (i12 + (i11 * i3)) * i;
                    dArr4[i13] = dArr2[i13];
                }
            }
            if (i9 <= i3) {
                int i14 = -i;
                int i15 = 1;
                while (i15 < i2) {
                    i14 += i;
                    int i16 = i14 - 1;
                    while (i6 < i) {
                        int i17 = i16 + 2;
                        for (int i18 = 0; i18 < i3; i18++) {
                            int i19 = (i18 + (i15 * i3)) * i;
                            int i20 = (i6 - 1) + i19;
                            int i21 = i16 + 1 + i5;
                            int i22 = i17 + i5;
                            int i23 = i6 + i19;
                            dArr4[i20] = (dArr6[i21] * dArr2[i20]) + (dArr6[i22] * dArr2[i23]);
                            dArr4[i23] = (dArr6[i21] * dArr2[i23]) - (dArr6[i22] * dArr2[i20]);
                        }
                        i6 += 2;
                        i16 = i17;
                    }
                    i15++;
                    i6 = 2;
                }
            } else {
                int i24 = -i;
                for (int i25 = 1; i25 < i2; i25++) {
                    i24 += i;
                    for (int i26 = 0; i26 < i3; i26++) {
                        int i27 = i24 - 1;
                        int i28 = 2;
                        while (i28 < i) {
                            int i29 = i27 + 2;
                            int i30 = (i26 + (i25 * i3)) * i;
                            int i31 = (i28 - 1) + i30;
                            int i32 = i27 + 1 + i5;
                            int i33 = i29 + i5;
                            int i34 = i28 + i30;
                            dArr4[i31] = (dArr6[i32] * dArr2[i31]) + (dArr6[i33] * dArr2[i34]);
                            dArr4[i34] = (dArr6[i32] * dArr2[i34]) - (dArr6[i33] * dArr2[i31]);
                            i28 += 2;
                            i27 = i29;
                        }
                    }
                }
            }
            int i35 = 1;
            if (i9 >= i3) {
                while (i35 < i7) {
                    int i36 = i2 - i35;
                    for (int i37 = 0; i37 < i3; i37++) {
                        for (int i38 = 2; i38 < i; i38 += 2) {
                            int i39 = i38 - 1;
                            int i40 = (i37 + (i35 * i3)) * i;
                            int i41 = i39 + i40;
                            int i42 = (i37 + (i36 * i3)) * i;
                            int i43 = i39 + i42;
                            dArr2[i41] = dArr4[i41] + dArr4[i43];
                            int i44 = i38 + i40;
                            int i45 = i38 + i42;
                            dArr2[i43] = dArr4[i44] - dArr4[i45];
                            dArr2[i44] = dArr4[i44] + dArr4[i45];
                            dArr2[i45] = dArr4[i43] - dArr4[i41];
                        }
                    }
                    i35++;
                }
            } else {
                while (i35 < i7) {
                    int i46 = i2 - i35;
                    for (int i47 = 2; i47 < i; i47 += 2) {
                        for (int i48 = 0; i48 < i3; i48++) {
                            int i49 = i47 - 1;
                            int i50 = (i48 + (i35 * i3)) * i;
                            int i51 = i49 + i50;
                            int i52 = (i48 + (i46 * i3)) * i;
                            int i53 = i49 + i52;
                            dArr2[i51] = dArr4[i51] + dArr4[i53];
                            int i54 = i47 + i50;
                            int i55 = i47 + i52;
                            dArr2[i53] = dArr4[i54] - dArr4[i55];
                            dArr2[i54] = dArr4[i54] + dArr4[i55];
                            dArr2[i55] = dArr4[i53] - dArr4[i51];
                        }
                    }
                    i35++;
                }
            }
        } else {
            for (int i56 = 0; i56 < i4; i56++) {
                dArr3[i56] = dArr5[i56];
            }
        }
        for (int i57 = 1; i57 < i7; i57++) {
            int i58 = i2 - i57;
            for (int i59 = 0; i59 < i3; i59++) {
                int i60 = ((i57 * i3) + i59) * i;
                int i61 = ((i58 * i3) + i59) * i;
                dArr2[i60] = dArr4[i60] + dArr4[i61];
                dArr2[i61] = dArr4[i61] - dArr4[i60];
            }
        }
        double d3 = 1.0d;
        double d4 = 0.0d;
        int i62 = 1;
        while (i62 < i7) {
            int i63 = i2 - i62;
            double d5 = (dCos * d3) - (dSin * d4);
            d4 = (d4 * dCos) + (d3 * dSin);
            for (int i64 = 0; i64 < i4; i64++) {
                dArr5[(i62 * i4) + i64] = dArr3[i64] + (dArr3[i64 + i4] * d5);
                dArr5[(i63 * i4) + i64] = dArr3[i64 + ((i2 - 1) * i4)] * d4;
            }
            double d6 = d4;
            double d7 = d5;
            int i65 = 2;
            while (i65 < i7) {
                int i66 = i2 - i65;
                double d8 = (d5 * d7) - (d4 * d6);
                d6 = (d6 * d5) + (d7 * d4);
                double d9 = dCos;
                for (int i67 = 0; i67 < i4; i67++) {
                    int i68 = (i62 * i4) + i67;
                    dArr5[i68] = dArr5[i68] + (dArr3[i67 + (i65 * i4)] * d8);
                    int i69 = (i63 * i4) + i67;
                    dArr5[i69] = dArr5[i69] + (dArr3[i67 + (i66 * i4)] * d6);
                }
                i65++;
                dCos = d9;
                d7 = d8;
            }
            i62++;
            d3 = d5;
        }
        for (int i70 = 1; i70 < i7; i70++) {
            for (int i71 = 0; i71 < i4; i71++) {
                dArr5[i71] = dArr5[i71] + dArr3[(i70 * i4) + i71];
            }
        }
        int i72 = 0;
        if (i >= i3) {
            while (i72 < i3) {
                for (int i73 = 0; i73 < i; i73++) {
                    dArr[(i72 * i2 * i) + i73] = dArr4[(i72 * i) + i73];
                }
                i72++;
            }
        } else {
            while (i72 < i) {
                for (int i74 = 0; i74 < i3; i74++) {
                    dArr[(i74 * i2 * i) + i72] = dArr4[(i74 * i) + i72];
                }
                i72++;
            }
        }
        for (int i75 = 1; i75 < i7; i75++) {
            int i76 = i2 - i75;
            int i77 = i75 * 2;
            for (int i78 = 0; i78 < i3; i78++) {
                int i79 = i78 * i2;
                dArr[(((i77 - 1) + i79) * i) + i8] = dArr4[((i75 * i3) + i78) * i];
                dArr[(i79 + i77) * i] = dArr4[((i76 * i3) + i78) * i];
            }
        }
        if (i == 1) {
            return;
        }
        int i80 = 1;
        if (i9 >= i3) {
            while (i80 < i7) {
                int i81 = i2 - i80;
                int i82 = i80 * 2;
                for (int i83 = 0; i83 < i3; i83++) {
                    for (int i84 = 2; i84 < i; i84 += 2) {
                        int i85 = i - i84;
                        int i86 = i84 - 1;
                        int i87 = i83 * i2;
                        int i88 = (i82 + i87) * i;
                        int i89 = i86 + i88;
                        int i90 = ((i80 * i3) + i83) * i;
                        int i91 = i86 + i90;
                        int i92 = (i83 + (i81 * i3)) * i;
                        int i93 = i86 + i92;
                        dArr[i89] = dArr4[i91] + dArr4[i93];
                        int i94 = ((i82 - 1) + i87) * i;
                        dArr[(i85 - 1) + i94] = dArr4[i91] - dArr4[i93];
                        int i95 = i90 + i84;
                        int i96 = i84 + i92;
                        dArr[i88 + i84] = dArr4[i95] + dArr4[i96];
                        dArr[i85 + i94] = dArr4[i96] - dArr4[i95];
                    }
                }
                i80++;
            }
            return;
        }
        while (i80 < i7) {
            int i97 = i2 - i80;
            int i98 = i80 * 2;
            for (int i99 = 2; i99 < i; i99 += 2) {
                int i100 = i - i99;
                for (int i101 = 0; i101 < i3; i101++) {
                    int i102 = i99 - 1;
                    int i103 = i101 * i2;
                    int i104 = (i98 + i103) * i;
                    int i105 = i102 + i104;
                    int i106 = ((i80 * i3) + i101) * i;
                    int i107 = i102 + i106;
                    int i108 = (i101 + (i97 * i3)) * i;
                    int i109 = i102 + i108;
                    dArr[i105] = dArr4[i107] + dArr4[i109];
                    int i110 = ((i98 - 1) + i103) * i;
                    dArr[(i100 - 1) + i110] = dArr4[i107] - dArr4[i109];
                    int i111 = i106 + i99;
                    int i112 = i99 + i108;
                    dArr[i104 + i99] = dArr4[i111] + dArr4[i112];
                    dArr[i100 + i110] = dArr4[i112] - dArr4[i111];
                }
            }
            i80++;
        }
    }

    void a(int i, int i2, double[] dArr, double[] dArr2, double[] dArr3, int i3) {
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i4 * 2;
            int i6 = i4 * i;
            int i7 = (i4 + i2) * i;
            dArr2[i5 * i] = dArr[i6] + dArr[i7];
            dArr2[(((i5 + 1) * i) + i) - 1] = dArr[i6] - dArr[i7];
        }
        if (i < 2) {
            return;
        }
        if (i != 2) {
            for (int i8 = 0; i8 < i2; i8++) {
                for (int i9 = 2; i9 < i; i9 += 2) {
                    int i10 = i - i9;
                    double d2 = dArr3[(i9 - 2) + i3];
                    int i11 = i9 - 1;
                    int i12 = (i8 + i2) * i;
                    double d3 = dArr[i11 + i12];
                    double d4 = dArr3[i11 + i3];
                    double d5 = dArr[i12 + i9];
                    double d6 = (d2 * d3) + (d4 * d5);
                    double d7 = (d2 * d5) - (d4 * d3);
                    int i13 = i8 * 2;
                    int i14 = i13 * i;
                    int i15 = i8 * i;
                    int i16 = i9 + i15;
                    dArr2[i9 + i14] = dArr[i16] + d7;
                    int i17 = (i13 + 1) * i;
                    dArr2[i10 + i17] = d7 - dArr[i16];
                    int i18 = i14 + i11;
                    int i19 = i11 + i15;
                    dArr2[i18] = dArr[i19] + d6;
                    dArr2[(i10 - 1) + i17] = dArr[i19] - d6;
                }
            }
            if (i % 2 == 1) {
                return;
            }
        }
        for (int i20 = 0; i20 < i2; i20++) {
            int i21 = i20 * 2;
            int i22 = i - 1;
            dArr2[(i21 + 1) * i] = -dArr[((i20 + i2) * i) + i22];
            dArr2[(i21 * i) + i22] = dArr[i22 + (i20 * i)];
        }
    }

    void a(int i, double[] dArr) {
        if (i == 1) {
            return;
        }
        a(i, dArr, 0);
    }

    void a(int i, double[] dArr, int i2) {
        int i3;
        int i4;
        int i5 = i;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        loop0: while (true) {
            int i9 = i6 + 1;
            i7 = i9 <= 4 ? d[i6] : i7 + 2;
            while (true) {
                int i10 = i5 / i7;
                if (i5 - (i7 * i10) != 0) {
                    break;
                }
                i3 = i8 + 1;
                i4 = i * 2;
                dArr[i8 + 2 + i4 + i2] = i7;
                if (i7 == 2 && i3 != 1) {
                    for (int i11 = 2; i11 <= i3; i11++) {
                        int i12 = i3 - i11;
                        dArr[i12 + 3 + i4 + i2] = dArr[i12 + 2 + i4 + i2];
                    }
                    dArr[i4 + 2 + i2] = 2.0d;
                }
                if (i10 == 1) {
                    break loop0;
                }
                i8 = i3;
                i5 = i10;
            }
            i6 = i9;
        }
        double d2 = i;
        dArr[i4 + i2] = d2;
        dArr[i4 + 1 + i2] = i3;
        double d3 = 6.283185307179586d / d2;
        if (i8 == 0) {
            return;
        }
        int i13 = 1;
        int i14 = 1;
        int i15 = 0;
        while (i13 <= i8) {
            i13++;
            int i16 = (int) dArr[i13 + i4 + i2];
            int i17 = i14 * i16;
            int i18 = i / i17;
            int i19 = i16 - 1;
            int i20 = 0;
            for (int i21 = 1; i21 <= i19; i21++) {
                i20 += i14;
                int i22 = i15;
                double d4 = ((double) i20) * d3;
                double d5 = 0.0d;
                int i23 = i22;
                int i24 = 3;
                while (i24 <= i18) {
                    d5 += 1.0d;
                    double d6 = d5 * d4;
                    dArr[i23 + i + i2] = Math.cos(d6);
                    dArr[i23 + 1 + i + i2] = Math.sin(d6);
                    i24 += 2;
                    i23 += 2;
                }
                i15 = i22 + i18;
            }
            i14 = i17;
        }
    }

    void a(int i, double[] dArr, double[] dArr2, int i2, double[] dArr3) {
        int i3;
        int i4;
        double[] dArr4 = dArr2;
        System.arraycopy(dArr4, i2, dArr3, 0, i);
        int i5 = i * 2;
        int i6 = (int) dArr4[i5 + 1 + i2];
        int i7 = (i - 1) + i + i2;
        int i8 = 1;
        int i9 = i;
        int i10 = 1;
        int i11 = 1;
        while (i11 <= i6) {
            int i12 = (int) dArr4[(i6 - i11) + 2 + i5 + i2];
            int i13 = i9 / i12;
            int i14 = i / i9;
            int i15 = i14 * i13;
            int i16 = i7 - ((i12 - 1) * i14);
            int i17 = 1 - i10;
            if (i12 == 4) {
                if (i17 == 0) {
                    c(i14, i13, dArr, dArr3, dArr2, i16);
                } else {
                    c(i14, i13, dArr3, dArr, dArr2, i16);
                }
            } else if (i12 == 2) {
                if (i17 == 0) {
                    a(i14, i13, dArr, dArr3, dArr2, i16);
                } else {
                    a(i14, i13, dArr3, dArr, dArr2, i16);
                }
            } else if (i12 == 3) {
                if (i17 == 0) {
                    b(i14, i13, dArr, dArr3, dArr2, i16);
                } else {
                    b(i14, i13, dArr3, dArr, dArr2, i16);
                }
            } else if (i12 != 5) {
                if (i14 == i8) {
                    i17 = 1 - i17;
                }
                if (i17 == 0) {
                    i3 = i11;
                    i4 = i6;
                    a(i14, i12, i13, i15, dArr, dArr, dArr, dArr3, dArr3, dArr2, i16);
                    i10 = 1;
                } else {
                    i3 = i11;
                    i4 = i6;
                    a(i14, i12, i13, i15, dArr3, dArr3, dArr3, dArr, dArr, dArr2, i16);
                    i10 = 0;
                }
                i11 = i3 + 1;
                dArr4 = dArr2;
                i9 = i13;
                i7 = i16;
                i6 = i4;
                i8 = 1;
            } else if (i17 == 0) {
                d(i14, i13, dArr, dArr3, dArr2, i16);
            } else {
                d(i14, i13, dArr3, dArr, dArr2, i16);
            }
            i10 = i17;
            i3 = i11;
            i4 = i6;
            i11 = i3 + 1;
            dArr4 = dArr2;
            i9 = i13;
            i7 = i16;
            i6 = i4;
            i8 = 1;
        }
        if (i10 == 1) {
            return;
        }
        for (int i18 = 0; i18 < i; i18++) {
            dArr[i18] = dArr3[i18];
        }
    }

    void a(int i, double[] dArr, double[] dArr2, double[] dArr3) {
        if (i == 1) {
            return;
        }
        a(i, dArr, dArr2, 0, dArr3);
    }

    public void a(double[] dArr) {
        int length = dArr.length;
        int i = this.c;
        if (length != i) {
            throw new IllegalArgumentException("The length of data can not match that of the wavetable");
        }
        a(i, dArr, this.a, this.b);
    }

    void b(int i, int i2, double[] dArr, double[] dArr2, double[] dArr3, int i3) {
        int i4 = i3 + i;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = (i5 + i2) * i;
            int i7 = ((i2 * 2) + i5) * i;
            double d2 = dArr[i6] + dArr[i7];
            int i8 = i5 * 3;
            int i9 = i5 * i;
            dArr2[i8 * i] = dArr[i9] + d2;
            dArr2[(i8 + 2) * i] = (dArr[i7] - dArr[i6]) * 0.866025403784439d;
            dArr2[(i - 1) + ((i8 + 1) * i)] = dArr[i9] + (d2 * (-0.5d));
        }
        if (i == 1) {
            return;
        }
        for (int i10 = 0; i10 < i2; i10++) {
            for (int i11 = 2; i11 < i; i11 += 2) {
                int i12 = i - i11;
                int i13 = i11 - 2;
                double d3 = dArr3[i13 + i3];
                int i14 = i11 - 1;
                int i15 = (i10 + i2) * i;
                double d4 = dArr[i14 + i15];
                double d5 = dArr3[i14 + i3];
                double d6 = dArr[i15 + i11];
                double d7 = (d3 * d4) + (d5 * d6);
                double d8 = (d3 * d6) - (d5 * d4);
                double d9 = dArr3[i13 + i4];
                int i16 = ((i2 * 2) + i10) * i;
                double d10 = dArr[i14 + i16];
                double d11 = dArr3[i14 + i4];
                double d12 = dArr[i16 + i11];
                double d13 = (d9 * d10) + (d11 * d12);
                double d14 = (d9 * d12) - (d11 * d10);
                double d15 = d7 + d13;
                double d16 = d8 + d14;
                int i17 = i10 * 3;
                int i18 = i17 * i;
                int i19 = i10 * i;
                int i20 = i14 + i19;
                dArr2[i14 + i18] = dArr[i20] + d15;
                int i21 = i11 + i19;
                dArr2[i11 + i18] = dArr[i21] + d16;
                double d17 = dArr[i20] + (d15 * (-0.5d));
                double d18 = dArr[i21] + (d16 * (-0.5d));
                double d19 = (d8 - d14) * 0.866025403784439d;
                double d20 = (d13 - d7) * 0.866025403784439d;
                int i22 = (i17 + 2) * i;
                dArr2[i14 + i22] = d17 + d19;
                int i23 = (i17 + 1) * i;
                dArr2[(i12 - 1) + i23] = d17 - d19;
                dArr2[i22 + i11] = d18 + d20;
                dArr2[i12 + i23] = d20 - d18;
            }
        }
    }

    void c(int i, int i2, double[] dArr, double[] dArr2, double[] dArr3, int i3) {
        int i4 = i3 + i;
        int i5 = i4 + i;
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i6 + i2) * i;
            int i8 = ((i2 * 3) + i6) * i;
            double d2 = dArr[i7] + dArr[i8];
            int i9 = i6 * i;
            int i10 = ((i2 * 2) + i6) * i;
            double d3 = dArr[i9] + dArr[i10];
            int i11 = i6 * 4;
            dArr2[i11 * i] = d2 + d3;
            int i12 = i - 1;
            dArr2[i12 + ((i11 + 3) * i)] = d3 - d2;
            dArr2[i12 + ((i11 + 1) * i)] = dArr[i9] - dArr[i10];
            dArr2[(i11 + 2) * i] = dArr[i8] - dArr[i7];
        }
        if (i < 2) {
            return;
        }
        if (i != 2) {
            for (int i13 = 0; i13 < i2; i13++) {
                for (int i14 = 2; i14 < i; i14 += 2) {
                    int i15 = i - i14;
                    int i16 = i14 - 2;
                    double d4 = dArr3[i16 + i3];
                    int i17 = i14 - 1;
                    int i18 = (i13 + i2) * i;
                    double d5 = dArr[i17 + i18];
                    double d6 = dArr3[i17 + i3];
                    double d7 = dArr[i18 + i14];
                    double d8 = (d4 * d5) + (d6 * d7);
                    double d9 = (d4 * d7) - (d6 * d5);
                    double d10 = dArr3[i16 + i4];
                    int i19 = (i13 + (i2 * 2)) * i;
                    double d11 = dArr[i17 + i19];
                    double d12 = dArr3[i17 + i4];
                    double d13 = dArr[i14 + i19];
                    double d14 = (d10 * d11) + (d12 * d13);
                    double d15 = (d10 * d13) - (d12 * d11);
                    double d16 = dArr3[i16 + i5];
                    int i20 = ((i2 * 3) + i13) * i;
                    double d17 = dArr[i17 + i20];
                    double d18 = dArr3[i17 + i5];
                    double d19 = dArr[i20 + i14];
                    double d20 = (d16 * d17) + (d18 * d19);
                    double d21 = (d16 * d19) - (d18 * d17);
                    double d22 = d8 + d20;
                    double d23 = d20 - d8;
                    double d24 = d9 + d21;
                    double d25 = d9 - d21;
                    int i21 = i13 * i;
                    double d26 = dArr[i14 + i21];
                    double d27 = d26 + d15;
                    double d28 = d26 - d15;
                    double d29 = dArr[i21 + i17];
                    double d30 = d29 + d14;
                    double d31 = d29 - d14;
                    int i22 = i13 * 4;
                    int i23 = i22 * i;
                    dArr2[i17 + i23] = d22 + d30;
                    int i24 = i15 - 1;
                    int i25 = (i22 + 3) * i;
                    dArr2[i24 + i25] = d30 - d22;
                    dArr2[i14 + i23] = d24 + d27;
                    dArr2[i15 + i25] = d24 - d27;
                    int i26 = (i22 + 2) * i;
                    dArr2[i17 + i26] = d25 + d31;
                    int i27 = (i22 + 1) * i;
                    dArr2[i24 + i27] = d31 - d25;
                    dArr2[i14 + i26] = d23 + d28;
                    dArr2[i15 + i27] = d23 - d28;
                }
            }
            if (i % 2 == 1) {
                return;
            }
        }
        for (int i28 = 0; i28 < i2; i28++) {
            int i29 = i - 1;
            double d32 = dArr[((i28 + i2) * i) + i29];
            double d33 = dArr[(((i2 * 3) + i28) * i) + i29];
            double d34 = (d32 + d33) * (-0.7071067811865475d);
            double d35 = (d32 - d33) * 0.7071067811865475d;
            int i30 = i28 * 4;
            int i31 = (i28 * i) + i29;
            dArr2[(i30 * i) + i29] = dArr[i31] + d35;
            dArr2[((i30 + 2) * i) + i29] = dArr[i31] - d35;
            int i32 = i29 + (((i2 * 2) + i28) * i);
            dArr2[(i30 + 1) * i] = d34 - dArr[i32];
            dArr2[(i30 + 3) * i] = d34 + dArr[i32];
        }
    }

    void d(int i, int i2, double[] dArr, double[] dArr2, double[] dArr3, int i3) {
        int i4 = i3 + i;
        int i5 = i4 + i;
        int i6 = i5 + i;
        for (int i7 = 0; i7 < i2; i7++) {
            double d2 = dArr[((i2 * 4) + i7) * i];
            double d3 = dArr[(i7 + i2) * i];
            double d4 = d2 + d3;
            double d5 = d2 - d3;
            double d6 = dArr[(i7 + (i2 * 3)) * i];
            double d7 = dArr[(i7 + (i2 * 2)) * i];
            double d8 = d6 + d7;
            double d9 = d6 - d7;
            int i8 = i7 * 5;
            int i9 = i7 * i;
            dArr2[i8 * i] = dArr[i9] + d4 + d8;
            int i10 = i - 1;
            dArr2[i10 + ((i8 + 1) * i)] = dArr[i9] + (d4 * 0.309016994374947d) + (d8 * (-0.809016994374947d));
            dArr2[(i8 + 2) * i] = (d5 * 0.951056516295154d) + (d9 * 0.587785252292473d);
            dArr2[i10 + ((i8 + 3) * i)] = dArr[i9] + (d4 * (-0.809016994374947d)) + (d8 * 0.309016994374947d);
            dArr2[(i8 + 4) * i] = (d5 * 0.587785252292473d) - (d9 * 0.951056516295154d);
        }
        if (i == 1) {
            return;
        }
        for (int i11 = 0; i11 < i2; i11++) {
            for (int i12 = 2; i12 < i; i12 += 2) {
                int i13 = i - i12;
                int i14 = i12 - 2;
                double d10 = dArr3[i14 + i3];
                int i15 = i12 - 1;
                int i16 = (i11 + i2) * i;
                double d11 = dArr[i15 + i16];
                double d12 = dArr3[i15 + i3];
                double d13 = dArr[i12 + i16];
                double d14 = (d10 * d11) + (d12 * d13);
                double d15 = (d10 * d13) - (d12 * d11);
                double d16 = dArr3[i14 + i4];
                int i17 = (i11 + (i2 * 2)) * i;
                double d17 = dArr[i15 + i17];
                double d18 = dArr3[i15 + i4];
                double d19 = dArr[i12 + i17];
                double d20 = (d16 * d17) + (d18 * d19);
                double d21 = (d16 * d19) - (d18 * d17);
                double d22 = dArr3[i14 + i5];
                int i18 = (i11 + (i2 * 3)) * i;
                double d23 = dArr[i15 + i18];
                double d24 = dArr3[i15 + i5];
                double d25 = dArr[i12 + i18];
                double d26 = (d22 * d23) + (d24 * d25);
                double d27 = (d22 * d25) - (d24 * d23);
                double d28 = dArr3[i14 + i6];
                int i19 = (i11 + (i2 * 4)) * i;
                double d29 = dArr[i15 + i19];
                double d30 = dArr3[i15 + i6];
                double d31 = dArr[i12 + i19];
                double d32 = (d28 * d29) + (d30 * d31);
                double d33 = (d28 * d31) - (d30 * d29);
                double d34 = d14 + d32;
                double d35 = d32 - d14;
                double d36 = d15 - d33;
                double d37 = d15 + d33;
                double d38 = d20 + d26;
                double d39 = d26 - d20;
                double d40 = d21 - d27;
                double d41 = d21 + d27;
                int i20 = i11 * 5;
                int i21 = i20 * i;
                int i22 = i11 * i;
                int i23 = i15 + i22;
                dArr2[i15 + i21] = dArr[i23] + d34 + d38;
                int i24 = i12 + i22;
                dArr2[i12 + i21] = dArr[i24] + d37 + d41;
                double d42 = dArr[i23];
                double d43 = d42 + (d34 * 0.309016994374947d) + (d38 * (-0.809016994374947d));
                double d44 = dArr[i24];
                double d45 = d44 + (d37 * 0.309016994374947d) + (d41 * (-0.809016994374947d));
                double d46 = d42 + (d34 * (-0.809016994374947d)) + (d38 * 0.309016994374947d);
                double d47 = d44 + (d37 * (-0.809016994374947d)) + (d41 * 0.309016994374947d);
                double d48 = (d36 * 0.951056516295154d) + (d40 * 0.587785252292473d);
                double d49 = (d35 * 0.951056516295154d) + (d39 * 0.587785252292473d);
                double d50 = (d36 * 0.587785252292473d) - (d40 * 0.951056516295154d);
                double d51 = (d35 * 0.587785252292473d) - (d39 * 0.951056516295154d);
                int i25 = (i20 + 2) * i;
                dArr2[i15 + i25] = d43 + d48;
                int i26 = i13 - 1;
                int i27 = (i20 + 1) * i;
                dArr2[i26 + i27] = d43 - d48;
                dArr2[i12 + i25] = d45 + d49;
                dArr2[i13 + i27] = d49 - d45;
                int i28 = (i20 + 4) * i;
                dArr2[i15 + i28] = d46 + d50;
                int i29 = (i20 + 3) * i;
                dArr2[i26 + i29] = d46 - d50;
                dArr2[i12 + i28] = d47 + d51;
                dArr2[i13 + i29] = d51 - d47;
            }
        }
    }
}
