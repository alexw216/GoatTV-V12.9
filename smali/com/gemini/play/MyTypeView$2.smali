.class Lcom/gemini/play/MyTypeView$2;
.super Ljava/lang/Object;
.source "MyTypeView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyTypeView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyTypeView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyTypeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyTypeView;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/gemini/play/MyTypeView$2;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    iget-object v3, p0, Lcom/gemini/play/MyTypeView$2;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-static {v3}, Lcom/gemini/play/MyTypeView;->access$000(Lcom/gemini/play/MyTypeView;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 116
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "ItemID"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->typeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "n":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/gemini/play/MyTypeView$2;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v3, v5}, Lcom/gemini/play/MyTypeView;->gridinput_show(Z)V

    .line 133
    :goto_0
    return-void

    .line 122
    :cond_0
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    if-ne v3, v5, :cond_2

    .line 123
    :cond_1
    iget-object v3, p0, Lcom/gemini/play/MyTypeView$2;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-static {v3}, Lcom/gemini/play/MyTypeView;->access$100(Lcom/gemini/play/MyTypeView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v3

    invoke-interface {v3, v4, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/gemini/play/MyTypeView$2;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v3, v4}, Lcom/gemini/play/MyTypeView;->gridinput_show(Z)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v3, p0, Lcom/gemini/play/MyTypeView$2;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v3, v4}, Lcom/gemini/play/MyTypeView;->gridinput_show(Z)V

    .line 128
    sget-boolean v3, Lcom/gemini/play/LIVEplayer;->show_ps_playlist:Z

    if-ne v3, v5, :cond_3

    .line 129
    iget-object v3, p0, Lcom/gemini/play/MyTypeView$2;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-static {v3}, Lcom/gemini/play/MyTypeView;->access$100(Lcom/gemini/play/MyTypeView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v3

    invoke-interface {v3, v4, v0}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_3
    iget-object v3, p0, Lcom/gemini/play/MyTypeView$2;->this$0:Lcom/gemini/play/MyTypeView;

    invoke-static {v3, v5, v0}, Lcom/gemini/play/MyTypeView;->access$200(Lcom/gemini/play/MyTypeView;ILjava/lang/String;)V

    goto :goto_0
.end method
