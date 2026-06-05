package com.greenbulb.sonarpen;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.AudioTrack;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Environment;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.ActivityCompat;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class SonarPenUtilities extends BroadcastReceiver {
    private static final int e0 = a(44100, 12, 2, 1470);
    private int A;
    private boolean B;
    private float C;
    private float D;
    private float E;
    public final int ERROR_NO_AUDIO_MANGER;
    public final int ERROR_NO_PERMISSION;
    private double F;
    private float G;
    private float H;
    private float I;
    private float J;
    private float K;
    private int L;
    private float M;
    private float N;
    public final int NOT_RUNNING;
    public final int NO_ERROR;
    private float O;
    private float P;
    private int Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private com.greenbulb.sonarpen.a.a U;
    private boolean V;
    public final String VERSION_NO;
    private boolean W;
    private boolean X;
    private boolean Y;
    private Thread Z;
    private Context a;
    private boolean a0;
    private byte[] b;
    private int b0;
    private AudioTrack c;
    private boolean c0;
    public final float checkFeq;
    private AudioRecord d;
    private f d0;
    private boolean e;
    private int f;
    private float g;
    private boolean h;
    private boolean i;
    private boolean j;
    private float k;
    private float l;
    private float m;
    private boolean n;
    private int o;
    private SonarPenCallBack p;
    private int q;
    private int r;
    private float s;
    private float t;
    private boolean u;
    private int v;
    private boolean w;
    private boolean x;
    private MediaSession y;
    private int z;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SonarPenUtilities.this.p.onSonarPenButtonPressed();
        }
    }

    class b extends MediaSession.Callback {
        b(SonarPenUtilities sonarPenUtilities) {
        }

        @Override // android.media.session.MediaSession.Callback
        public boolean onMediaButtonEvent(Intent intent) {
            return true;
        }
    }

    class c implements Runnable {
        c() {
        }

        /* JADX WARN: Can't wrap try/catch for region: R(8:6|(2:9|(4:27|11|31|28)(4:26|12|(1:14)|15))(1:25)|16|21|17|29|28|2) */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r3 = this;
            L0:
                com.greenbulb.sonarpen.SonarPenUtilities r0 = com.greenbulb.sonarpen.SonarPenUtilities.this
                boolean r0 = com.greenbulb.sonarpen.SonarPenUtilities.c(r0)
                if (r0 == 0) goto L76
                java.lang.Thread r0 = java.lang.Thread.currentThread()
                boolean r0 = r0.isInterrupted()
                if (r0 != 0) goto L76
                com.greenbulb.sonarpen.SonarPenUtilities r0 = com.greenbulb.sonarpen.SonarPenUtilities.this
                boolean r0 = com.greenbulb.sonarpen.SonarPenUtilities.d(r0)
                if (r0 == 0) goto L1b
                goto L6e
            L1b:
                com.greenbulb.sonarpen.SonarPenUtilities r0 = com.greenbulb.sonarpen.SonarPenUtilities.this
                boolean r0 = com.greenbulb.sonarpen.SonarPenUtilities.e(r0)
                if (r0 == 0) goto L29
                com.greenbulb.sonarpen.SonarPenUtilities r0 = com.greenbulb.sonarpen.SonarPenUtilities.this
                com.greenbulb.sonarpen.SonarPenUtilities.f(r0)
                goto L0
            L29:
                com.greenbulb.sonarpen.SonarPenUtilities r0 = com.greenbulb.sonarpen.SonarPenUtilities.this
                r1 = 5
                com.greenbulb.sonarpen.SonarPenUtilities.b(r0, r1)
                com.greenbulb.sonarpen.SonarPenUtilities r0 = com.greenbulb.sonarpen.SonarPenUtilities.this
                com.greenbulb.sonarpen.SonarPenUtilities.g(r0)
                com.greenbulb.sonarpen.SonarPenUtilities r0 = com.greenbulb.sonarpen.SonarPenUtilities.this
                r1 = 0
                com.greenbulb.sonarpen.SonarPenUtilities.c(r0, r1)
                com.greenbulb.sonarpen.SonarPenUtilities r0 = com.greenbulb.sonarpen.SonarPenUtilities.this
                r2 = 0
                com.greenbulb.sonarpen.SonarPenUtilities.a(r0, r2)
                com.greenbulb.sonarpen.SonarPenUtilities r0 = com.greenbulb.sonarpen.SonarPenUtilities.this
                com.greenbulb.sonarpen.SonarPenUtilities.a(r0, r1)
                com.greenbulb.sonarpen.SonarPenUtilities r0 = com.greenbulb.sonarpen.SonarPenUtilities.this
                com.greenbulb.sonarpen.SonarPenUtilities.b(r0, r1)
                com.greenbulb.sonarpen.SonarPenUtilities r0 = com.greenbulb.sonarpen.SonarPenUtilities.this
                android.media.AudioRecord r0 = com.greenbulb.sonarpen.SonarPenUtilities.b(r0)
                if (r0 == 0) goto L61
                com.greenbulb.sonarpen.SonarPenUtilities r0 = com.greenbulb.sonarpen.SonarPenUtilities.this
                android.media.AudioRecord r0 = com.greenbulb.sonarpen.SonarPenUtilities.b(r0)
                r0.stop()
                com.greenbulb.sonarpen.SonarPenUtilities r0 = com.greenbulb.sonarpen.SonarPenUtilities.this
                r1 = 0
                com.greenbulb.sonarpen.SonarPenUtilities.a(r0, r1)
            L61:
                com.greenbulb.sonarpen.SonarPenUtilities r0 = com.greenbulb.sonarpen.SonarPenUtilities.this
                r1 = 1
                com.greenbulb.sonarpen.SonarPenUtilities.c(r0, r1)
                com.greenbulb.sonarpen.SonarPenUtilities r0 = com.greenbulb.sonarpen.SonarPenUtilities.this
                r1 = 20
                com.greenbulb.sonarpen.SonarPenUtilities.a(r0, r1)
            L6e:
                r0 = 100
                java.lang.Thread.sleep(r0)     // Catch: java.lang.Exception -> L74
                goto L0
            L74:
                goto L0
            L76:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.greenbulb.sonarpen.SonarPenUtilities.c.run():void");
        }
    }

    class d implements View.OnKeyListener {
        d() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            return keyEvent.getAction() == 0 ? SonarPenUtilities.this.isSonicPenButton(keyEvent) : keyEvent.getAction() == 1 && SonarPenUtilities.this.isSonicPenButton(keyEvent);
        }
    }

    class e implements View.OnTouchListener {
        e() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return view.onTouchEvent(SonarPenUtilities.this.translateTouchEvent(motionEvent));
        }
    }

    private class f {
        private int[] a;
        private int[] b;
        private long[] c;
        private int d;

        private f(SonarPenUtilities sonarPenUtilities) {
            this.a = new int[1024];
            this.b = new int[1024];
            this.c = new long[1024];
            this.d = 0;
        }

        /* synthetic */ f(SonarPenUtilities sonarPenUtilities, a aVar) {
            this(sonarPenUtilities);
        }

        public void a(int i) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.a;
                if (i2 >= iArr.length) {
                    int i3 = this.d;
                    if (i3 >= 1024) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        i3 = -1;
                        int i4 = 0;
                        while (true) {
                            long[] jArr = this.c;
                            if (i4 >= jArr.length) {
                                break;
                            }
                            long j = jArr[i4];
                            if (j < jCurrentTimeMillis) {
                                i3 = i4;
                                jCurrentTimeMillis = j;
                            }
                            i4++;
                        }
                    } else {
                        this.d = i3 + 1;
                    }
                    this.a[i3] = i;
                    this.b[i3] = 0;
                    this.c[i3] = System.currentTimeMillis();
                    return;
                }
                if (iArr[i2] == i) {
                    return;
                } else {
                    i2++;
                }
            }
        }

        public boolean b(int i) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.a;
                if (i2 >= iArr.length) {
                    return false;
                }
                if (iArr[i2] == i) {
                    return true;
                }
                i2++;
            }
        }
    }

    public SonarPenUtilities(Context context) {
        this.NOT_RUNNING = -1;
        this.NO_ERROR = 0;
        this.ERROR_NO_PERMISSION = 1;
        this.ERROR_NO_AUDIO_MANGER = 2;
        this.checkFeq = 9000.0f;
        this.VERSION_NO = "1.0 (2019042901)";
        this.a = null;
        this.b = new byte[e0];
        this.c = null;
        this.e = false;
        this.f = 0;
        this.g = 0.0f;
        this.h = false;
        this.i = false;
        this.j = false;
        this.k = 405.0f;
        this.l = 0.0f;
        this.m = 0.0f;
        this.n = true;
        this.o = 0;
        this.p = null;
        this.q = -1;
        this.r = -1;
        this.s = 999.0f;
        this.t = 999.0f;
        this.u = false;
        this.v = 20;
        this.w = true;
        this.x = false;
        this.y = null;
        this.z = -1;
        this.A = 0;
        this.B = false;
        this.C = 0.0f;
        this.D = 0.0f;
        this.E = 0.0f;
        this.F = 0.0d;
        this.G = 0.0f;
        this.H = 0.0f;
        this.I = 0.0f;
        this.J = 0.0f;
        this.K = 0.0f;
        this.L = 0;
        this.M = 0.0f;
        this.N = 0.0f;
        this.O = 0.0f;
        this.P = 0.0f;
        this.Q = 0;
        this.R = true;
        this.S = false;
        this.T = false;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = true;
        this.Z = null;
        this.a0 = false;
        this.b0 = 0;
        this.c0 = false;
        this.d0 = new f(this, null);
        this.a = context;
        this.U = new com.greenbulb.sonarpen.a.a();
        if (l()) {
            this.c0 = true;
        }
    }

    public SonarPenUtilities(Context context, boolean z) {
        this.NOT_RUNNING = -1;
        this.NO_ERROR = 0;
        this.ERROR_NO_PERMISSION = 1;
        this.ERROR_NO_AUDIO_MANGER = 2;
        this.checkFeq = 9000.0f;
        this.VERSION_NO = "1.0 (2019042901)";
        this.a = null;
        this.b = new byte[e0];
        this.c = null;
        this.e = false;
        this.f = 0;
        this.g = 0.0f;
        this.h = false;
        this.i = false;
        this.j = false;
        this.k = 405.0f;
        this.l = 0.0f;
        this.m = 0.0f;
        this.n = true;
        this.o = 0;
        this.p = null;
        this.q = -1;
        this.r = -1;
        this.s = 999.0f;
        this.t = 999.0f;
        this.u = false;
        this.v = 20;
        this.w = true;
        this.x = false;
        this.y = null;
        this.z = -1;
        this.A = 0;
        this.B = false;
        this.C = 0.0f;
        this.D = 0.0f;
        this.E = 0.0f;
        this.F = 0.0d;
        this.G = 0.0f;
        this.H = 0.0f;
        this.I = 0.0f;
        this.J = 0.0f;
        this.K = 0.0f;
        this.L = 0;
        this.M = 0.0f;
        this.N = 0.0f;
        this.O = 0.0f;
        this.P = 0.0f;
        this.Q = 0;
        this.R = true;
        this.S = false;
        this.T = false;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = true;
        this.Z = null;
        this.a0 = false;
        this.b0 = 0;
        this.c0 = false;
        this.d0 = new f(this, null);
        this.a = context;
        this.U = new com.greenbulb.sonarpen.a.a();
        this.Y = z;
    }

    private float a(short[] sArr) {
        long j = 0;
        for (short s : sArr) {
            j += (long) (s * s);
        }
        return (float) Math.sqrt(j / ((long) (sArr.length / 2)));
    }

    private static int a(int i, int i2, int i3, int i4) {
        return Math.max(AudioRecord.getMinBufferSize(i, i2, i3), i4 * 2);
    }

    private String a(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                bufferedReader.close();
                return sb.toString();
            }
            sb.append(line);
            sb.append("\n");
        }
    }

    private void a() {
        AudioTrack audioTrack = this.c;
        if (audioTrack != null && audioTrack.getPlayState() == 3) {
            this.c.stop();
            this.c.release();
            this.c = null;
        }
        AudioRecord audioRecord = this.d;
        if (audioRecord != null) {
            audioRecord.stop();
            this.d = null;
        }
        this.n = false;
        a(7);
        this.f = 0;
        this.g = 0.0f;
        this.i = false;
        this.F = 0.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        SonarPenCallBack sonarPenCallBack;
        if (this.A != i && (sonarPenCallBack = this.p) != null) {
            sonarPenCallBack.onSonarPenStatusChange(i);
        }
        this.A = i;
    }

    private void a(boolean z) {
        AudioTrack audioTrack = this.c;
        if (audioTrack != null) {
            if (audioTrack.getPlayState() == 3) {
                this.c.stop();
            }
            this.c.release();
            this.c = null;
        }
        short[] sArr = new short[88200];
        for (int i = 0; i < 88200; i += 2) {
            short sSin = (short) (Math.sin((((double) i) * 6.283185307179586d) / 4.9d) * 32767.0d);
            if (z) {
                sArr[i] = 0;
                sArr[i + 1] = sSin;
            } else {
                sArr[i] = sSin;
                sArr[i + 1] = 0;
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.c = new AudioTrack(new AudioAttributes.Builder().setContentType(2).setLegacyStreamType(3).setUsage(1).build(), new AudioFormat.Builder().setSampleRate(44100).setEncoding(2).setChannelMask(12).build(), 176400, 0, ((AudioManager) this.a.getSystemService("audio")).generateAudioSessionId());
        } else {
            this.c = new AudioTrack(3, 44100, 12, 2, 176400, 0);
        }
        if (this.c.getState() != 0) {
            this.c.write(sArr, 0, 88200);
            if (this.c.getState() == 1) {
                this.c.setLoopPoints(0, 22050, -1);
                this.c.setVolume(AudioTrack.getMaxVolume());
                return;
            }
        }
        this.c.release();
        this.c = null;
    }

    private boolean b() {
        if (!this.n) {
            if (this.d == null) {
                try {
                    this.d = Build.VERSION.SDK_INT < 23 ? new AudioRecord(1, 44100, 3, 2, 44100) : new AudioRecord(1, 44100, 12, 2, e0);
                } catch (Exception unused) {
                    this.d = null;
                }
                AudioRecord audioRecord = this.d;
                if (audioRecord != null && audioRecord.getRecordingState() != 3) {
                    try {
                        this.d.startRecording();
                    } catch (Exception unused2) {
                    }
                }
            }
            AudioRecord audioRecord2 = this.d;
            if (audioRecord2 == null) {
                return false;
            }
            short[] sArr = new short[4096];
            if (audioRecord2.read(sArr, 0, 4096) > 0) {
                this.H = a(sArr);
            }
            return true;
        }
        if (this.d == null) {
            if (Build.VERSION.SDK_INT < 23) {
                this.d = new AudioRecord(1, 44100, 3, 2, 44100);
                this.b = new byte[4096];
            } else {
                int i = e0;
                this.d = new AudioRecord(1, 44100, 12, 2, i);
                this.b = new byte[i];
            }
        }
        if (this.d.getRecordingState() != 3) {
            try {
                this.d.startRecording();
            } catch (Exception unused3) {
            }
        }
        AudioRecord audioRecord3 = this.d;
        byte[] bArr = this.b;
        int i2 = audioRecord3.read(bArr, 0, bArr.length);
        if (i2 < 32) {
            return false;
        }
        byte[] bArr2 = new byte[i2];
        System.arraycopy(this.b, 0, bArr2, 0, i2);
        this.U.b(bArr2);
        this.H = this.U.a();
        this.I = (float) this.U.e();
        this.J = (float) this.U.d();
        return true;
    }

    private void c() {
        a(true);
    }

    private boolean d() {
        AudioTrack audioTrack = this.c;
        return audioTrack != null && audioTrack.getPlayState() == 3;
    }

    private void e() {
        String strA;
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return;
        }
        File file = new File(externalStorageDirectory.getAbsolutePath() + "/SonarPen/");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, "manual.setting");
        if (file2.exists()) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file2);
                strA = a(fileInputStream);
                try {
                    fileInputStream.close();
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                strA = "";
            }
            if (strA.length() > 0) {
                try {
                    JSONObject jSONObject = new JSONObject(strA);
                    if (jSONObject.has("minAmp") && jSONObject.has("maxAmp")) {
                        this.B = true;
                        this.C = (float) jSONObject.getDouble("minAmp");
                        this.D = (float) jSONObject.getDouble("maxAmp");
                    }
                } catch (Exception unused3) {
                }
            }
        }
    }

    private void f() {
        AudioManager audioManager = (AudioManager) this.a.getSystemService("audio");
        if (audioManager != null) {
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            if (this.V) {
                streamMaxVolume = (streamMaxVolume * 80) / 100;
            }
            audioManager.setStreamVolume(3, streamMaxVolume, 0);
            if (audioManager.getStreamVolume(3) < streamMaxVolume) {
                audioManager.adjustStreamVolume(3, 1, 1);
                a(-3);
            }
        }
    }

    private void g() {
    }

    private void h() {
        p();
        k();
    }

    private void i() {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return;
        }
        File file = new File(externalStorageDirectory.getAbsolutePath() + "/SonarPen");
        if (!file.exists()) {
            try {
                file.mkdirs();
            } catch (Exception unused) {
            }
        }
        File file2 = new File(file, "manual.setting");
        if (file2.exists()) {
            file2.delete();
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("minAmp", this.C);
            jSONObject.put("maxAmp", this.D);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
        } catch (Exception unused2) {
        }
    }

    private void j() {
        Context context = this.a;
        if (context == null || this.T) {
            return;
        }
        try {
            context.registerReceiver(this, new IntentFilter("android.intent.action.HEADSET_PLUG"));
        } catch (Exception unused) {
        }
        this.T = true;
    }

    private void k() {
        AudioManager audioManager = (AudioManager) this.a.getSystemService("audio");
        if (audioManager != null) {
            audioManager.setStreamVolume(3, this.o, 0);
        }
    }

    private boolean l() {
        String str = Build.DEVICE;
        return str != null && str.matches(".+_cheets|cheets_.+");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0238 A[Catch: Exception -> 0x0325, TryCatch #0 {Exception -> 0x0325, blocks: (B:5:0x000a, B:7:0x0010, B:9:0x001e, B:11:0x0022, B:15:0x002c, B:17:0x0030, B:19:0x0036, B:20:0x0048, B:21:0x004a, B:23:0x004e, B:25:0x0054, B:27:0x005a, B:28:0x005d, B:30:0x0063, B:31:0x0065, B:33:0x006c, B:35:0x0072, B:37:0x007b, B:39:0x0082, B:41:0x0087, B:43:0x008c, B:45:0x0090, B:51:0x00ab, B:59:0x00bd, B:63:0x00ca, B:65:0x00ce, B:69:0x00d9, B:70:0x00db, B:76:0x00ef, B:78:0x00fb, B:80:0x0102, B:81:0x010f, B:89:0x0142, B:91:0x0147, B:93:0x014f, B:100:0x0169, B:102:0x0170, B:104:0x017e, B:96:0x0156, B:82:0x0116, B:83:0x011e, B:88:0x012a, B:90:0x0145, B:74:0x00e6, B:53:0x00af, B:57:0x00b9, B:97:0x0159, B:99:0x015e, B:103:0x0175, B:40:0x0085, B:105:0x0182, B:107:0x0186, B:118:0x019e, B:120:0x01a6, B:121:0x01b0, B:195:0x031d, B:124:0x01b9, B:128:0x01c3, B:130:0x01d0, B:134:0x01da, B:136:0x01e7, B:140:0x01f1, B:141:0x01fc, B:143:0x020a, B:147:0x0218, B:151:0x022e, B:159:0x0242, B:161:0x0248, B:163:0x024f, B:164:0x0254, B:168:0x025f, B:172:0x026a, B:174:0x0274, B:173:0x026f, B:160:0x0245, B:155:0x0238, B:186:0x02dd, B:145:0x0214, B:175:0x0293, B:177:0x02a8, B:179:0x02b1, B:180:0x02b4, B:192:0x0306, B:181:0x02b7, B:182:0x02ba, B:183:0x02bd, B:185:0x02c9, B:187:0x02e1, B:189:0x02f9, B:191:0x0302, B:193:0x030a, B:194:0x030e, B:196:0x0321), top: B:204:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0242 A[Catch: Exception -> 0x0325, TryCatch #0 {Exception -> 0x0325, blocks: (B:5:0x000a, B:7:0x0010, B:9:0x001e, B:11:0x0022, B:15:0x002c, B:17:0x0030, B:19:0x0036, B:20:0x0048, B:21:0x004a, B:23:0x004e, B:25:0x0054, B:27:0x005a, B:28:0x005d, B:30:0x0063, B:31:0x0065, B:33:0x006c, B:35:0x0072, B:37:0x007b, B:39:0x0082, B:41:0x0087, B:43:0x008c, B:45:0x0090, B:51:0x00ab, B:59:0x00bd, B:63:0x00ca, B:65:0x00ce, B:69:0x00d9, B:70:0x00db, B:76:0x00ef, B:78:0x00fb, B:80:0x0102, B:81:0x010f, B:89:0x0142, B:91:0x0147, B:93:0x014f, B:100:0x0169, B:102:0x0170, B:104:0x017e, B:96:0x0156, B:82:0x0116, B:83:0x011e, B:88:0x012a, B:90:0x0145, B:74:0x00e6, B:53:0x00af, B:57:0x00b9, B:97:0x0159, B:99:0x015e, B:103:0x0175, B:40:0x0085, B:105:0x0182, B:107:0x0186, B:118:0x019e, B:120:0x01a6, B:121:0x01b0, B:195:0x031d, B:124:0x01b9, B:128:0x01c3, B:130:0x01d0, B:134:0x01da, B:136:0x01e7, B:140:0x01f1, B:141:0x01fc, B:143:0x020a, B:147:0x0218, B:151:0x022e, B:159:0x0242, B:161:0x0248, B:163:0x024f, B:164:0x0254, B:168:0x025f, B:172:0x026a, B:174:0x0274, B:173:0x026f, B:160:0x0245, B:155:0x0238, B:186:0x02dd, B:145:0x0214, B:175:0x0293, B:177:0x02a8, B:179:0x02b1, B:180:0x02b4, B:192:0x0306, B:181:0x02b7, B:182:0x02ba, B:183:0x02bd, B:185:0x02c9, B:187:0x02e1, B:189:0x02f9, B:191:0x0302, B:193:0x030a, B:194:0x030e, B:196:0x0321), top: B:204:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0245 A[Catch: Exception -> 0x0325, TryCatch #0 {Exception -> 0x0325, blocks: (B:5:0x000a, B:7:0x0010, B:9:0x001e, B:11:0x0022, B:15:0x002c, B:17:0x0030, B:19:0x0036, B:20:0x0048, B:21:0x004a, B:23:0x004e, B:25:0x0054, B:27:0x005a, B:28:0x005d, B:30:0x0063, B:31:0x0065, B:33:0x006c, B:35:0x0072, B:37:0x007b, B:39:0x0082, B:41:0x0087, B:43:0x008c, B:45:0x0090, B:51:0x00ab, B:59:0x00bd, B:63:0x00ca, B:65:0x00ce, B:69:0x00d9, B:70:0x00db, B:76:0x00ef, B:78:0x00fb, B:80:0x0102, B:81:0x010f, B:89:0x0142, B:91:0x0147, B:93:0x014f, B:100:0x0169, B:102:0x0170, B:104:0x017e, B:96:0x0156, B:82:0x0116, B:83:0x011e, B:88:0x012a, B:90:0x0145, B:74:0x00e6, B:53:0x00af, B:57:0x00b9, B:97:0x0159, B:99:0x015e, B:103:0x0175, B:40:0x0085, B:105:0x0182, B:107:0x0186, B:118:0x019e, B:120:0x01a6, B:121:0x01b0, B:195:0x031d, B:124:0x01b9, B:128:0x01c3, B:130:0x01d0, B:134:0x01da, B:136:0x01e7, B:140:0x01f1, B:141:0x01fc, B:143:0x020a, B:147:0x0218, B:151:0x022e, B:159:0x0242, B:161:0x0248, B:163:0x024f, B:164:0x0254, B:168:0x025f, B:172:0x026a, B:174:0x0274, B:173:0x026f, B:160:0x0245, B:155:0x0238, B:186:0x02dd, B:145:0x0214, B:175:0x0293, B:177:0x02a8, B:179:0x02b1, B:180:0x02b4, B:192:0x0306, B:181:0x02b7, B:182:0x02ba, B:183:0x02bd, B:185:0x02c9, B:187:0x02e1, B:189:0x02f9, B:191:0x0302, B:193:0x030a, B:194:0x030e, B:196:0x0321), top: B:204:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x024f A[Catch: Exception -> 0x0325, TryCatch #0 {Exception -> 0x0325, blocks: (B:5:0x000a, B:7:0x0010, B:9:0x001e, B:11:0x0022, B:15:0x002c, B:17:0x0030, B:19:0x0036, B:20:0x0048, B:21:0x004a, B:23:0x004e, B:25:0x0054, B:27:0x005a, B:28:0x005d, B:30:0x0063, B:31:0x0065, B:33:0x006c, B:35:0x0072, B:37:0x007b, B:39:0x0082, B:41:0x0087, B:43:0x008c, B:45:0x0090, B:51:0x00ab, B:59:0x00bd, B:63:0x00ca, B:65:0x00ce, B:69:0x00d9, B:70:0x00db, B:76:0x00ef, B:78:0x00fb, B:80:0x0102, B:81:0x010f, B:89:0x0142, B:91:0x0147, B:93:0x014f, B:100:0x0169, B:102:0x0170, B:104:0x017e, B:96:0x0156, B:82:0x0116, B:83:0x011e, B:88:0x012a, B:90:0x0145, B:74:0x00e6, B:53:0x00af, B:57:0x00b9, B:97:0x0159, B:99:0x015e, B:103:0x0175, B:40:0x0085, B:105:0x0182, B:107:0x0186, B:118:0x019e, B:120:0x01a6, B:121:0x01b0, B:195:0x031d, B:124:0x01b9, B:128:0x01c3, B:130:0x01d0, B:134:0x01da, B:136:0x01e7, B:140:0x01f1, B:141:0x01fc, B:143:0x020a, B:147:0x0218, B:151:0x022e, B:159:0x0242, B:161:0x0248, B:163:0x024f, B:164:0x0254, B:168:0x025f, B:172:0x026a, B:174:0x0274, B:173:0x026f, B:160:0x0245, B:155:0x0238, B:186:0x02dd, B:145:0x0214, B:175:0x0293, B:177:0x02a8, B:179:0x02b1, B:180:0x02b4, B:192:0x0306, B:181:0x02b7, B:182:0x02ba, B:183:0x02bd, B:185:0x02c9, B:187:0x02e1, B:189:0x02f9, B:191:0x0302, B:193:0x030a, B:194:0x030e, B:196:0x0321), top: B:204:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x026f A[Catch: Exception -> 0x0325, TryCatch #0 {Exception -> 0x0325, blocks: (B:5:0x000a, B:7:0x0010, B:9:0x001e, B:11:0x0022, B:15:0x002c, B:17:0x0030, B:19:0x0036, B:20:0x0048, B:21:0x004a, B:23:0x004e, B:25:0x0054, B:27:0x005a, B:28:0x005d, B:30:0x0063, B:31:0x0065, B:33:0x006c, B:35:0x0072, B:37:0x007b, B:39:0x0082, B:41:0x0087, B:43:0x008c, B:45:0x0090, B:51:0x00ab, B:59:0x00bd, B:63:0x00ca, B:65:0x00ce, B:69:0x00d9, B:70:0x00db, B:76:0x00ef, B:78:0x00fb, B:80:0x0102, B:81:0x010f, B:89:0x0142, B:91:0x0147, B:93:0x014f, B:100:0x0169, B:102:0x0170, B:104:0x017e, B:96:0x0156, B:82:0x0116, B:83:0x011e, B:88:0x012a, B:90:0x0145, B:74:0x00e6, B:53:0x00af, B:57:0x00b9, B:97:0x0159, B:99:0x015e, B:103:0x0175, B:40:0x0085, B:105:0x0182, B:107:0x0186, B:118:0x019e, B:120:0x01a6, B:121:0x01b0, B:195:0x031d, B:124:0x01b9, B:128:0x01c3, B:130:0x01d0, B:134:0x01da, B:136:0x01e7, B:140:0x01f1, B:141:0x01fc, B:143:0x020a, B:147:0x0218, B:151:0x022e, B:159:0x0242, B:161:0x0248, B:163:0x024f, B:164:0x0254, B:168:0x025f, B:172:0x026a, B:174:0x0274, B:173:0x026f, B:160:0x0245, B:155:0x0238, B:186:0x02dd, B:145:0x0214, B:175:0x0293, B:177:0x02a8, B:179:0x02b1, B:180:0x02b4, B:192:0x0306, B:181:0x02b7, B:182:0x02ba, B:183:0x02bd, B:185:0x02c9, B:187:0x02e1, B:189:0x02f9, B:191:0x0302, B:193:0x030a, B:194:0x030e, B:196:0x0321), top: B:204:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x02dd A[Catch: Exception -> 0x0325, TryCatch #0 {Exception -> 0x0325, blocks: (B:5:0x000a, B:7:0x0010, B:9:0x001e, B:11:0x0022, B:15:0x002c, B:17:0x0030, B:19:0x0036, B:20:0x0048, B:21:0x004a, B:23:0x004e, B:25:0x0054, B:27:0x005a, B:28:0x005d, B:30:0x0063, B:31:0x0065, B:33:0x006c, B:35:0x0072, B:37:0x007b, B:39:0x0082, B:41:0x0087, B:43:0x008c, B:45:0x0090, B:51:0x00ab, B:59:0x00bd, B:63:0x00ca, B:65:0x00ce, B:69:0x00d9, B:70:0x00db, B:76:0x00ef, B:78:0x00fb, B:80:0x0102, B:81:0x010f, B:89:0x0142, B:91:0x0147, B:93:0x014f, B:100:0x0169, B:102:0x0170, B:104:0x017e, B:96:0x0156, B:82:0x0116, B:83:0x011e, B:88:0x012a, B:90:0x0145, B:74:0x00e6, B:53:0x00af, B:57:0x00b9, B:97:0x0159, B:99:0x015e, B:103:0x0175, B:40:0x0085, B:105:0x0182, B:107:0x0186, B:118:0x019e, B:120:0x01a6, B:121:0x01b0, B:195:0x031d, B:124:0x01b9, B:128:0x01c3, B:130:0x01d0, B:134:0x01da, B:136:0x01e7, B:140:0x01f1, B:141:0x01fc, B:143:0x020a, B:147:0x0218, B:151:0x022e, B:159:0x0242, B:161:0x0248, B:163:0x024f, B:164:0x0254, B:168:0x025f, B:172:0x026a, B:174:0x0274, B:173:0x026f, B:160:0x0245, B:155:0x0238, B:186:0x02dd, B:145:0x0214, B:175:0x0293, B:177:0x02a8, B:179:0x02b1, B:180:0x02b4, B:192:0x0306, B:181:0x02b7, B:182:0x02ba, B:183:0x02bd, B:185:0x02c9, B:187:0x02e1, B:189:0x02f9, B:191:0x0302, B:193:0x030a, B:194:0x030e, B:196:0x0321), top: B:204:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00bd A[Catch: Exception -> 0x0325, TryCatch #0 {Exception -> 0x0325, blocks: (B:5:0x000a, B:7:0x0010, B:9:0x001e, B:11:0x0022, B:15:0x002c, B:17:0x0030, B:19:0x0036, B:20:0x0048, B:21:0x004a, B:23:0x004e, B:25:0x0054, B:27:0x005a, B:28:0x005d, B:30:0x0063, B:31:0x0065, B:33:0x006c, B:35:0x0072, B:37:0x007b, B:39:0x0082, B:41:0x0087, B:43:0x008c, B:45:0x0090, B:51:0x00ab, B:59:0x00bd, B:63:0x00ca, B:65:0x00ce, B:69:0x00d9, B:70:0x00db, B:76:0x00ef, B:78:0x00fb, B:80:0x0102, B:81:0x010f, B:89:0x0142, B:91:0x0147, B:93:0x014f, B:100:0x0169, B:102:0x0170, B:104:0x017e, B:96:0x0156, B:82:0x0116, B:83:0x011e, B:88:0x012a, B:90:0x0145, B:74:0x00e6, B:53:0x00af, B:57:0x00b9, B:97:0x0159, B:99:0x015e, B:103:0x0175, B:40:0x0085, B:105:0x0182, B:107:0x0186, B:118:0x019e, B:120:0x01a6, B:121:0x01b0, B:195:0x031d, B:124:0x01b9, B:128:0x01c3, B:130:0x01d0, B:134:0x01da, B:136:0x01e7, B:140:0x01f1, B:141:0x01fc, B:143:0x020a, B:147:0x0218, B:151:0x022e, B:159:0x0242, B:161:0x0248, B:163:0x024f, B:164:0x0254, B:168:0x025f, B:172:0x026a, B:174:0x0274, B:173:0x026f, B:160:0x0245, B:155:0x0238, B:186:0x02dd, B:145:0x0214, B:175:0x0293, B:177:0x02a8, B:179:0x02b1, B:180:0x02b4, B:192:0x0306, B:181:0x02b7, B:182:0x02ba, B:183:0x02bd, B:185:0x02c9, B:187:0x02e1, B:189:0x02f9, B:191:0x0302, B:193:0x030a, B:194:0x030e, B:196:0x0321), top: B:204:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x014f A[Catch: Exception -> 0x0325, TryCatch #0 {Exception -> 0x0325, blocks: (B:5:0x000a, B:7:0x0010, B:9:0x001e, B:11:0x0022, B:15:0x002c, B:17:0x0030, B:19:0x0036, B:20:0x0048, B:21:0x004a, B:23:0x004e, B:25:0x0054, B:27:0x005a, B:28:0x005d, B:30:0x0063, B:31:0x0065, B:33:0x006c, B:35:0x0072, B:37:0x007b, B:39:0x0082, B:41:0x0087, B:43:0x008c, B:45:0x0090, B:51:0x00ab, B:59:0x00bd, B:63:0x00ca, B:65:0x00ce, B:69:0x00d9, B:70:0x00db, B:76:0x00ef, B:78:0x00fb, B:80:0x0102, B:81:0x010f, B:89:0x0142, B:91:0x0147, B:93:0x014f, B:100:0x0169, B:102:0x0170, B:104:0x017e, B:96:0x0156, B:82:0x0116, B:83:0x011e, B:88:0x012a, B:90:0x0145, B:74:0x00e6, B:53:0x00af, B:57:0x00b9, B:97:0x0159, B:99:0x015e, B:103:0x0175, B:40:0x0085, B:105:0x0182, B:107:0x0186, B:118:0x019e, B:120:0x01a6, B:121:0x01b0, B:195:0x031d, B:124:0x01b9, B:128:0x01c3, B:130:0x01d0, B:134:0x01da, B:136:0x01e7, B:140:0x01f1, B:141:0x01fc, B:143:0x020a, B:147:0x0218, B:151:0x022e, B:159:0x0242, B:161:0x0248, B:163:0x024f, B:164:0x0254, B:168:0x025f, B:172:0x026a, B:174:0x0274, B:173:0x026f, B:160:0x0245, B:155:0x0238, B:186:0x02dd, B:145:0x0214, B:175:0x0293, B:177:0x02a8, B:179:0x02b1, B:180:0x02b4, B:192:0x0306, B:181:0x02b7, B:182:0x02ba, B:183:0x02bd, B:185:0x02c9, B:187:0x02e1, B:189:0x02f9, B:191:0x0302, B:193:0x030a, B:194:0x030e, B:196:0x0321), top: B:204:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0152  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m() {
        /*
            Method dump skipped, instruction units count: 813
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.greenbulb.sonarpen.SonarPenUtilities.m():void");
    }

    private void n() {
        if (!this.u || d()) {
            return;
        }
        f();
        c();
        AudioTrack audioTrack = this.c;
        if (audioTrack == null) {
            a(-2);
        } else {
            audioTrack.play();
        }
        this.f = 0;
    }

    private int o() {
        a(0);
        j();
        if (!s()) {
            this.z = 2;
            a(-1);
            return this.z;
        }
        if (ActivityCompat.checkSelfPermission(this.a, "android.permission.RECORD_AUDIO") != 0) {
            this.z = 1;
            a(-1);
            return 1;
        }
        if (this.y == null) {
            MediaSession mediaSession = new MediaSession(this.a, "SONICPEN");
            this.y = mediaSession;
            mediaSession.setFlags(3);
            this.y.setCallback(new b(this));
            this.y.setPlaybackState(new PlaybackState.Builder().setActions(518L).setState(3, 0L, 0.0f, 1L).build());
            this.y.setFlags(3);
        }
        this.y.setActive(true);
        e();
        this.e = true;
        this.h = false;
        this.f = 0;
        a(1);
        AudioManager audioManager = (AudioManager) this.a.getSystemService("audio");
        if (audioManager != null) {
            this.o = audioManager.getStreamVolume(3);
        } else {
            this.o = 0;
        }
        Thread thread = new Thread(new c());
        this.Z = thread;
        thread.start();
        this.z = 0;
        return 0;
    }

    private void p() {
        if (d()) {
            this.c.stop();
            this.c.release();
            this.c = null;
            this.f = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        AudioRecord audioRecord = this.d;
        if (audioRecord != null) {
            try {
                audioRecord.stop();
            } catch (Exception unused) {
            }
            this.d = null;
        }
        this.E = 0.0f;
    }

    private void r() {
        if (this.T) {
            try {
                this.a.unregisterReceiver(this);
            } catch (Exception unused) {
            }
            this.T = false;
        }
    }

    private boolean s() {
        AudioManager audioManager = (AudioManager) this.a.getSystemService("audio");
        if (audioManager == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            for (AudioDeviceInfo audioDeviceInfo : audioManager.getDevices(3)) {
                if (audioDeviceInfo.getType() == 4 || audioDeviceInfo.getType() == 3) {
                    this.u = true;
                }
            }
        } else {
            this.u = audioManager.isWiredHeadsetOn();
        }
        this.u = false;
        return true;
    }

    public boolean IsButtonUseSoundWaveDetected() {
        return this.c0;
    }

    public void addSonarPenCallback(SonarPenCallBack sonarPenCallBack) {
        this.p = sonarPenCallBack;
    }

    public void addSonarPenToView(View view) {
        if (this.d0.b(view.getId())) {
            return;
        }
        this.d0.a(view.getId());
        view.setOnKeyListener(new d());
        view.setOnTouchListener(new e());
    }

    public boolean audioPause() {
        if (!this.a0) {
            if (d()) {
                this.b0 = this.c.getPlaybackHeadPosition();
                this.c.pause();
                k();
            }
            this.a0 = true;
        }
        return this.a0;
    }

    public boolean audioResume() {
        if (this.a0) {
            if (!d()) {
                if (this.c == null) {
                    n();
                } else {
                    f();
                    this.c.setPlaybackHeadPosition(this.b0);
                    this.c.play();
                }
            }
            this.a0 = false;
        }
        return this.a0;
    }

    public void clearManualSetting() {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            this.B = false;
            return;
        }
        File file = new File(externalStorageDirectory.getAbsolutePath() + "/SonarPen");
        if (!file.exists()) {
            try {
                file.mkdirs();
            } catch (Exception unused) {
            }
        }
        File file2 = new File(file, "manual.setting");
        if (file2.exists()) {
            file2.delete();
        }
        this.B = false;
    }

    public JSONObject getCurrReading() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("maxValue", this.l);
            jSONObject.put("maxManualValue", this.D);
            jSONObject.put("currentValue", this.G);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public float getCurrentAmp() {
        return this.H;
    }

    public double getCurrentPressure() {
        return this.g;
    }

    public void getCurrentReadingValue(SonarPenReadings sonarPenReadings) {
        getCurrentReadingValue(sonarPenReadings, true);
    }

    public void getCurrentReadingValue(SonarPenReadings sonarPenReadings, boolean z) {
        if (z) {
            m();
        }
        sonarPenReadings.minValue = this.k;
        sonarPenReadings.maxValue = this.l;
        sonarPenReadings.currentValue = this.H;
    }

    public boolean getIsAudioPaused() {
        return this.a0;
    }

    public float getManualMaxValue() {
        return this.D;
    }

    public float getManualMinValue() {
        return this.C;
    }

    public boolean getSonicPenButtonPressed() {
        return this.i;
    }

    public int getState() {
        return this.z;
    }

    public int getSystemPenId() {
        return this.q;
    }

    public boolean getUseTouchSize() {
        return this.R;
    }

    public boolean isSonarPenOnScreen() {
        return this.A == 3 && this.q != -1;
    }

    public boolean isSonicPenButton(KeyEvent keyEvent) {
        SonarPenCallBack sonarPenCallBack;
        if (keyEvent.getKeyCode() != 79 || !this.h) {
            return false;
        }
        boolean z = keyEvent.getAction() == 0;
        this.i = z;
        if (z && (sonarPenCallBack = this.p) != null) {
            sonarPenCallBack.onSonarPenButtonPressed();
        }
        return true;
    }

    public boolean isUsingManualCalibrate() {
        return this.B;
    }

    public boolean markSettingValue() {
        float f2 = this.l;
        float f3 = this.k;
        if (f2 < f3 || 50.0f + f2 < f3) {
            return false;
        }
        this.D = f2;
        this.C = f3;
        this.B = true;
        i();
        return true;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.HEADSET_PLUG".equals(intent.getAction())) {
            boolean z = this.u;
            boolean z2 = intent.getIntExtra("state", -1) > 0;
            this.u = z2;
            if (z != z2) {
                if (z2) {
                    g();
                } else {
                    h();
                }
            }
        }
    }

    public void setByPassDetectionAsDefault(boolean z) {
        this.Y = z;
    }

    public void setUseSoundWaveDetectButton(boolean z) {
        this.c0 = z;
    }

    public void setUseTouchSize(boolean z) {
        this.R = z;
    }

    public int start() {
        this.X = this.Y;
        this.a0 = false;
        return o();
    }

    public int startWithByPass() {
        this.X = true;
        return o();
    }

    public void stop() {
        this.e = false;
        Thread thread = this.Z;
        if (thread != null) {
            try {
                thread.interrupt();
            } catch (Exception unused) {
            }
            this.Z = null;
        }
        q();
        MediaSession mediaSession = this.y;
        if (mediaSession != null) {
            mediaSession.setActive(false);
        }
        k();
        p();
        r();
        this.a0 = false;
        this.f = 0;
        this.g = 0.0f;
        this.i = false;
        this.h = false;
        a(4);
        this.z = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x019c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.MotionEvent translateTouchEvent(android.view.MotionEvent r20) {
        /*
            Method dump skipped, instruction units count: 828
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.greenbulb.sonarpen.SonarPenUtilities.translateTouchEvent(android.view.MotionEvent):android.view.MotionEvent");
    }
}
