.class Lcom/gemini/play/MyBackPreviewView$2;
.super Ljava/lang/Object;
.source "MyBackPreviewView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyBackPreviewView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyBackPreviewView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyBackPreviewView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyBackPreviewView;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/gemini/play/MyBackPreviewView$2;->this$0:Lcom/gemini/play/MyBackPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/gemini/play/MyBackPreviewView$2;->this$0:Lcom/gemini/play/MyBackPreviewView;

    sget-object v1, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyBackPreviewView;->showPreviewListDay(Ljava/lang/String;I)V

    .line 105
    iget-object v0, p0, Lcom/gemini/play/MyBackPreviewView$2;->this$0:Lcom/gemini/play/MyBackPreviewView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackPreviewView;->listFocus()V

    .line 106
    return-void
.end method
