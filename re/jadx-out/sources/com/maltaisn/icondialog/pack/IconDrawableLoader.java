package com.maltaisn.icondialog.pack;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.MotionEventCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import com.maltaisn.icondialog.data.Icon;
import de.mrapp.util.FileUtil;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: IconDrawableLoader.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000 \n2\u00020\u0001:\u0001\nB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007R\u0016\u0010\u0002\u001a\n \u0005*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/maltaisn/icondialog/pack/IconDrawableLoader;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "kotlin.jvm.PlatformType", "loadDrawable", "", "icon", "Lcom/maltaisn/icondialog/data/Icon;", "Companion", "lib_release"}, k = 1, mv = {1, 1, 16})
public class IconDrawableLoader {
    private static final short[] BIN_XML_END;
    private static final short[] BIN_XML_START;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG;
    private final Context context;

    public IconDrawableLoader(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context.getApplicationContext();
    }

    public final void loadDrawable(Icon icon) {
        VectorDrawableCompat vectorDrawableCompatCreateFromXmlInner;
        Intrinsics.checkParameterIsNotNull(icon, "icon");
        if (icon.getDrawable() != null) {
            return;
        }
        if (icon.getSrcId() != null) {
            Context context = this.context;
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            vectorDrawableCompatCreateFromXmlInner = ResourcesCompat.getDrawable(context.getResources(), icon.getSrcId().intValue(), null);
        } else {
            byte[] bArrCreateDrawableBinaryXml = INSTANCE.createDrawableBinaryXml(icon.getPathData(), icon.getWidth(), icon.getHeight());
            try {
                Class<?> cls = Class.forName("android.content.res.XmlBlock");
                Intrinsics.checkExpressionValueIsNotNull(cls, "Class.forName(\"android.content.res.XmlBlock\")");
                Constructor<?> constructor = cls.getConstructor(byte[].class);
                Intrinsics.checkExpressionValueIsNotNull(constructor, "xmlBlock.getConstructor(ByteArray::class.java)");
                Method declaredMethod = cls.getDeclaredMethod("newParser", new Class[0]);
                Intrinsics.checkExpressionValueIsNotNull(declaredMethod, "xmlBlock.getDeclaredMethod(\"newParser\")");
                constructor.setAccessible(true);
                declaredMethod.setAccessible(true);
                Object[] objArr = new Object[1];
                if (bArrCreateDrawableBinaryXml == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Any");
                }
                objArr[0] = bArrCreateDrawableBinaryXml;
                Object objInvoke = declaredMethod.invoke(constructor.newInstance(objArr), new Object[0]);
                if (objInvoke == null) {
                    throw new TypeCastException("null cannot be cast to non-null type org.xmlpull.v1.XmlPullParser");
                }
                XmlPullParser xmlPullParser = (XmlPullParser) objInvoke;
                if (Build.VERSION.SDK_INT >= 24) {
                    Context context2 = this.context;
                    Intrinsics.checkExpressionValueIsNotNull(context2, "context");
                    vectorDrawableCompatCreateFromXmlInner = Drawable.createFromXml(context2.getResources(), xmlPullParser);
                } else {
                    AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
                    for (int next = xmlPullParser.next(); next != 2; next = xmlPullParser.next()) {
                    }
                    Context context3 = this.context;
                    Intrinsics.checkExpressionValueIsNotNull(context3, "context");
                    vectorDrawableCompatCreateFromXmlInner = VectorDrawableCompat.createFromXmlInner(context3.getResources(), xmlPullParser, attributeSetAsAttributeSet, (Resources.Theme) null);
                }
            } catch (Exception e) {
                Log.e(TAG, "Could not create vector drawable for icon ID " + icon.getId() + FileUtil.SUFFIX_SEPARATOR_CHAR, e);
                return;
            }
        }
        icon.setDrawable$lib_release(vectorDrawableCompatCreateFromXmlInner);
    }

    /* JADX INFO: compiled from: IconDrawableLoader.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0017\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/maltaisn/icondialog/pack/IconDrawableLoader$Companion;", "", "()V", "BIN_XML_END", "", "BIN_XML_START", "TAG", "", "createDrawableBinaryXml", "", "pathData", "width", "", "height", "lib_release"}, k = 1, mv = {1, 1, 16})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final byte[] createDrawableBinaryXml(String pathData, int width, int height) {
            Charset charset = Charsets.UTF_8;
            if (pathData == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            byte[] bytes = pathData.getBytes(charset);
            Intrinsics.checkExpressionValueIsNotNull(bytes, "(this as java.lang.String).getBytes(charset)");
            int length = bytes.length + (bytes.length > 127 ? 5 : 3);
            int length2 = (IconDrawableLoader.BIN_XML_START.length + length) % 4;
            if (length2 != 0) {
                length2 = 4 - length2;
            }
            int length3 = IconDrawableLoader.BIN_XML_START.length + length + length2 + IconDrawableLoader.BIN_XML_END.length;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length3);
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            for (short s : IconDrawableLoader.BIN_XML_START) {
                byteBufferAllocate.put((byte) s);
            }
            byteBufferAllocate.position(4);
            byteBufferAllocate.putInt(length3);
            byteBufferAllocate.position(12);
            byteBufferAllocate.putInt((IconDrawableLoader.BIN_XML_START.length - 8) + length + length2);
            byteBufferAllocate.position(IconDrawableLoader.BIN_XML_START.length);
            if (bytes.length > 127) {
                byte length4 = (byte) (((bytes.length & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | 32768) >>> 8);
                byte length5 = (byte) (bytes.length & 255);
                byteBufferAllocate.put(length4);
                byteBufferAllocate.put(length5);
                byteBufferAllocate.put(length4);
                byteBufferAllocate.put(length5);
            } else {
                byte length6 = (byte) bytes.length;
                byteBufferAllocate.put(length6);
                byteBufferAllocate.put(length6);
            }
            byteBufferAllocate.put(bytes);
            byteBufferAllocate.put((byte) 0);
            if (length2 > 0) {
                byteBufferAllocate.put(new byte[length2]);
            }
            int iPosition = byteBufferAllocate.position();
            for (short s2 : IconDrawableLoader.BIN_XML_END) {
                byteBufferAllocate.put((byte) s2);
            }
            byteBufferAllocate.putInt(iPosition + 124, Float.floatToRawIntBits(width));
            byteBufferAllocate.putInt(iPosition + 144, Float.floatToRawIntBits(height));
            byte[] bArrArray = byteBufferAllocate.array();
            Intrinsics.checkExpressionValueIsNotNull(bArrArray, "bb.array()");
            return bArrArray;
        }
    }

    static {
        Intrinsics.checkExpressionValueIsNotNull("IconDrawableLoader", "IconDrawableLoader::class.java.simpleName");
        TAG = "IconDrawableLoader";
        BIN_XML_START = new short[]{3, 0, 8, 0, 0, 0, 0, 0, 1, 0, 28, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 17, 0, 0, 0, 33, 0, 0, 0, 50, 0, 0, 0, 62, 0, 0, 0, 73, 0, 0, 0, 118, 0, 0, 0, 125, 0, 0, 0, 134, 0, 0, 0, 6, 6, 104, 101, 105, 103, 104, 116, 0, 5, 5, 119, 105, 100, 116, 104, 0, 13, 13, 118, 105, 101, 119, 112, 111, 114, 116, 87, 105, 100, 116, 104, 0, 14, 14, 118, 105, 101, 119, 112, 111, 114, 116, 72, 101, 105, 103, 104, 116, 0, 9, 9, 102, 105, 108, 108, 67, 111, 108, 111, 114, 0, 8, 8, 112, 97, 116, 104, 68, 97, 116, 97, 0, 42, 42, 104, 116, 116, 112, 58, 47, 47, 115, 99, 104, 101, 109, 97, 115, 46, 97, 110, 100, 114, 111, 105, 100, 46, 99, 111, 109, 47, 97, 112, 107, 47, 114, 101, 115, 47, 97, 110, 100, 114, 111, 105, 100, 0, 4, 4, 112, 97, 116, 104, 0, 6, 6, 118, 101, 99, 116, 111, 114, 0};
        BIN_XML_END = new short[]{128, 1, 8, 0, 32, 0, 0, 0, 85, 1, 1, 1, 89, 1, 1, 1, 2, 4, 1, 1, 3, 4, 1, 1, 4, 4, 1, 1, 5, 4, 1, 1, 2, 1, 16, 0, 116, 0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 8, 0, 0, 0, 20, 0, 20, 0, 4, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 255, 8, 0, 0, 5, 1, 24, 0, 0, 6, 0, 0, 0, 1, 0, 0, 0, 255, 255, 255, 255, 8, 0, 0, 5, 1, 24, 0, 0, 6, 0, 0, 0, 2, 0, 0, 0, 255, 255, 255, 255, 8, 0, 0, 4, 0, 0, 0, 0, 6, 0, 0, 0, 3, 0, 0, 0, 255, 255, 255, 255, 8, 0, 0, 4, 0, 0, 0, 0, 2, 1, 16, 0, 76, 0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 7, 0, 0, 0, 20, 0, 20, 0, 2, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 4, 0, 0, 0, 255, 255, 255, 255, 8, 0, 0, 29, 0, 0, 0, 255, 6, 0, 0, 0, 5, 0, 0, 0, 9, 0, 0, 0, 8, 0, 0, 3, 9, 0, 0, 0, 3, 1, 16, 0, 24, 0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 7, 0, 0, 0, 3, 1, 16, 0, 24, 0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 8, 0, 0, 0};
    }
}
