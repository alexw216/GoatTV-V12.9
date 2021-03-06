.class Lio/vov/vitamio/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vov/vitamio/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mData:Landroid/os/Bundle;

.field private mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

.field final synthetic this$0:Lio/vov/vitamio/MediaPlayer;


# direct methods
.method public constructor <init>(Lio/vov/vitamio/MediaPlayer;Lio/vov/vitamio/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mp"    # Lio/vov/vitamio/MediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1666
    iput-object p1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    .line 1667
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1668
    iput-object p2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 1669
    return-void
.end method

.method private onBufferingUpdate(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 1708
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1709
    .local v0, "percent":I
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$500(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1710
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$500(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v1

    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v3}, Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lio/vov/vitamio/MediaPlayer;I)V

    .line 1711
    :cond_0
    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$000(Lio/vov/vitamio/MediaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1713
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v1, v4}, Lio/vov/vitamio/MediaPlayer;->access$002(Lio/vov/vitamio/MediaPlayer;Z)Z

    .line 1714
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$200(Lio/vov/vitamio/MediaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1716
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$300(Lio/vov/vitamio/MediaPlayer;)V

    .line 1717
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v1, v4}, Lio/vov/vitamio/MediaPlayer;->access$202(Lio/vov/vitamio/MediaPlayer;Z)Z

    .line 1719
    :cond_1
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$400(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1721
    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v1}, Lio/vov/vitamio/MediaPlayer;->access$400(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    move-result-object v1

    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    const/16 v3, 0x2be

    invoke-interface {v1, v2, v3, v0}, Lio/vov/vitamio/MediaPlayer$OnInfoListener;->onInfo(Lio/vov/vitamio/MediaPlayer;II)Z

    .line 1724
    :cond_2
    return-void
.end method

.method private onInfo(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1676
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 1702
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v0}, Lio/vov/vitamio/MediaPlayer;->access$400(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1703
    iget-object v0, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v0}, Lio/vov/vitamio/MediaPlayer;->access$400(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lio/vov/vitamio/MediaPlayer$OnInfoListener;->onInfo(Lio/vov/vitamio/MediaPlayer;II)Z

    .line 1705
    :cond_1
    return-void

    .line 1680
    :pswitch_0
    iget-object v0, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v0, v2}, Lio/vov/vitamio/MediaPlayer;->access$002(Lio/vov/vitamio/MediaPlayer;Z)Z

    .line 1681
    iget-object v0, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v0}, Lio/vov/vitamio/MediaPlayer;->access$100(Lio/vov/vitamio/MediaPlayer;)V

    .line 1684
    iget-object v0, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v0, v2}, Lio/vov/vitamio/MediaPlayer;->access$202(Lio/vov/vitamio/MediaPlayer;Z)Z

    goto :goto_0

    .line 1691
    :pswitch_1
    iget-object v0, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v0, v1}, Lio/vov/vitamio/MediaPlayer;->access$002(Lio/vov/vitamio/MediaPlayer;Z)Z

    .line 1692
    iget-object v0, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v0}, Lio/vov/vitamio/MediaPlayer;->access$200(Lio/vov/vitamio/MediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v0}, Lio/vov/vitamio/MediaPlayer;->access$300(Lio/vov/vitamio/MediaPlayer;)V

    .line 1695
    iget-object v0, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v0, v1}, Lio/vov/vitamio/MediaPlayer;->access$202(Lio/vov/vitamio/MediaPlayer;Z)Z

    goto :goto_0

    .line 1676
    nop

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1728
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-nez v2, :cond_1

    .line 1813
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1732
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1737
    :sswitch_1
    const-string v2, " for dedao MEDIA_ERROR_TIMED_OUT (%d, %d)"

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1740
    :sswitch_2
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$600(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1741
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$600(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-interface {v2, v3}, Lio/vov/vitamio/MediaPlayer$OnPreparedListener;->onPrepared(Lio/vov/vitamio/MediaPlayer;)V

    goto :goto_0

    .line 1744
    :sswitch_3
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$700(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1745
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$700(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-interface {v2, v3}, Lio/vov/vitamio/MediaPlayer$OnCompletionListener;->onCompletion(Lio/vov/vitamio/MediaPlayer;)V

    .line 1746
    :cond_2
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2, v6}, Lio/vov/vitamio/MediaPlayer;->access$800(Lio/vov/vitamio/MediaPlayer;Z)V

    goto :goto_0

    .line 1749
    :sswitch_4
    invoke-direct {p0, p1}, Lio/vov/vitamio/MediaPlayer$EventHandler;->onBufferingUpdate(Landroid/os/Message;)V

    goto :goto_0

    .line 1752
    :sswitch_5
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v2}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1753
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2, v5}, Lio/vov/vitamio/MediaPlayer;->access$800(Lio/vov/vitamio/MediaPlayer;Z)V

    .line 1754
    :cond_3
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$900(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1755
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$900(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-interface {v2, v3}, Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lio/vov/vitamio/MediaPlayer;)V

    goto/16 :goto_0

    .line 1758
    :sswitch_6
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1000(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1759
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1000(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lio/vov/vitamio/MediaPlayer;II)V

    goto/16 :goto_0

    .line 1762
    :sswitch_7
    const-string v2, "Error (%d, %d)"

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1763
    const/4 v1, 0x0

    .line 1764
    .local v1, "error_was_handled":Z
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1100(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1765
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1100(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Lio/vov/vitamio/MediaPlayer$OnErrorListener;->onError(Lio/vov/vitamio/MediaPlayer;II)Z

    move-result v1

    .line 1766
    :cond_4
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$700(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    move-result-object v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    .line 1767
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$700(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-interface {v2, v3}, Lio/vov/vitamio/MediaPlayer$OnCompletionListener;->onCompletion(Lio/vov/vitamio/MediaPlayer;)V

    .line 1768
    :cond_5
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2, v6}, Lio/vov/vitamio/MediaPlayer;->access$800(Lio/vov/vitamio/MediaPlayer;Z)V

    goto/16 :goto_0

    .line 1771
    .end local v1    # "error_was_handled":Z
    :sswitch_8
    const-string v2, "Info (%d, %d)"

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lio/vov/vitamio/utils/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1772
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$400(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1773
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$400(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Lio/vov/vitamio/MediaPlayer$OnInfoListener;->onInfo(Lio/vov/vitamio/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 1778
    :sswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mData:Landroid/os/Bundle;

    .line 1779
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mData:Landroid/os/Bundle;

    const-string v3, "sub_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 1780
    const-string v2, "Subtitle : %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mData:Landroid/os/Bundle;

    const-string v5, "sub_string"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lio/vov/vitamio/utils/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1781
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1200(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1782
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1200(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mData:Landroid/os/Bundle;

    const-string v4, "sub_string"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;->onTimedText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1783
    :cond_6
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mData:Landroid/os/Bundle;

    const-string v3, "sub_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1784
    const-string v2, "Subtitle : bitmap"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lio/vov/vitamio/utils/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1785
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1200(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1786
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1200(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mData:Landroid/os/Bundle;

    const-string v4, "sub_bytes"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;->onTimedTextUpdate([BII)V

    goto/16 :goto_0

    .line 1790
    :sswitch_a
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1300(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1791
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "caching_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1792
    .local v0, "cacheType":I
    if-ne v0, v5, :cond_7

    .line 1793
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1300(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "caching_info"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;->onCachingNotAvailable(Lio/vov/vitamio/MediaPlayer;I)V

    goto/16 :goto_0

    .line 1794
    :cond_7
    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 1795
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1300(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "caching_segment"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;->onCachingUpdate(Lio/vov/vitamio/MediaPlayer;[J)V

    goto/16 :goto_0

    .line 1796
    :cond_8
    const/4 v2, 0x4

    if-ne v0, v2, :cond_9

    .line 1797
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1300(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "caching_info"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;->onCachingSpeed(Lio/vov/vitamio/MediaPlayer;I)V

    goto/16 :goto_0

    .line 1798
    :cond_9
    if-ne v0, v4, :cond_a

    .line 1799
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1300(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-interface {v2, v3}, Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;->onCachingStart(Lio/vov/vitamio/MediaPlayer;)V

    goto/16 :goto_0

    .line 1800
    :cond_a
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 1801
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1300(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-interface {v2, v3}, Lio/vov/vitamio/MediaPlayer$OnCachingUpdateListener;->onCachingComplete(Lio/vov/vitamio/MediaPlayer;)V

    goto/16 :goto_0

    .line 1808
    .end local v0    # "cacheType":I
    :sswitch_b
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1400(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnHWRenderFailedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1809
    iget-object v2, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->this$0:Lio/vov/vitamio/MediaPlayer;

    invoke-static {v2}, Lio/vov/vitamio/MediaPlayer;->access$1400(Lio/vov/vitamio/MediaPlayer;)Lio/vov/vitamio/MediaPlayer$OnHWRenderFailedListener;

    move-result-object v2

    invoke-interface {v2}, Lio/vov/vitamio/MediaPlayer$OnHWRenderFailedListener;->onFailed()V

    goto/16 :goto_0

    .line 1732
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e -> :sswitch_1
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x64 -> :sswitch_7
        0xc8 -> :sswitch_8
        0x12c -> :sswitch_0
        0x190 -> :sswitch_b
        0x3e8 -> :sswitch_9
        0x7d0 -> :sswitch_a
    .end sparse-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 1672
    const/4 v0, 0x0

    iput-object v0, p0, Lio/vov/vitamio/MediaPlayer$EventHandler;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 1673
    return-void
.end method
