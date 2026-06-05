package de.mrapp.util;

import kotlin.Metadata;

/* JADX INFO: compiled from: FlagUtil.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004J\u0016\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\f"}, d2 = {"Lde/mrapp/util/FlagUtil;", "", "()V", "isFlagSet", "", "flags", "", "flag", "setFlag", "set", "toggleFlag", "unsetFlag", "JavaUtil"}, k = 1, mv = {1, 1, 16})
public final class FlagUtil {
    public static final FlagUtil INSTANCE = new FlagUtil();

    public final boolean isFlagSet(int flags, int flag) {
        return (flags & flag) == flag;
    }

    private FlagUtil() {
    }

    public final int setFlag(int flags, int flag) {
        return !isFlagSet(flags, flag) ? flags | flag : flags;
    }

    public final int setFlag(int flags, int flag, boolean set) {
        return set ? setFlag(flags, flag) : unsetFlag(flags, flag);
    }

    public final int unsetFlag(int flags, int flag) {
        return isFlagSet(flags, flag) ? flags ^ flag : flags;
    }

    public final int toggleFlag(int flags, int flag) {
        return isFlagSet(flags, flag) ? unsetFlag(flags, flag) : setFlag(flags, flag);
    }
}
