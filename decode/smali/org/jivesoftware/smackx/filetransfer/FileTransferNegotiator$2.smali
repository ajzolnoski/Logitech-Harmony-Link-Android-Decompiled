.class Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator$2;
.super Ljava/lang/Object;
.source "FileTransferNegotiator.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->configureConnection(Lorg/jivesoftware/smack/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

.field final synthetic val$connection:Lorg/jivesoftware/smack/Connection;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;Lorg/jivesoftware/smack/Connection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator$2;->this$0:Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator$2;->val$connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionClosed()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator$2;->this$0:Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator$2;->val$connection:Lorg/jivesoftware/smack/Connection;

    #calls: Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->cleanup(Lorg/jivesoftware/smack/Connection;)V
    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->access$000(Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;Lorg/jivesoftware/smack/Connection;)V

    .line 202
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator$2;->this$0:Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator$2;->val$connection:Lorg/jivesoftware/smack/Connection;

    #calls: Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->cleanup(Lorg/jivesoftware/smack/Connection;)V
    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->access$000(Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;Lorg/jivesoftware/smack/Connection;)V

    .line 206
    return-void
.end method

.method public reconnectingIn(I)V
    .locals 0
    .parameter

    .prologue
    .line 218
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method
