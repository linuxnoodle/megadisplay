package com.google.android.gms.internal.play_billing;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.text.HtmlCompat;
import de.mrapp.android.preference.BuildConfig;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.android.billingclient:billing@@7.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzef<T> implements zzeo<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzfp.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzec zzg;
    private final boolean zzh;
    private final int[] zzi;
    private final int zzj;
    private final int zzk;
    private final zzdq zzl;
    private final zzff zzm;
    private final zzce zzn;
    private final zzei zzo;
    private final zzdx zzp;

    private zzef(int[] iArr, Object[] objArr, int i, int i2, zzec zzecVar, int i3, boolean z, int[] iArr2, int i4, int i5, zzei zzeiVar, zzdq zzdqVar, zzff zzffVar, zzce zzceVar, zzdx zzdxVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        boolean z2 = false;
        if (zzceVar != null && zzceVar.zzf(zzecVar)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzi = iArr2;
        this.zzj = i4;
        this.zzk = i5;
        this.zzo = zzeiVar;
        this.zzl = zzdqVar;
        this.zzm = zzffVar;
        this.zzn = zzceVar;
        this.zzg = zzecVar;
        this.zzp = zzdxVar;
    }

    private static void zzA(Object obj) {
        if (!zzL(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(String.valueOf(obj))));
        }
    }

    private final void zzB(Object obj, Object obj2, int i) {
        if (zzI(obj2, i)) {
            int iZzs = zzs(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzs;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzeo zzeoVarZzv = zzv(i);
            if (!zzI(obj, i)) {
                if (zzL(object)) {
                    Object objZze = zzeoVarZzv.zze();
                    zzeoVarZzv.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzD(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzL(object2)) {
                Object objZze2 = zzeoVarZzv.zze();
                zzeoVarZzv.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzeoVarZzv.zzg(object2, object);
        }
    }

    private final void zzC(Object obj, Object obj2, int i) {
        int i2 = this.zzc[i];
        if (zzM(obj2, i2, i)) {
            int iZzs = zzs(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzs;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzeo zzeoVarZzv = zzv(i);
            if (!zzM(obj, i2, i)) {
                if (zzL(object)) {
                    Object objZze = zzeoVarZzv.zze();
                    zzeoVarZzv.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzE(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzL(object2)) {
                Object objZze2 = zzeoVarZzv.zze();
                zzeoVarZzv.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzeoVarZzv.zzg(object2, object);
        }
    }

    private final void zzD(Object obj, int i) {
        int iZzp = zzp(i);
        long j = 1048575 & iZzp;
        if (j == 1048575) {
            return;
        }
        zzfp.zzq(obj, j, (1 << (iZzp >>> 20)) | zzfp.zzc(obj, j));
    }

    private final void zzE(Object obj, int i, int i2) {
        zzfp.zzq(obj, zzp(i2) & 1048575, i);
    }

    private final void zzF(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzs(i) & 1048575, obj2);
        zzD(obj, i);
    }

    private final void zzG(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzs(i2) & 1048575, obj2);
        zzE(obj, i, i2);
    }

    private final boolean zzH(Object obj, Object obj2, int i) {
        return zzI(obj, i) == zzI(obj2, i);
    }

    private final boolean zzI(Object obj, int i) {
        int iZzp = zzp(i);
        long j = iZzp & 1048575;
        if (j != 1048575) {
            return (zzfp.zzc(obj, j) & (1 << (iZzp >>> 20))) != 0;
        }
        int iZzs = zzs(i);
        long j2 = iZzs & 1048575;
        switch (zzr(iZzs)) {
            case 0:
                return Double.doubleToRawLongBits(zzfp.zza(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzfp.zzb(obj, j2)) != 0;
            case 2:
                return zzfp.zzd(obj, j2) != 0;
            case 3:
                return zzfp.zzd(obj, j2) != 0;
            case 4:
                return zzfp.zzc(obj, j2) != 0;
            case 5:
                return zzfp.zzd(obj, j2) != 0;
            case 6:
                return zzfp.zzc(obj, j2) != 0;
            case 7:
                return zzfp.zzw(obj, j2);
            case 8:
                Object objZzf = zzfp.zzf(obj, j2);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzbq) {
                    return !zzbq.zzb.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzfp.zzf(obj, j2) != null;
            case 10:
                return !zzbq.zzb.equals(zzfp.zzf(obj, j2));
            case 11:
                return zzfp.zzc(obj, j2) != 0;
            case 12:
                return zzfp.zzc(obj, j2) != 0;
            case 13:
                return zzfp.zzc(obj, j2) != 0;
            case 14:
                return zzfp.zzd(obj, j2) != 0;
            case 15:
                return zzfp.zzc(obj, j2) != 0;
            case 16:
                return zzfp.zzd(obj, j2) != 0;
            case 17:
                return zzfp.zzf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzJ(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzI(obj, i) : (i3 & i4) != 0;
    }

    private static boolean zzK(Object obj, int i, zzeo zzeoVar) {
        return zzeoVar.zzk(zzfp.zzf(obj, i & 1048575));
    }

    private static boolean zzL(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzcs) {
            return ((zzcs) obj).zzw();
        }
        return true;
    }

    private final boolean zzM(Object obj, int i, int i2) {
        return zzfp.zzc(obj, (long) (zzp(i2) & 1048575)) == i;
    }

    private static boolean zzN(Object obj, long j) {
        return ((Boolean) zzfp.zzf(obj, j)).booleanValue();
    }

    private static final void zzO(int i, Object obj, zzfx zzfxVar) throws IOException {
        if (obj instanceof String) {
            zzfxVar.zzG(i, (String) obj);
        } else {
            zzfxVar.zzd(i, (zzbq) obj);
        }
    }

    static zzfg zzd(Object obj) {
        zzcs zzcsVar = (zzcs) obj;
        zzfg zzfgVar = zzcsVar.zzc;
        if (zzfgVar != zzfg.zzc()) {
            return zzfgVar;
        }
        zzfg zzfgVarZzf = zzfg.zzf();
        zzcsVar.zzc = zzfgVarZzf;
        return zzfgVarZzf;
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0281  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static com.google.android.gms.internal.play_billing.zzef zzl(java.lang.Class r33, com.google.android.gms.internal.play_billing.zzdz r34, com.google.android.gms.internal.play_billing.zzei r35, com.google.android.gms.internal.play_billing.zzdq r36, com.google.android.gms.internal.play_billing.zzff r37, com.google.android.gms.internal.play_billing.zzce r38, com.google.android.gms.internal.play_billing.zzdx r39) {
        /*
            Method dump skipped, instruction units count: 1029
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzef.zzl(java.lang.Class, com.google.android.gms.internal.play_billing.zzdz, com.google.android.gms.internal.play_billing.zzei, com.google.android.gms.internal.play_billing.zzdq, com.google.android.gms.internal.play_billing.zzff, com.google.android.gms.internal.play_billing.zzce, com.google.android.gms.internal.play_billing.zzdx):com.google.android.gms.internal.play_billing.zzef");
    }

    private static double zzm(Object obj, long j) {
        return ((Double) zzfp.zzf(obj, j)).doubleValue();
    }

    private static float zzn(Object obj, long j) {
        return ((Float) zzfp.zzf(obj, j)).floatValue();
    }

    private static int zzo(Object obj, long j) {
        return ((Integer) zzfp.zzf(obj, j)).intValue();
    }

    private final int zzp(int i) {
        return this.zzc[i + 2];
    }

    private final int zzq(int i, int i2) {
        int length = (this.zzc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    private static int zzr(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzs(int i) {
        return this.zzc[i + 1];
    }

    private static long zzt(Object obj, long j) {
        return ((Long) zzfp.zzf(obj, j)).longValue();
    }

    private final zzcw zzu(int i) {
        int i2 = i / 3;
        return (zzcw) this.zzd[i2 + i2 + 1];
    }

    private final zzeo zzv(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzeo zzeoVar = (zzeo) objArr[i3];
        if (zzeoVar != null) {
            return zzeoVar;
        }
        zzeo zzeoVarZzb = zzel.zza().zzb((Class) objArr[i3 + 1]);
        this.zzd[i3] = zzeoVarZzb;
        return zzeoVarZzb;
    }

    private final Object zzw(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private final Object zzx(Object obj, int i) {
        zzeo zzeoVarZzv = zzv(i);
        int iZzs = zzs(i) & 1048575;
        if (!zzI(obj, i)) {
            return zzeoVarZzv.zze();
        }
        Object object = zzb.getObject(obj, iZzs);
        if (zzL(object)) {
            return object;
        }
        Object objZze = zzeoVarZzv.zze();
        if (object != null) {
            zzeoVarZzv.zzg(objZze, object);
        }
        return objZze;
    }

    private final Object zzy(Object obj, int i, int i2) {
        zzeo zzeoVarZzv = zzv(i2);
        if (!zzM(obj, i, i2)) {
            return zzeoVarZzv.zze();
        }
        Object object = zzb.getObject(obj, zzs(i2) & 1048575);
        if (zzL(object)) {
            return object;
        }
        Object objZze = zzeoVarZzv.zze();
        if (object != null) {
            zzeoVarZzv.zzg(objZze, object);
        }
        return objZze;
    }

    private static Field zzz(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:207:0x0555  */
    @Override // com.google.android.gms.internal.play_billing.zzeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(java.lang.Object r20) {
        /*
            Method dump skipped, instruction units count: 2202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzef.zza(java.lang.Object):int");
    }

    @Override // com.google.android.gms.internal.play_billing.zzeo
    public final int zzb(Object obj) {
        int i;
        long jDoubleToLongBits;
        int i2;
        int iFloatToIntBits;
        int i3;
        int i4 = 0;
        for (int i5 = 0; i5 < this.zzc.length; i5 += 3) {
            int iZzs = zzs(i5);
            int[] iArr = this.zzc;
            int i6 = 1048575 & iZzs;
            int iZzr = zzr(iZzs);
            int i7 = iArr[i5];
            long j = i6;
            int iHashCode = 37;
            switch (iZzr) {
                case 0:
                    i = i4 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(zzfp.zza(obj, j));
                    byte[] bArr = zzda.zzd;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 1:
                    i2 = i4 * 53;
                    iFloatToIntBits = Float.floatToIntBits(zzfp.zzb(obj, j));
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 2:
                    i = i4 * 53;
                    jDoubleToLongBits = zzfp.zzd(obj, j);
                    byte[] bArr2 = zzda.zzd;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 3:
                    i = i4 * 53;
                    jDoubleToLongBits = zzfp.zzd(obj, j);
                    byte[] bArr3 = zzda.zzd;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 4:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzfp.zzc(obj, j);
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 5:
                    i = i4 * 53;
                    jDoubleToLongBits = zzfp.zzd(obj, j);
                    byte[] bArr4 = zzda.zzd;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 6:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzfp.zzc(obj, j);
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 7:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzda.zza(zzfp.zzw(obj, j));
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 8:
                    i2 = i4 * 53;
                    iFloatToIntBits = ((String) zzfp.zzf(obj, j)).hashCode();
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 9:
                    i3 = i4 * 53;
                    Object objZzf = zzfp.zzf(obj, j);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i4 = i3 + iHashCode;
                    break;
                case 10:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzfp.zzf(obj, j).hashCode();
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 11:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzfp.zzc(obj, j);
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 12:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzfp.zzc(obj, j);
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 13:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzfp.zzc(obj, j);
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 14:
                    i = i4 * 53;
                    jDoubleToLongBits = zzfp.zzd(obj, j);
                    byte[] bArr5 = zzda.zzd;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 15:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzfp.zzc(obj, j);
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 16:
                    i = i4 * 53;
                    jDoubleToLongBits = zzfp.zzd(obj, j);
                    byte[] bArr6 = zzda.zzd;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 17:
                    i3 = i4 * 53;
                    Object objZzf2 = zzfp.zzf(obj, j);
                    if (objZzf2 != null) {
                        iHashCode = objZzf2.hashCode();
                    }
                    i4 = i3 + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                case 30:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT /* 31 */:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzfp.zzf(obj, j).hashCode();
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 50:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzfp.zzf(obj, j).hashCode();
                    i4 = i2 + iFloatToIntBits;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    if (zzM(obj, i7, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(zzm(obj, j));
                        byte[] bArr7 = zzda.zzd;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 52:
                    if (zzM(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = Float.floatToIntBits(zzn(obj, j));
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 53:
                    if (zzM(obj, i7, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzt(obj, j);
                        byte[] bArr8 = zzda.zzd;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 54:
                    if (zzM(obj, i7, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzt(obj, j);
                        byte[] bArr9 = zzda.zzd;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 55:
                    if (zzM(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzo(obj, j);
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 56:
                    if (zzM(obj, i7, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzt(obj, j);
                        byte[] bArr10 = zzda.zzd;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 57:
                    if (zzM(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzo(obj, j);
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 58:
                    if (zzM(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzda.zza(zzN(obj, j));
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 59:
                    if (zzM(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = ((String) zzfp.zzf(obj, j)).hashCode();
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 60:
                    if (zzM(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzfp.zzf(obj, j).hashCode();
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                    if (zzM(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzfp.zzf(obj, j).hashCode();
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 62:
                    if (zzM(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzo(obj, j);
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                    if (zzM(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzo(obj, j);
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 64:
                    if (zzM(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzo(obj, j);
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case BuildConfig.VERSION_CODE /* 65 */:
                    if (zzM(obj, i7, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzt(obj, j);
                        byte[] bArr11 = zzda.zzd;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 66:
                    if (zzM(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzo(obj, j);
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 67:
                    if (zzM(obj, i7, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzt(obj, j);
                        byte[] bArr12 = zzda.zzd;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 68:
                    if (zzM(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzfp.zzf(obj, j).hashCode();
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
            }
        }
        int iHashCode2 = (i4 * 53) + this.zzm.zzd(obj).hashCode();
        return this.zzh ? (iHashCode2 * 53) + this.zzn.zzb(obj).zza.hashCode() : iHashCode2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:562:0x0ce2, code lost:
    
        if (r6 == 1048575) goto L564;
     */
    /* JADX WARN: Code restructure failed: missing block: B:563:0x0ce4, code lost:
    
        r13.putInt(r7, r6, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:564:0x0ce8, code lost:
    
        r3 = r0.zzj;
     */
    /* JADX WARN: Code restructure failed: missing block: B:566:0x0cec, code lost:
    
        if (r3 >= r0.zzk) goto L681;
     */
    /* JADX WARN: Code restructure failed: missing block: B:567:0x0cee, code lost:
    
        r5 = r0.zzi;
        r6 = r0.zzc;
        r5 = r5[r3];
        r6 = r6[r5];
        r6 = com.google.android.gms.internal.play_billing.zzfp.zzf(r7, r0.zzs(r5) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:568:0x0d00, code lost:
    
        if (r6 != null) goto L570;
     */
    /* JADX WARN: Code restructure failed: missing block: B:571:0x0d07, code lost:
    
        if (r0.zzu(r5) != null) goto L682;
     */
    /* JADX WARN: Code restructure failed: missing block: B:572:0x0d09, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:573:0x0d0c, code lost:
    
        r6 = (com.google.android.gms.internal.play_billing.zzdw) r6;
        r1 = (com.google.android.gms.internal.play_billing.zzdv) r0.zzw(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:574:0x0d14, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:575:0x0d15, code lost:
    
        if (r8 != 0) goto L581;
     */
    /* JADX WARN: Code restructure failed: missing block: B:577:0x0d19, code lost:
    
        if (r1 != r37) goto L579;
     */
    /* JADX WARN: Code restructure failed: missing block: B:580:0x0d20, code lost:
    
        throw com.google.android.gms.internal.play_billing.zzdc.zze();
     */
    /* JADX WARN: Code restructure failed: missing block: B:582:0x0d23, code lost:
    
        if (r1 > r37) goto L585;
     */
    /* JADX WARN: Code restructure failed: missing block: B:583:0x0d25, code lost:
    
        if (r4 != r8) goto L585;
     */
    /* JADX WARN: Code restructure failed: missing block: B:584:0x0d27, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:586:0x0d2c, code lost:
    
        throw com.google.android.gms.internal.play_billing.zzdc.zze();
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:450:0x09aa A[PHI: r0 r7 r8 r9 r10 r11 r13
      0x09aa: PHI (r0v34 com.google.android.gms.internal.play_billing.zzef<T>) = 
      (r0v1 com.google.android.gms.internal.play_billing.zzef<T>)
      (r0v1 com.google.android.gms.internal.play_billing.zzef<T>)
      (r0v1 com.google.android.gms.internal.play_billing.zzef<T>)
      (r0v1 com.google.android.gms.internal.play_billing.zzef<T>)
      (r0v9 com.google.android.gms.internal.play_billing.zzef<T>)
      (r0v33 com.google.android.gms.internal.play_billing.zzef<T>)
      (r0v1 com.google.android.gms.internal.play_billing.zzef<T>)
     binds: [B:440:0x0963, B:424:0x090b, B:408:0x08ba, B:333:0x0765, B:284:0x06a6, B:249:0x05f3, B:181:0x046b] A[DONT_GENERATE, DONT_INLINE]
      0x09aa: PHI (r7v29 int) = (r7v6 int), (r7v7 int), (r7v8 int), (r7v13 int), (r7v18 int), (r7v24 int), (r7v33 int) binds: [B:440:0x0963, B:424:0x090b, B:408:0x08ba, B:333:0x0765, B:284:0x06a6, B:249:0x05f3, B:181:0x046b] A[DONT_GENERATE, DONT_INLINE]
      0x09aa: PHI (r8v75 int) = (r8v49 int), (r8v50 int), (r8v51 int), (r8v55 int), (r8v61 int), (r8v73 int), (r8v78 int) binds: [B:440:0x0963, B:424:0x090b, B:408:0x08ba, B:333:0x0765, B:284:0x06a6, B:249:0x05f3, B:181:0x046b] A[DONT_GENERATE, DONT_INLINE]
      0x09aa: PHI (r9v59 int) = (r9v30 int), (r9v31 int), (r9v32 int), (r9v37 int), (r9v44 int), (r9v54 int), (r9v61 int) binds: [B:440:0x0963, B:424:0x090b, B:408:0x08ba, B:333:0x0765, B:284:0x06a6, B:249:0x05f3, B:181:0x046b] A[DONT_GENERATE, DONT_INLINE]
      0x09aa: PHI (r10v72 int) = (r10v34 int), (r10v35 int), (r10v36 int), (r10v50 int), (r10v63 int), (r10v70 int), (r10v75 int) binds: [B:440:0x0963, B:424:0x090b, B:408:0x08ba, B:333:0x0765, B:284:0x06a6, B:249:0x05f3, B:181:0x046b] A[DONT_GENERATE, DONT_INLINE]
      0x09aa: PHI (r11v36 sun.misc.Unsafe) = 
      (r11v10 sun.misc.Unsafe)
      (r11v11 sun.misc.Unsafe)
      (r11v12 sun.misc.Unsafe)
      (r11v14 sun.misc.Unsafe)
      (r11v22 sun.misc.Unsafe)
      (r11v31 sun.misc.Unsafe)
      (r11v38 sun.misc.Unsafe)
     binds: [B:440:0x0963, B:424:0x090b, B:408:0x08ba, B:333:0x0765, B:284:0x06a6, B:249:0x05f3, B:181:0x046b] A[DONT_GENERATE, DONT_INLINE]
      0x09aa: PHI (r13v55 com.google.android.gms.internal.play_billing.zzbc) = 
      (r13v37 com.google.android.gms.internal.play_billing.zzbc)
      (r13v38 com.google.android.gms.internal.play_billing.zzbc)
      (r13v39 com.google.android.gms.internal.play_billing.zzbc)
      (r13v44 com.google.android.gms.internal.play_billing.zzbc)
      (r13v50 com.google.android.gms.internal.play_billing.zzbc)
      (r13v53 com.google.android.gms.internal.play_billing.zzbc)
      (r13v57 com.google.android.gms.internal.play_billing.zzbc)
     binds: [B:440:0x0963, B:424:0x090b, B:408:0x08ba, B:333:0x0765, B:284:0x06a6, B:249:0x05f3, B:181:0x046b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:542:0x0c5c A[PHI: r1 r4 r5 r6 r9 r20
      0x0c5c: PHI (r1v186 int) = 
      (r1v162 int)
      (r1v163 int)
      (r1v164 int)
      (r1v165 int)
      (r1v166 int)
      (r1v167 int)
      (r1v170 int)
      (r1v179 int)
      (r1v187 int)
     binds: [B:540:0x0c45, B:537:0x0c24, B:533:0x0c03, B:530:0x0be6, B:527:0x0bc9, B:524:0x0bab, B:522:0x0b9e, B:500:0x0b30, B:467:0x0a1b] A[DONT_GENERATE, DONT_INLINE]
      0x0c5c: PHI (r4v84 int) = (r4v55 int), (r4v56 int), (r4v57 int), (r4v58 int), (r4v59 int), (r4v60 int), (r4v63 int), (r4v76 int), (r4v85 int) binds: [B:540:0x0c45, B:537:0x0c24, B:533:0x0c03, B:530:0x0be6, B:527:0x0bc9, B:524:0x0bab, B:522:0x0b9e, B:500:0x0b30, B:467:0x0a1b] A[DONT_GENERATE, DONT_INLINE]
      0x0c5c: PHI (r5v118 com.google.android.gms.internal.play_billing.zzbc) = 
      (r5v102 com.google.android.gms.internal.play_billing.zzbc)
      (r5v103 com.google.android.gms.internal.play_billing.zzbc)
      (r5v104 com.google.android.gms.internal.play_billing.zzbc)
      (r5v105 com.google.android.gms.internal.play_billing.zzbc)
      (r5v106 com.google.android.gms.internal.play_billing.zzbc)
      (r5v107 com.google.android.gms.internal.play_billing.zzbc)
      (r5v110 com.google.android.gms.internal.play_billing.zzbc)
      (r5v114 com.google.android.gms.internal.play_billing.zzbc)
      (r5v119 com.google.android.gms.internal.play_billing.zzbc)
     binds: [B:540:0x0c45, B:537:0x0c24, B:533:0x0c03, B:530:0x0be6, B:527:0x0bc9, B:524:0x0bab, B:522:0x0b9e, B:500:0x0b30, B:467:0x0a1b] A[DONT_GENERATE, DONT_INLINE]
      0x0c5c: PHI (r6v94 byte[]) = 
      (r6v74 byte[])
      (r6v75 byte[])
      (r6v76 byte[])
      (r6v77 byte[])
      (r6v78 byte[])
      (r6v79 byte[])
      (r6v82 byte[])
      (r6v87 byte[])
      (r6v95 byte[])
     binds: [B:540:0x0c45, B:537:0x0c24, B:533:0x0c03, B:530:0x0be6, B:527:0x0bc9, B:524:0x0bab, B:522:0x0b9e, B:500:0x0b30, B:467:0x0a1b] A[DONT_GENERATE, DONT_INLINE]
      0x0c5c: PHI (r9v90 int) = (r9v64 int), (r9v65 int), (r9v66 int), (r9v67 int), (r9v68 int), (r9v69 int), (r9v72 int), (r9v82 int), (r9v91 int) binds: [B:540:0x0c45, B:537:0x0c24, B:533:0x0c03, B:530:0x0be6, B:527:0x0bc9, B:524:0x0bab, B:522:0x0b9e, B:500:0x0b30, B:467:0x0a1b] A[DONT_GENERATE, DONT_INLINE]
      0x0c5c: PHI (r20v31 int) = 
      (r20v11 int)
      (r20v12 int)
      (r20v13 int)
      (r20v14 int)
      (r20v15 int)
      (r20v16 int)
      (r20v19 int)
      (r20v25 int)
      (r20v32 int)
     binds: [B:540:0x0c45, B:537:0x0c24, B:533:0x0c03, B:530:0x0be6, B:527:0x0bc9, B:524:0x0bab, B:522:0x0b9e, B:500:0x0b30, B:467:0x0a1b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:558:0x0cb4  */
    /* JADX WARN: Removed duplicated region for block: B:624:0x09ad A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:627:0x0c5f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:630:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:668:0x09ba A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:670:0x0c75 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01fc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int zzc(java.lang.Object r34, byte[] r35, int r36, int r37, int r38, com.google.android.gms.internal.play_billing.zzbc r39) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 3518
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzef.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.play_billing.zzbc):int");
    }

    @Override // com.google.android.gms.internal.play_billing.zzeo
    public final Object zze() {
        return ((zzcs) this.zzg).zzl();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006d  */
    @Override // com.google.android.gms.internal.play_billing.zzeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzf(java.lang.Object r8) {
        /*
            Method dump skipped, instruction units count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzef.zzf(java.lang.Object):void");
    }

    @Override // com.google.android.gms.internal.play_billing.zzeo
    public final void zzg(Object obj, Object obj2) {
        zzA(obj);
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzs = zzs(i);
            int i2 = 1048575 & iZzs;
            int[] iArr = this.zzc;
            int iZzr = zzr(iZzs);
            int i3 = iArr[i];
            long j = i2;
            switch (iZzr) {
                case 0:
                    if (zzI(obj2, i)) {
                        zzfp.zzo(obj, j, zzfp.zza(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 1:
                    if (zzI(obj2, i)) {
                        zzfp.zzp(obj, j, zzfp.zzb(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 2:
                    if (zzI(obj2, i)) {
                        zzfp.zzr(obj, j, zzfp.zzd(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 3:
                    if (zzI(obj2, i)) {
                        zzfp.zzr(obj, j, zzfp.zzd(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 4:
                    if (zzI(obj2, i)) {
                        zzfp.zzq(obj, j, zzfp.zzc(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 5:
                    if (zzI(obj2, i)) {
                        zzfp.zzr(obj, j, zzfp.zzd(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 6:
                    if (zzI(obj2, i)) {
                        zzfp.zzq(obj, j, zzfp.zzc(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 7:
                    if (zzI(obj2, i)) {
                        zzfp.zzm(obj, j, zzfp.zzw(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 8:
                    if (zzI(obj2, i)) {
                        zzfp.zzs(obj, j, zzfp.zzf(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 9:
                    zzB(obj, obj2, i);
                    break;
                case 10:
                    if (zzI(obj2, i)) {
                        zzfp.zzs(obj, j, zzfp.zzf(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 11:
                    if (zzI(obj2, i)) {
                        zzfp.zzq(obj, j, zzfp.zzc(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 12:
                    if (zzI(obj2, i)) {
                        zzfp.zzq(obj, j, zzfp.zzc(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 13:
                    if (zzI(obj2, i)) {
                        zzfp.zzq(obj, j, zzfp.zzc(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 14:
                    if (zzI(obj2, i)) {
                        zzfp.zzr(obj, j, zzfp.zzd(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 15:
                    if (zzI(obj2, i)) {
                        zzfp.zzq(obj, j, zzfp.zzc(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 16:
                    if (zzI(obj2, i)) {
                        zzfp.zzr(obj, j, zzfp.zzd(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 17:
                    zzB(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                case 30:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT /* 31 */:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    this.zzl.zzb(obj, obj2, j);
                    break;
                case 50:
                    int i4 = zzeq.zza;
                    zzfp.zzs(obj, j, zzdx.zza(zzfp.zzf(obj, j), zzfp.zzf(obj2, j)));
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzM(obj2, i3, i)) {
                        zzfp.zzs(obj, j, zzfp.zzf(obj2, j));
                        zzE(obj, i3, i);
                    }
                    break;
                case 60:
                    zzC(obj, obj2, i);
                    break;
                case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                case 62:
                case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                case 64:
                case BuildConfig.VERSION_CODE /* 65 */:
                case 66:
                case 67:
                    if (zzM(obj2, i3, i)) {
                        zzfp.zzs(obj, j, zzfp.zzf(obj2, j));
                        zzE(obj, i3, i);
                    }
                    break;
                case 68:
                    zzC(obj, obj2, i);
                    break;
            }
        }
        zzeq.zzq(this.zzm, obj, obj2);
        if (this.zzh) {
            zzeq.zzp(this.zzn, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzeo
    public final void zzh(Object obj, byte[] bArr, int i, int i2, zzbc zzbcVar) throws IOException {
        zzc(obj, bArr, i, i2, 0, zzbcVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0024  */
    @Override // com.google.android.gms.internal.play_billing.zzeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzi(java.lang.Object r24, com.google.android.gms.internal.play_billing.zzfx r25) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1910
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzef.zzi(java.lang.Object, com.google.android.gms.internal.play_billing.zzfx):void");
    }

    @Override // com.google.android.gms.internal.play_billing.zzeo
    public final boolean zzj(Object obj, Object obj2) {
        boolean zZzG;
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzs = zzs(i);
            long j = iZzs & 1048575;
            switch (zzr(iZzs)) {
                case 0:
                    if (!zzH(obj, obj2, i) || Double.doubleToLongBits(zzfp.zza(obj, j)) != Double.doubleToLongBits(zzfp.zza(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzH(obj, obj2, i) || Float.floatToIntBits(zzfp.zzb(obj, j)) != Float.floatToIntBits(zzfp.zzb(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzH(obj, obj2, i) || zzfp.zzd(obj, j) != zzfp.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzH(obj, obj2, i) || zzfp.zzd(obj, j) != zzfp.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzH(obj, obj2, i) || zzfp.zzc(obj, j) != zzfp.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzH(obj, obj2, i) || zzfp.zzd(obj, j) != zzfp.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzH(obj, obj2, i) || zzfp.zzc(obj, j) != zzfp.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzH(obj, obj2, i) || zzfp.zzw(obj, j) != zzfp.zzw(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzH(obj, obj2, i) || !zzeq.zzG(zzfp.zzf(obj, j), zzfp.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzH(obj, obj2, i) || !zzeq.zzG(zzfp.zzf(obj, j), zzfp.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzH(obj, obj2, i) || !zzeq.zzG(zzfp.zzf(obj, j), zzfp.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzH(obj, obj2, i) || zzfp.zzc(obj, j) != zzfp.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzH(obj, obj2, i) || zzfp.zzc(obj, j) != zzfp.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzH(obj, obj2, i) || zzfp.zzc(obj, j) != zzfp.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzH(obj, obj2, i) || zzfp.zzd(obj, j) != zzfp.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzH(obj, obj2, i) || zzfp.zzc(obj, j) != zzfp.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzH(obj, obj2, i) || zzfp.zzd(obj, j) != zzfp.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzH(obj, obj2, i) || !zzeq.zzG(zzfp.zzf(obj, j), zzfp.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                case 30:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT /* 31 */:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    zZzG = zzeq.zzG(zzfp.zzf(obj, j), zzfp.zzf(obj2, j));
                    break;
                case 50:
                    zZzG = zzeq.zzG(zzfp.zzf(obj, j), zzfp.zzf(obj2, j));
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case LockFreeTaskQueueCore.CLOSED_SHIFT /* 61 */:
                case 62:
                case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                case 64:
                case BuildConfig.VERSION_CODE /* 65 */:
                case 66:
                case 67:
                case 68:
                    long jZzp = zzp(i) & 1048575;
                    if (zzfp.zzc(obj, jZzp) != zzfp.zzc(obj2, jZzp) || !zzeq.zzG(zzfp.zzf(obj, j), zzfp.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    break;
            }
            if (!zZzG) {
                return false;
            }
        }
        if (!this.zzm.zzd(obj).equals(this.zzm.zzd(obj2))) {
            return false;
        }
        if (this.zzh) {
            return this.zzn.zzb(obj).equals(this.zzn.zzb(obj2));
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x009d  */
    @Override // com.google.android.gms.internal.play_billing.zzeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzk(java.lang.Object r18) {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzef.zzk(java.lang.Object):boolean");
    }
}
