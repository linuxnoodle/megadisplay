package com.mikepenz.aboutlibraries.entity;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: License.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J;\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\fR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\n\"\u0004\b\u0014\u0010\f¨\u0006!"}, d2 = {"Lcom/mikepenz/aboutlibraries/entity/License;", "", "definedName", "", "licenseName", "licenseWebsite", "licenseShortDescription", "licenseDescription", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getDefinedName", "()Ljava/lang/String;", "setDefinedName", "(Ljava/lang/String;)V", "getLicenseDescription", "setLicenseDescription", "getLicenseName", "setLicenseName", "getLicenseShortDescription", "setLicenseShortDescription", "getLicenseWebsite", "setLicenseWebsite", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "aboutlibraries-core"}, k = 1, mv = {1, 1, 16})
public final /* data */ class License {
    private String definedName;
    private String licenseDescription;
    private String licenseName;
    private String licenseShortDescription;
    private String licenseWebsite;

    public static /* synthetic */ License copy$default(License license, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = license.definedName;
        }
        if ((i & 2) != 0) {
            str2 = license.licenseName;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = license.licenseWebsite;
        }
        String str7 = str3;
        if ((i & 8) != 0) {
            str4 = license.licenseShortDescription;
        }
        String str8 = str4;
        if ((i & 16) != 0) {
            str5 = license.licenseDescription;
        }
        return license.copy(str, str6, str7, str8, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDefinedName() {
        return this.definedName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getLicenseName() {
        return this.licenseName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getLicenseWebsite() {
        return this.licenseWebsite;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getLicenseShortDescription() {
        return this.licenseShortDescription;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getLicenseDescription() {
        return this.licenseDescription;
    }

    public final License copy(String definedName, String licenseName, String licenseWebsite, String licenseShortDescription, String licenseDescription) {
        Intrinsics.checkParameterIsNotNull(definedName, "definedName");
        Intrinsics.checkParameterIsNotNull(licenseName, "licenseName");
        Intrinsics.checkParameterIsNotNull(licenseWebsite, "licenseWebsite");
        Intrinsics.checkParameterIsNotNull(licenseShortDescription, "licenseShortDescription");
        Intrinsics.checkParameterIsNotNull(licenseDescription, "licenseDescription");
        return new License(definedName, licenseName, licenseWebsite, licenseShortDescription, licenseDescription);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof License)) {
            return false;
        }
        License license = (License) other;
        return Intrinsics.areEqual(this.definedName, license.definedName) && Intrinsics.areEqual(this.licenseName, license.licenseName) && Intrinsics.areEqual(this.licenseWebsite, license.licenseWebsite) && Intrinsics.areEqual(this.licenseShortDescription, license.licenseShortDescription) && Intrinsics.areEqual(this.licenseDescription, license.licenseDescription);
    }

    public int hashCode() {
        String str = this.definedName;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.licenseName;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.licenseWebsite;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.licenseShortDescription;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.licenseDescription;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public String toString() {
        return "License(definedName=" + this.definedName + ", licenseName=" + this.licenseName + ", licenseWebsite=" + this.licenseWebsite + ", licenseShortDescription=" + this.licenseShortDescription + ", licenseDescription=" + this.licenseDescription + ")";
    }

    public License(String definedName, String licenseName, String licenseWebsite, String licenseShortDescription, String licenseDescription) {
        Intrinsics.checkParameterIsNotNull(definedName, "definedName");
        Intrinsics.checkParameterIsNotNull(licenseName, "licenseName");
        Intrinsics.checkParameterIsNotNull(licenseWebsite, "licenseWebsite");
        Intrinsics.checkParameterIsNotNull(licenseShortDescription, "licenseShortDescription");
        Intrinsics.checkParameterIsNotNull(licenseDescription, "licenseDescription");
        this.definedName = definedName;
        this.licenseName = licenseName;
        this.licenseWebsite = licenseWebsite;
        this.licenseShortDescription = licenseShortDescription;
        this.licenseDescription = licenseDescription;
    }

    public final String getDefinedName() {
        return this.definedName;
    }

    public final String getLicenseDescription() {
        return this.licenseDescription;
    }

    public final String getLicenseName() {
        return this.licenseName;
    }

    public final String getLicenseShortDescription() {
        return this.licenseShortDescription;
    }

    public final String getLicenseWebsite() {
        return this.licenseWebsite;
    }

    public final void setDefinedName(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.definedName = str;
    }

    public final void setLicenseDescription(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.licenseDescription = str;
    }

    public final void setLicenseName(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.licenseName = str;
    }

    public final void setLicenseShortDescription(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.licenseShortDescription = str;
    }

    public final void setLicenseWebsite(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.licenseWebsite = str;
    }
}
