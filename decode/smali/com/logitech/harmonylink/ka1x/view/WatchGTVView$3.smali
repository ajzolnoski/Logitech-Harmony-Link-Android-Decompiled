.class Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$3;
.super Ljava/lang/Object;
.source "WatchGTVView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setVoiceSearchButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

.field final synthetic val$pageNumber:Ljava/lang/Integer;

.field final synthetic val$tabNumber:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$3;->this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    iput-object p2, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$3;->val$tabNumber:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$3;->val$pageNumber:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 444
    const v0, 0x5f5e0ff

    .line 445
    .local v0, Requestcode:I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "free_form"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string v2, "android.speech.extra.PROMPT"

    const-string v3, "samples are .. \n TV ON! \n LIVE TV \n SYSTEM OFF \n MUTE \n WEB BROWSER "

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$3;->this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    iget-object v2, v2, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mLogiActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    invoke-virtual {v2, v1, v0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 455
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$3;->this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    iget-object v3, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$3;->val$tabNumber:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$3;->val$pageNumber:Ljava/lang/Integer;

    #calls: Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setTabAndPage(Ljava/lang/Integer;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v4}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->access$200(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 456
    return-void
.end method
