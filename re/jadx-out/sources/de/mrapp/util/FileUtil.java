package de.mrapp.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.Typography;

/* JADX INFO: compiled from: FileUtil.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u0012\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u0004H\u0007J\"\u0010\u0007\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u0004H\u0007J\"\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\u0012H\u0007J\u001a\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\u0012H\u0007J\u000e\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\bJ \u0010\u0016\u001a\u00020\u00172\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0012H\u0002J&\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\u0018\u001a\u00020\u0012H\u0007J&\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0006\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\u0018\u001a\u00020\u0012H\u0007J&\u0010\u001a\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0007J.\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0007J\u000e\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\bJ\u0018\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u0012H\u0002J\u000e\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\bJ$\u0010 \u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\u0018\u001a\u00020\u0012H\u0007J$\u0010 \u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\u0018\u001a\u00020\u0012H\u0007J\"\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\u0012H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lde/mrapp/util/FileUtil;", "", "()V", "SUFFIX_SEPARATOR", "", "SUFFIX_SEPARATOR_CHAR", "", "appendSuffix", "Ljava/io/File;", "file", "suffix", "separator", "fileName", "copy", "", "source", "destination", "overwrite", "", "create", "delete", "deleteRecursively", "getStartOfSuffix", "", "firstOccurrence", "getSuffix", "getUniqueFile", "getUniqueFileName", "directory", "mkdir", "createParents", "mkdirs", "removeSuffix", "writeTo", "data", "", "JavaUtil"}, k = 1, mv = {1, 1, 16})
public final class FileUtil {
    public static final FileUtil INSTANCE = new FileUtil();
    public static final String SUFFIX_SEPARATOR = ".";
    public static final char SUFFIX_SEPARATOR_CHAR = '.';

    public final File appendSuffix(File file, String str) {
        return appendSuffix$default(this, file, str, (String) null, 4, (Object) null);
    }

    public final String appendSuffix(String str, String str2) {
        return appendSuffix$default(this, str, str2, (String) null, 4, (Object) null);
    }

    public final void copy(File file, File file2) throws IOException {
        copy$default(this, file, file2, false, 4, null);
    }

    public final void create(File file) throws IOException {
        create$default(this, file, false, 2, null);
    }

    public final String getSuffix(File file) {
        return getSuffix$default(this, file, (String) null, false, 6, (Object) null);
    }

    public final String getSuffix(File file, String str) {
        return getSuffix$default(this, file, str, false, 4, (Object) null);
    }

    public final String getSuffix(String str) {
        return getSuffix$default(this, str, (String) null, false, 6, (Object) null);
    }

    public final String getSuffix(String str, String str2) {
        return getSuffix$default(this, str, str2, false, 4, (Object) null);
    }

    public final File getUniqueFile(File file) {
        return getUniqueFile$default(this, file, null, null, 6, null);
    }

    public final File getUniqueFile(File file, String str) {
        return getUniqueFile$default(this, file, str, null, 4, null);
    }

    public final String getUniqueFileName(File file, String str) {
        return getUniqueFileName$default(this, file, str, null, null, 12, null);
    }

    public final String getUniqueFileName(File file, String str, String str2) {
        return getUniqueFileName$default(this, file, str, str2, null, 8, null);
    }

    public final File removeSuffix(File file) {
        return removeSuffix$default(this, file, (String) null, false, 6, (Object) null);
    }

    public final File removeSuffix(File file, String str) {
        return removeSuffix$default(this, file, str, false, 4, (Object) null);
    }

    public final String removeSuffix(String str) {
        return removeSuffix$default(this, str, (String) null, false, 6, (Object) null);
    }

    public final String removeSuffix(String str, String str2) {
        return removeSuffix$default(this, str, str2, false, 4, (Object) null);
    }

    public final void writeTo(byte[] bArr, File file) throws IOException {
        writeTo$default(this, bArr, file, false, 4, null);
    }

    private FileUtil() {
    }

    private final void mkdir(File file, boolean createParents) throws IOException {
        if ((createParents ? file.mkdirs() : file.mkdir()) || file.exists()) {
            return;
        }
        throw new IOException("Failed to create directory \"" + file + Typography.quote);
    }

    private final int getStartOfSuffix(String fileName, String separator, boolean firstOccurrence) {
        String str = fileName;
        return firstOccurrence ? StringsKt.indexOf$default((CharSequence) str, separator, 0, false, 6, (Object) null) : StringsKt.lastIndexOf$default((CharSequence) str, separator, 0, false, 6, (Object) null);
    }

    public final void mkdir(File file) throws IOException {
        Intrinsics.checkParameterIsNotNull(file, "file");
        mkdir(file, false);
    }

    public final void mkdirs(File file) throws IOException {
        Intrinsics.checkParameterIsNotNull(file, "file");
        mkdir(file, true);
    }

    public final void delete(File file) throws IOException {
        Intrinsics.checkParameterIsNotNull(file, "file");
        if (file.delete() || !file.exists()) {
            return;
        }
        if (file.isDirectory()) {
            throw new IOException("Failed to delete directory \"" + file + "\". Make sure that is is empty");
        }
        throw new IOException("Failed to deleted file \"" + file + Typography.quote);
    }

    public final void deleteRecursively(File file) throws IOException {
        File[] fileArrListFiles;
        Intrinsics.checkParameterIsNotNull(file, "file");
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File it : fileArrListFiles) {
                FileUtil fileUtil = INSTANCE;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                fileUtil.deleteRecursively(it);
            }
        }
        delete(file);
    }

    public static /* synthetic */ String getSuffix$default(FileUtil fileUtil, File file, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            str = SUFFIX_SEPARATOR;
        }
        if ((i & 4) != 0) {
            z = true;
        }
        return fileUtil.getSuffix(file, str, z);
    }

    public final String getSuffix(File file, String separator, boolean firstOccurrence) {
        Intrinsics.checkParameterIsNotNull(file, "file");
        Intrinsics.checkParameterIsNotNull(separator, "separator");
        String name = file.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "file.name");
        return getSuffix(name, separator, firstOccurrence);
    }

    public static /* synthetic */ String getSuffix$default(FileUtil fileUtil, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = SUFFIX_SEPARATOR;
        }
        if ((i & 4) != 0) {
            z = true;
        }
        return fileUtil.getSuffix(str, str2, z);
    }

    public final String getSuffix(String fileName, String separator, boolean firstOccurrence) {
        Intrinsics.checkParameterIsNotNull(fileName, "fileName");
        Intrinsics.checkParameterIsNotNull(separator, "separator");
        int startOfSuffix = getStartOfSuffix(fileName, separator, firstOccurrence);
        if (startOfSuffix == -1) {
            return null;
        }
        String strSubstring = fileName.substring(startOfSuffix + separator.length());
        Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    public static /* synthetic */ File removeSuffix$default(FileUtil fileUtil, File file, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            str = SUFFIX_SEPARATOR;
        }
        if ((i & 4) != 0) {
            z = true;
        }
        return fileUtil.removeSuffix(file, str, z);
    }

    public final File removeSuffix(File file, String separator, boolean firstOccurrence) {
        Intrinsics.checkParameterIsNotNull(file, "file");
        Intrinsics.checkParameterIsNotNull(separator, "separator");
        String parent = file.getParent();
        String name = file.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "file.name");
        return new File(parent, removeSuffix(name, separator, firstOccurrence));
    }

    public static /* synthetic */ String removeSuffix$default(FileUtil fileUtil, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = SUFFIX_SEPARATOR;
        }
        if ((i & 4) != 0) {
            z = true;
        }
        return fileUtil.removeSuffix(str, str2, z);
    }

    public final String removeSuffix(String fileName, String separator, boolean firstOccurrence) {
        Intrinsics.checkParameterIsNotNull(fileName, "fileName");
        Intrinsics.checkParameterIsNotNull(separator, "separator");
        int startOfSuffix = getStartOfSuffix(fileName, separator, firstOccurrence);
        if (startOfSuffix == -1) {
            return fileName;
        }
        String strSubstring = fileName.substring(0, startOfSuffix);
        Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ File appendSuffix$default(FileUtil fileUtil, File file, String str, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = SUFFIX_SEPARATOR;
        }
        return fileUtil.appendSuffix(file, str, str2);
    }

    public final File appendSuffix(File file, String suffix, String separator) {
        Intrinsics.checkParameterIsNotNull(file, "file");
        Intrinsics.checkParameterIsNotNull(suffix, "suffix");
        Intrinsics.checkParameterIsNotNull(separator, "separator");
        String parent = file.getParent();
        String name = file.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "file.name");
        return new File(parent, appendSuffix(name, suffix, separator));
    }

    public static /* synthetic */ String appendSuffix$default(FileUtil fileUtil, String str, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = SUFFIX_SEPARATOR;
        }
        return fileUtil.appendSuffix(str, str2, str3);
    }

    public final String appendSuffix(String fileName, String suffix, String separator) {
        Intrinsics.checkParameterIsNotNull(fileName, "fileName");
        Intrinsics.checkParameterIsNotNull(suffix, "suffix");
        Intrinsics.checkParameterIsNotNull(separator, "separator");
        if (StringsKt.endsWith$default(fileName, separator, false, 2, (Object) null) || StringsKt.startsWith$default(suffix, separator, false, 2, (Object) null)) {
            return fileName + suffix;
        }
        return fileName + separator + suffix;
    }

    public static /* synthetic */ File getUniqueFile$default(FileUtil fileUtil, File file, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str = SUFFIX_SEPARATOR;
        }
        if ((i & 4) != 0) {
            str2 = null;
        }
        return fileUtil.getUniqueFile(file, str, str2);
    }

    public final File getUniqueFile(File file, String separator, String suffix) {
        Intrinsics.checkParameterIsNotNull(file, "file");
        Intrinsics.checkParameterIsNotNull(separator, "separator");
        String parent = file.getParent();
        File file2 = new File(file.getParent());
        String name = file.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "file.name");
        return new File(parent, getUniqueFileName(file2, name, separator, suffix));
    }

    public static /* synthetic */ String getUniqueFileName$default(FileUtil fileUtil, File file, String str, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = SUFFIX_SEPARATOR;
        }
        if ((i & 8) != 0) {
            str3 = null;
        }
        return fileUtil.getUniqueFileName(file, str, str2, str3);
    }

    public final String getUniqueFileName(File directory, String fileName, String separator, String suffix) {
        String strAppendSuffix;
        String strAppendSuffix2;
        Intrinsics.checkParameterIsNotNull(directory, "directory");
        Intrinsics.checkParameterIsNotNull(fileName, "fileName");
        Intrinsics.checkParameterIsNotNull(separator, "separator");
        Condition.INSTANCE.ensureFileIsDirectory(directory, directory.getAbsolutePath() + " is not a directory");
        Condition.INSTANCE.ensureNotEmpty(fileName, "The file name may not be empty");
        if (suffix == null || (strAppendSuffix = INSTANCE.appendSuffix(fileName, suffix, separator)) == null) {
            strAppendSuffix = fileName;
        }
        int i = 2;
        while (true) {
            String[] list = directory.list();
            String str = null;
            if (list != null) {
                int length = list.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    String str2 = list[i2];
                    if (Intrinsics.areEqual(str2, strAppendSuffix)) {
                        str = str2;
                        break;
                    }
                    i2++;
                }
            }
            if (str == null) {
                return strAppendSuffix;
            }
            strAppendSuffix = fileName + i;
            if (suffix != null && (strAppendSuffix2 = INSTANCE.appendSuffix(strAppendSuffix, suffix, separator)) != null) {
                strAppendSuffix = strAppendSuffix2;
            }
            i++;
        }
    }

    public static /* synthetic */ void create$default(FileUtil fileUtil, File file, boolean z, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            z = false;
        }
        fileUtil.create(file, z);
    }

    public final void create(File file, boolean overwrite) throws IOException {
        Intrinsics.checkParameterIsNotNull(file, "file");
        if (file.createNewFile()) {
            return;
        }
        if (overwrite) {
            try {
                delete(file);
                create(file, false);
                return;
            } catch (IOException unused) {
                throw new IOException("Failed to overwrite file \"" + file + Typography.quote);
            }
        }
        throw new IOException("Failed to create file \"" + file + Typography.quote);
    }

    public static /* synthetic */ void writeTo$default(FileUtil fileUtil, byte[] bArr, File file, boolean z, int i, Object obj) throws IOException {
        if ((i & 4) != 0) {
            z = false;
        }
        fileUtil.writeTo(bArr, file, z);
    }

    public final void writeTo(byte[] data, File destination, boolean overwrite) throws IOException {
        Intrinsics.checkParameterIsNotNull(data, "data");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        create(destination, overwrite);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(destination));
        try {
            BufferedOutputStream bufferedOutputStream2 = bufferedOutputStream;
            bufferedOutputStream2.write(data);
            bufferedOutputStream2.flush();
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(bufferedOutputStream, null);
        } finally {
        }
    }

    public static /* synthetic */ void copy$default(FileUtil fileUtil, File file, File file2, boolean z, int i, Object obj) throws IOException {
        if ((i & 4) != 0) {
            z = false;
        }
        fileUtil.copy(file, file2, z);
    }

    public final void copy(File source, File destination, boolean overwrite) throws IOException {
        Intrinsics.checkParameterIsNotNull(source, "source");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Condition.INSTANCE.ensureFileIsNoDirectory(source, "The source must exist and must not be a directory");
        create(destination, overwrite);
        FileOutputStream fileInputStream = new FileInputStream(source);
        try {
            FileInputStream fileInputStream2 = fileInputStream;
            fileInputStream = new FileOutputStream(destination);
            try {
                FileChannel channel = fileInputStream2.getChannel();
                channel.transferTo(0L, channel.size(), fileInputStream.getChannel());
                CloseableKt.closeFinally(fileInputStream, null);
                CloseableKt.closeFinally(fileInputStream, null);
            } finally {
            }
        } finally {
        }
    }
}
