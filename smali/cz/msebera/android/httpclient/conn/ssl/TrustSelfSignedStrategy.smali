.class public Lcz/msebera/android/httpclient/conn/ssl/TrustSelfSignedStrategy;
.super Ljava/lang/Object;
.source "TrustSelfSignedStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 42
    array-length v1, p1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
