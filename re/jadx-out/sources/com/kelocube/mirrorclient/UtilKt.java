package com.kelocube.mirrorclient;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.opengl.GLES20;
import android.os.Environment;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.WindowManager;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.afollestad.materialdialogs.message.DialogMessageSettings;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: Util.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\u001a\u000e\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\u001a\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\u001a\u000e\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\u001a\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014\u001a\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0012\u001a\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0011\u001a\u00020\u0012\u001a\u0016\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b\u001a\u0016\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001e\u001a\u0010\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001\u001a\u000e\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\t\u001a\u0018\u0010$\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000bH\u0002\u001a\u0006\u0010%\u001a\u00020\u0010\u001a\u0016\u0010&\u001a\u00020\t2\u0006\u0010#\u001a\u00020\t2\u0006\u0010'\u001a\u00020\t\u001a\u0012\u0010(\u001a\u00020\u0010*\u00020\u00122\u0006\u0010)\u001a\u00020\u0001\u001a\u0012\u0010*\u001a\u00020\u000b*\u00020\u00122\u0006\u0010+\u001a\u00020\u000b\u001a\n\u0010,\u001a\u00020\u0010*\u00020-\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007*@\u0010.\"\u001d\u0012\u0013\u0012\u001100¢\u0006\f\b1\u0012\b\b2\u0012\u0004\b\b(3\u0012\u0004\u0012\u00020\u00100/2\u001d\u0012\u0013\u0012\u001100¢\u0006\f\b1\u0012\b\b2\u0012\u0004\b\b(3\u0012\u0004\u0012\u00020\u00100/¨\u00064"}, d2 = {"APP_TAG", "", "shouldTakeScreenshot", "Ljava/util/concurrent/atomic/AtomicBoolean;", "TAG", "", "getTAG", "(Ljava/lang/Object;)Ljava/lang/String;", "colorA", "", "color", "", "colorB", "colorG", "colorR", "enableSamsungCrap", "", "context", "Landroid/content/Context;", "enable", "", "getLandscapeResolution", "Landroid/graphics/Point;", "getWifiIP", "handleScreenshot", "width", "height", "loadShader", "type", "stream", "Ljava/io/InputStream;", "parseAddress", "Ljava/net/InetSocketAddress;", "address", "saturate", "x", "saveFrame", "takeScreenshot", "wrap", "p", "debugToast", "text", "getDimensionFromAttribute", "attr", "htmlWithCorrectLinkColor", "Lcom/afollestad/materialdialogs/message/DialogMessageSettings;", "ErrorHandler", "Lkotlin/Function1;", "Lcom/kelocube/mirrorclient/AppException;", "Lkotlin/ParameterName;", "name", "e", "app_release"}, k = 2, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class UtilKt {
    public static final String APP_TAG = "mirror-client";
    private static AtomicBoolean shouldTakeScreenshot = new AtomicBoolean(false);

    public static final float colorA(int i) {
        return ((i & ViewCompat.MEASURED_STATE_MASK) >>> 24) / 255.0f;
    }

    public static final float colorB(int i) {
        return ((i & 16711680) >>> 16) / 255.0f;
    }

    public static final float colorG(int i) {
        return ((i & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >>> 8) / 255.0f;
    }

    public static final float colorR(int i) {
        return (i & 255) / 255.0f;
    }

    public static final float saturate(float f) {
        if (f < 0.0f) {
            return 0.0f;
        }
        if (f > 1.0f) {
            return 1.0f;
        }
        return f;
    }

    public static final float wrap(float f, float f2) {
        float f3 = f % f2;
        return f3 < 0.0f ? f3 + f2 : f3;
    }

    public static final String getTAG(Object obj) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        String simpleName = obj.getClass().getSimpleName();
        int length = simpleName.length();
        Intrinsics.checkNotNull(simpleName);
        if (length <= 23) {
            return simpleName;
        }
        String strSubstring = simpleName.substring(0, 23);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final int loadShader(int i, InputStream stream) throws IOException {
        Intrinsics.checkNotNullParameter(stream, "stream");
        byte[] bArr = new byte[stream.available()];
        stream.read(bArr);
        String str = new String(bArr, Charsets.UTF_8);
        int iGlCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        return iGlCreateShader;
    }

    public static final int getDimensionFromAttribute(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
        }
        return 0;
    }

    public static final InetSocketAddress parseAddress(String str) throws URISyntaxException {
        URI uri = new URI("my://" + str);
        String host = uri.getHost();
        int port = uri.getPort();
        if (port == -1) {
            port = PrefsKt.APP_DEFAULT_PORT;
        }
        if (host == null) {
            throw new URISyntaxException(uri.toString(), "Address URI must have host part");
        }
        InetSocketAddress inetSocketAddressCreateUnresolved = InetSocketAddress.createUnresolved(host, port);
        Intrinsics.checkNotNullExpressionValue(inetSocketAddressCreateUnresolved, "createUnresolved(...)");
        return inetSocketAddressCreateUnresolved;
    }

    public static final String getWifiIP(Context context) {
        WifiInfo connectionInfo;
        int ipAddress;
        String hostAddress;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Object systemService = context.getApplicationContext().getSystemService("wifi");
            WifiManager wifiManager = systemService instanceof WifiManager ? (WifiManager) systemService : null;
            if (wifiManager == null || (connectionInfo = wifiManager.getConnectionInfo()) == null || (ipAddress = connectionInfo.getIpAddress()) == 0) {
                return null;
            }
            if (Intrinsics.areEqual(ByteOrder.nativeOrder(), ByteOrder.LITTLE_ENDIAN)) {
                ipAddress = Integer.reverseBytes(ipAddress);
            }
            if (((-4194304) & ipAddress) == 1681915904) {
                hostAddress = context.getString(R.string.pref_ip_address_sandbox);
            } else {
                hostAddress = InetAddress.getByAddress(BigInteger.valueOf(ipAddress).toByteArray()).getHostAddress();
            }
            return hostAddress;
        } catch (Throwable th) {
            DiagnosticsKt.traceMessage("getWifiIP", th.toString());
            return null;
        }
    }

    public static final void takeScreenshot() {
        shouldTakeScreenshot.set(true);
    }

    public static final void handleScreenshot(int i, int i2) throws Throwable {
        if (shouldTakeScreenshot.getAndSet(false)) {
            saveFrame(i, i2);
        }
    }

    private static final void saveFrame(int i, int i2) throws Throwable {
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), APP_TAG);
        file.mkdirs();
        file.exists();
        File file2 = new File(file, System.currentTimeMillis() + ".png");
        file2.createNewFile();
        file2.exists();
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i * i2 * 4);
        byteBufferAllocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        GLES20.glReadPixels(0, 0, i, i2, 6408, 5121, byteBufferAllocateDirect);
        byteBufferAllocateDirect.rewind();
        BufferedOutputStream bufferedOutputStream = null;
        try {
            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file2.getPath()));
            try {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
                bitmapCreateBitmap.copyPixelsFromBuffer(byteBufferAllocateDirect);
                bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 0, bufferedOutputStream2);
                bitmapCreateBitmap.recycle();
                bufferedOutputStream2.close();
                Log.d(APP_TAG, "Saved " + i + "x" + i2 + " frame as '" + file2.getPath() + "'");
            } catch (Throwable th) {
                th = th;
                bufferedOutputStream = bufferedOutputStream2;
                if (bufferedOutputStream != null) {
                    bufferedOutputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static final void enableSamsungCrap(Context context, boolean z) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Intent intent = new Intent();
            intent.setAction("com.sec.android.intent.action.BLACK_MEMO");
            intent.putExtra("state", z ? "hide" : "show");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            DiagnosticsKt.captureError(th);
        }
    }

    public static final Point getLandscapeResolution(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Point point = new Point();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Object systemService = context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        ((WindowManager) systemService).getDefaultDisplay().getRealMetrics(displayMetrics);
        point.x = displayMetrics.widthPixels;
        point.y = displayMetrics.heightPixels;
        return point.y > point.x ? new Point(point.y, point.x) : point;
    }

    public static final void debugToast(Context context, String text) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        DiagnosticsKt.traceMessage("debugToast", text);
    }

    public static final void htmlWithCorrectLinkColor(DialogMessageSettings dialogMessageSettings) {
        Intrinsics.checkNotNullParameter(dialogMessageSettings, "<this>");
        DialogMessageSettings.html$default(dialogMessageSettings, null, 1, null).getMessageTextView().setLinkTextColor(ContextCompat.getColor(dialogMessageSettings.getMessageTextView().getContext(), R.color.colorOnPrimary));
    }
}
