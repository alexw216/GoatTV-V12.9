.class Lcom/gemini/play/MyListView1$10;
.super Ljava/lang/Object;
.source "MyListView1.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyListView1;->showPlayList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyListView1;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyListView1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyListView1;

    .prologue
    .line 766
    iput-object p1, p0, Lcom/gemini/play/MyListView1$10;->this$0:Lcom/gemini/play/MyListView1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 768
    iget-object v0, p0, Lcom/gemini/play/MyListView1$10;->this$0:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView1;->clearAnimation()V

    .line 769
    iget-object v0, p0, Lcom/gemini/play/MyListView1$10;->this$0:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView1;->show_ad_image()V

    .line 770
    iget-object v0, p0, Lcom/gemini/play/MyListView1$10;->this$0:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView1;->listFocus()V

    .line 771
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 777
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 783
    return-void
.end method
