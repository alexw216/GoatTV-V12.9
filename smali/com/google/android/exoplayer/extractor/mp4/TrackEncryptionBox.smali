.class public final Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
.super Ljava/lang/Object;
.source "TrackEncryptionBox.java"


# instance fields
.field public final initializationVectorSize:I

.field public final isEncrypted:Z

.field public final keyId:[B


# direct methods
.method public constructor <init>(ZI[B)V
    .locals 0
    .param p1, "isEncrypted"    # Z
    .param p2, "initializationVectorSize"    # I
    .param p3, "keyId"    # [B

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->isEncrypted:Z

    .line 46
    iput p2, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    .line 47
    iput-object p3, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->keyId:[B

    .line 48
    return-void
.end method
