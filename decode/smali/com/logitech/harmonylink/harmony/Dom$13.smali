.class Lcom/logitech/harmonylink/harmony/Dom$13;
.super Ljava/lang/Object;
.source "Dom.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/harmony/Dom;->startSendFixitCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/harmony/Dom;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 0
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom$13;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 685
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 688
    return-void
.end method
