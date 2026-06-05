package com.mikepenz.aboutlibraries.entity;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: Library.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b$\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0086\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u008f\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0003¢\u0006\u0002\u0010\u0013J\u0011\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0000H\u0096\u0002J\t\u00106\u001a\u00020\u0003HÆ\u0003J\t\u00107\u001a\u00020\u0003HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\t\u00109\u001a\u00020\u0005HÆ\u0003J\t\u0010:\u001a\u00020\u0003HÆ\u0003J\t\u0010;\u001a\u00020\u0003HÆ\u0003J\t\u0010<\u001a\u00020\u0005HÆ\u0003J\t\u0010=\u001a\u00020\u0005HÆ\u0003J\t\u0010>\u001a\u00020\u0003HÆ\u0003J\t\u0010?\u001a\u00020\u0003HÆ\u0003J\t\u0010@\u001a\u00020\u0003HÆ\u0003J\t\u0010A\u001a\u00020\u0003HÆ\u0003J\t\u0010B\u001a\u00020\u0003HÆ\u0003J\t\u0010C\u001a\u00020\u0003HÆ\u0003J\u0097\u0001\u0010D\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u0003HÆ\u0001J\u000e\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u0000J\u0013\u0010H\u001a\u00020\u00052\b\u00105\u001a\u0004\u0018\u00010IHÖ\u0003J\t\u0010J\u001a\u000204HÖ\u0001J\u0012\u0010K\u001a\u0004\u0018\u00010\u00032\u0006\u0010L\u001a\u00020\u0003H\u0002J\t\u0010M\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0015\"\u0004\b\u0019\u0010\u0017R\u001a\u0010\u0012\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0015\"\u0004\b\u001b\u0010\u0017R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0015\"\u0004\b\u001d\u0010\u0017R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u001e\"\u0004\b!\u0010 R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u001e\"\u0004\b\"\u0010 R\u001a\u0010\f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0015\"\u0004\b$\u0010\u0017R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0015\"\u0004\b&\u0010\u0017R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0015\"\u0004\b(\u0010\u0017R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0015\"\u0004\b*\u0010\u0017R\u001a\u0010\r\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0015\"\u0004\b,\u0010\u0017R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0015\"\u0004\b2\u0010\u0017¨\u0006N"}, d2 = {"Lcom/mikepenz/aboutlibraries/entity/Library;", "", "definedName", "", "isInternal", "", "isPlugin", "libraryName", "author", "authorWebsite", "libraryDescription", "libraryVersion", "libraryArtifactId", "libraryWebsite", "license", "Lcom/mikepenz/aboutlibraries/entity/License;", "isOpenSource", "repositoryLink", "classPath", "(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mikepenz/aboutlibraries/entity/License;ZLjava/lang/String;Ljava/lang/String;)V", "getAuthor", "()Ljava/lang/String;", "setAuthor", "(Ljava/lang/String;)V", "getAuthorWebsite", "setAuthorWebsite", "getClassPath", "setClassPath", "getDefinedName", "setDefinedName", "()Z", "setInternal", "(Z)V", "setOpenSource", "setPlugin", "getLibraryArtifactId", "setLibraryArtifactId", "getLibraryDescription", "setLibraryDescription", "getLibraryName", "setLibraryName", "getLibraryVersion", "setLibraryVersion", "getLibraryWebsite", "setLibraryWebsite", "getLicense", "()Lcom/mikepenz/aboutlibraries/entity/License;", "setLicense", "(Lcom/mikepenz/aboutlibraries/entity/License;)V", "getRepositoryLink", "setRepositoryLink", "compareTo", "", "other", "component1", "component10", "component11", "component12", "component13", "component14", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "enchantBy", "", "enchantWith", "equals", "", "hashCode", "ifNotEmpty", "receiver", "toString", "aboutlibraries-core"}, k = 1, mv = {1, 1, 16})
public final /* data */ class Library implements Comparable<Library> {
    private String author;
    private String authorWebsite;
    private String classPath;
    private String definedName;
    private boolean isInternal;
    private boolean isOpenSource;
    private boolean isPlugin;
    private String libraryArtifactId;
    private String libraryDescription;
    private String libraryName;
    private String libraryVersion;
    private String libraryWebsite;
    private License license;
    private String repositoryLink;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDefinedName() {
        return this.definedName;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getLibraryWebsite() {
        return this.libraryWebsite;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final License getLicense() {
        return this.license;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final boolean getIsOpenSource() {
        return this.isOpenSource;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getRepositoryLink() {
        return this.repositoryLink;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getClassPath() {
        return this.classPath;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIsInternal() {
        return this.isInternal;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getIsPlugin() {
        return this.isPlugin;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getLibraryName() {
        return this.libraryName;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getAuthor() {
        return this.author;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getAuthorWebsite() {
        return this.authorWebsite;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getLibraryDescription() {
        return this.libraryDescription;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getLibraryVersion() {
        return this.libraryVersion;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getLibraryArtifactId() {
        return this.libraryArtifactId;
    }

    public final Library copy(String definedName, boolean isInternal, boolean isPlugin, String libraryName, String author, String authorWebsite, String libraryDescription, String libraryVersion, String libraryArtifactId, String libraryWebsite, License license, boolean isOpenSource, String repositoryLink, String classPath) {
        Intrinsics.checkParameterIsNotNull(definedName, "definedName");
        Intrinsics.checkParameterIsNotNull(libraryName, "libraryName");
        Intrinsics.checkParameterIsNotNull(author, "author");
        Intrinsics.checkParameterIsNotNull(authorWebsite, "authorWebsite");
        Intrinsics.checkParameterIsNotNull(libraryDescription, "libraryDescription");
        Intrinsics.checkParameterIsNotNull(libraryVersion, "libraryVersion");
        Intrinsics.checkParameterIsNotNull(libraryArtifactId, "libraryArtifactId");
        Intrinsics.checkParameterIsNotNull(libraryWebsite, "libraryWebsite");
        Intrinsics.checkParameterIsNotNull(repositoryLink, "repositoryLink");
        Intrinsics.checkParameterIsNotNull(classPath, "classPath");
        return new Library(definedName, isInternal, isPlugin, libraryName, author, authorWebsite, libraryDescription, libraryVersion, libraryArtifactId, libraryWebsite, license, isOpenSource, repositoryLink, classPath);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Library)) {
            return false;
        }
        Library library = (Library) other;
        return Intrinsics.areEqual(this.definedName, library.definedName) && this.isInternal == library.isInternal && this.isPlugin == library.isPlugin && Intrinsics.areEqual(this.libraryName, library.libraryName) && Intrinsics.areEqual(this.author, library.author) && Intrinsics.areEqual(this.authorWebsite, library.authorWebsite) && Intrinsics.areEqual(this.libraryDescription, library.libraryDescription) && Intrinsics.areEqual(this.libraryVersion, library.libraryVersion) && Intrinsics.areEqual(this.libraryArtifactId, library.libraryArtifactId) && Intrinsics.areEqual(this.libraryWebsite, library.libraryWebsite) && Intrinsics.areEqual(this.license, library.license) && this.isOpenSource == library.isOpenSource && Intrinsics.areEqual(this.repositoryLink, library.repositoryLink) && Intrinsics.areEqual(this.classPath, library.classPath);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v45 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v2 */
    public int hashCode() {
        String str = this.definedName;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        boolean z = this.isInternal;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int i = (iHashCode + r2) * 31;
        boolean z2 = this.isPlugin;
        ?? r22 = z2;
        if (z2) {
            r22 = 1;
        }
        int i2 = (i + r22) * 31;
        String str2 = this.libraryName;
        int iHashCode2 = (i2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.author;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.authorWebsite;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.libraryDescription;
        int iHashCode5 = (iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.libraryVersion;
        int iHashCode6 = (iHashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.libraryArtifactId;
        int iHashCode7 = (iHashCode6 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.libraryWebsite;
        int iHashCode8 = (iHashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31;
        License license = this.license;
        int iHashCode9 = (iHashCode8 + (license != null ? license.hashCode() : 0)) * 31;
        boolean z3 = this.isOpenSource;
        int i3 = (iHashCode9 + (z3 ? 1 : z3)) * 31;
        String str9 = this.repositoryLink;
        int iHashCode10 = (i3 + (str9 != null ? str9.hashCode() : 0)) * 31;
        String str10 = this.classPath;
        return iHashCode10 + (str10 != null ? str10.hashCode() : 0);
    }

    public String toString() {
        return "Library(definedName=" + this.definedName + ", isInternal=" + this.isInternal + ", isPlugin=" + this.isPlugin + ", libraryName=" + this.libraryName + ", author=" + this.author + ", authorWebsite=" + this.authorWebsite + ", libraryDescription=" + this.libraryDescription + ", libraryVersion=" + this.libraryVersion + ", libraryArtifactId=" + this.libraryArtifactId + ", libraryWebsite=" + this.libraryWebsite + ", license=" + this.license + ", isOpenSource=" + this.isOpenSource + ", repositoryLink=" + this.repositoryLink + ", classPath=" + this.classPath + ")";
    }

    public Library(String definedName, boolean z, boolean z2, String libraryName, String author, String authorWebsite, String libraryDescription, String libraryVersion, String libraryArtifactId, String libraryWebsite, License license, boolean z3, String repositoryLink, String classPath) {
        Intrinsics.checkParameterIsNotNull(definedName, "definedName");
        Intrinsics.checkParameterIsNotNull(libraryName, "libraryName");
        Intrinsics.checkParameterIsNotNull(author, "author");
        Intrinsics.checkParameterIsNotNull(authorWebsite, "authorWebsite");
        Intrinsics.checkParameterIsNotNull(libraryDescription, "libraryDescription");
        Intrinsics.checkParameterIsNotNull(libraryVersion, "libraryVersion");
        Intrinsics.checkParameterIsNotNull(libraryArtifactId, "libraryArtifactId");
        Intrinsics.checkParameterIsNotNull(libraryWebsite, "libraryWebsite");
        Intrinsics.checkParameterIsNotNull(repositoryLink, "repositoryLink");
        Intrinsics.checkParameterIsNotNull(classPath, "classPath");
        this.definedName = definedName;
        this.isInternal = z;
        this.isPlugin = z2;
        this.libraryName = libraryName;
        this.author = author;
        this.authorWebsite = authorWebsite;
        this.libraryDescription = libraryDescription;
        this.libraryVersion = libraryVersion;
        this.libraryArtifactId = libraryArtifactId;
        this.libraryWebsite = libraryWebsite;
        this.license = license;
        this.isOpenSource = z3;
        this.repositoryLink = repositoryLink;
        this.classPath = classPath;
    }

    public final String getDefinedName() {
        return this.definedName;
    }

    public final void setDefinedName(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.definedName = str;
    }

    public final boolean isInternal() {
        return this.isInternal;
    }

    public final void setInternal(boolean z) {
        this.isInternal = z;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ Library(String str, boolean z, boolean z2, String str2, String str3, String str4, String str5, String str6, String str7, String str8, License license, boolean z3, String str9, String str10, int i, DefaultConstructorMarker defaultConstructorMarker) {
        License license2;
        boolean z4 = (i & 2) != 0 ? false : z;
        boolean z5 = (i & 4) != 0 ? false : z2;
        String str11 = (i & 16) != 0 ? "" : str3;
        String str12 = (i & 32) != 0 ? "" : str4;
        String str13 = (i & 64) != 0 ? "" : str5;
        String str14 = (i & 128) != 0 ? "" : str6;
        String str15 = (i & 256) != 0 ? "" : str7;
        String str16 = (i & 512) != 0 ? "" : str8;
        if ((i & 1024) != 0) {
            license2 = null;
        } else {
            license2 = license;
        }
        this(str, z4, z5, str2, str11, str12, str13, str14, str15, str16, license2, (i & 2048) != 0 ? true : z3, (i & 4096) != 0 ? "" : str9, (i & 8192) != 0 ? "" : str10);
    }

    public final boolean isPlugin() {
        return this.isPlugin;
    }

    public final void setPlugin(boolean z) {
        this.isPlugin = z;
    }

    public final String getLibraryName() {
        return this.libraryName;
    }

    public final void setLibraryName(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.libraryName = str;
    }

    public final String getAuthor() {
        return this.author;
    }

    public final void setAuthor(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.author = str;
    }

    public final String getAuthorWebsite() {
        return this.authorWebsite;
    }

    public final void setAuthorWebsite(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.authorWebsite = str;
    }

    public final String getLibraryDescription() {
        return this.libraryDescription;
    }

    public final void setLibraryDescription(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.libraryDescription = str;
    }

    public final String getLibraryVersion() {
        return this.libraryVersion;
    }

    public final void setLibraryVersion(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.libraryVersion = str;
    }

    public final String getLibraryArtifactId() {
        return this.libraryArtifactId;
    }

    public final void setLibraryArtifactId(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.libraryArtifactId = str;
    }

    public final String getLibraryWebsite() {
        return this.libraryWebsite;
    }

    public final void setLibraryWebsite(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.libraryWebsite = str;
    }

    public final License getLicense() {
        return this.license;
    }

    public final void setLicense(License license) {
        this.license = license;
    }

    public final boolean isOpenSource() {
        return this.isOpenSource;
    }

    public final void setOpenSource(boolean z) {
        this.isOpenSource = z;
    }

    public final String getRepositoryLink() {
        return this.repositoryLink;
    }

    public final void setRepositoryLink(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.repositoryLink = str;
    }

    public final String getClassPath() {
        return this.classPath;
    }

    public final void setClassPath(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.classPath = str;
    }

    @Override // java.lang.Comparable
    public int compareTo(Library other) {
        Intrinsics.checkParameterIsNotNull(other, "other");
        return StringsKt.compareTo(this.libraryName, other.libraryName, true);
    }

    private final String ifNotEmpty(String receiver) {
        if (receiver.length() == 0) {
            return null;
        }
        return receiver;
    }

    public final void enchantBy(Library enchantWith) {
        Intrinsics.checkParameterIsNotNull(enchantWith, "enchantWith");
        String strIfNotEmpty = ifNotEmpty(enchantWith.libraryName);
        if (strIfNotEmpty == null) {
            strIfNotEmpty = this.libraryName;
        }
        this.libraryName = strIfNotEmpty;
        String strIfNotEmpty2 = ifNotEmpty(enchantWith.author);
        if (strIfNotEmpty2 == null) {
            strIfNotEmpty2 = this.author;
        }
        this.author = strIfNotEmpty2;
        String strIfNotEmpty3 = ifNotEmpty(enchantWith.authorWebsite);
        if (strIfNotEmpty3 == null) {
            strIfNotEmpty3 = this.authorWebsite;
        }
        this.authorWebsite = strIfNotEmpty3;
        String strIfNotEmpty4 = ifNotEmpty(enchantWith.libraryDescription);
        if (strIfNotEmpty4 == null) {
            strIfNotEmpty4 = this.libraryDescription;
        }
        this.libraryDescription = strIfNotEmpty4;
        String strIfNotEmpty5 = ifNotEmpty(enchantWith.libraryVersion);
        if (strIfNotEmpty5 == null) {
            strIfNotEmpty5 = this.libraryVersion;
        }
        this.libraryVersion = strIfNotEmpty5;
        String strIfNotEmpty6 = ifNotEmpty(enchantWith.libraryArtifactId);
        if (strIfNotEmpty6 == null) {
            strIfNotEmpty6 = this.libraryArtifactId;
        }
        this.libraryArtifactId = strIfNotEmpty6;
        String strIfNotEmpty7 = ifNotEmpty(enchantWith.libraryWebsite);
        if (strIfNotEmpty7 == null) {
            strIfNotEmpty7 = this.libraryWebsite;
        }
        this.libraryWebsite = strIfNotEmpty7;
        License license = enchantWith.license;
        if (license == null) {
            license = this.license;
        }
        this.license = license;
        this.isOpenSource = enchantWith.isOpenSource;
        String strIfNotEmpty8 = ifNotEmpty(enchantWith.repositoryLink);
        if (strIfNotEmpty8 == null) {
            strIfNotEmpty8 = this.repositoryLink;
        }
        this.repositoryLink = strIfNotEmpty8;
    }
}
