.class public Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;
.super Lorg/jivesoftware/smackx/filetransfer/FileTransfer;
.source "OutgoingFileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$NegotiationProgress;
    }
.end annotation


# static fields
.field private static RESPONSE_TIMEOUT:I


# instance fields
.field private callback:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$NegotiationProgress;

.field private initiator:Ljava/lang/String;

.field private outputStream:Ljava/io/OutputStream;

.field private transferThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const v0, 0xea60

    sput v0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->RESPONSE_TIMEOUT:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p2, p3, p4}, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;)V

    .line 72
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->initiator:Ljava/lang/String;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;)Ljava/io/OutputStream;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$002(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;Ljava/lang/String;JLjava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->negotiateStream(Ljava/lang/String;JLjava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;Lorg/jivesoftware/smack/XMPPException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->handleXMPPException(Lorg/jivesoftware/smack/XMPPException;)V

    return-void
.end method

.method private checkTransferThread()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->transferThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->transferThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "File transfer in progress or has already completed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_2
    return-void
.end method

.method public static getResponseTimeout()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->RESPONSE_TIMEOUT:I

    return v0
.end method

.method private handleXMPPException(Lorg/jivesoftware/smack/XMPPException;)V
    .locals 2
    .parameter

    .prologue
    .line 318
    invoke-virtual {p1}, Lorg/jivesoftware/smack/XMPPException;->getXMPPError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/XMPPError;->getCode()I

    move-result v0

    .line 321
    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    .line 322
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->refused:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 335
    :goto_0
    return-void

    .line 325
    :cond_0
    const/16 v1, 0x190

    if-ne v0, v1, :cond_2

    .line 326
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->error:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 327
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;->not_acceptable:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->setError(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;)V

    .line 334
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 330
    :cond_2
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->error:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    goto :goto_1
.end method

.method private negotiateStream(Ljava/lang/String;JLjava/lang/String;)Ljava/io/OutputStream;
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 356
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->initial:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->negotiating_transfer:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->updateStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Illegal state change"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->negotiator:Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->getPeer()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->streamID:Ljava/lang/String;

    sget v7, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->RESPONSE_TIMEOUT:I

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->negotiateOutgoingTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    move-result-object v0

    .line 363
    if-nez v0, :cond_1

    .line 364
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->error:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 365
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;->no_response:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->setError(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;)V

    .line 366
    const/4 v0, 0x0

    .line 379
    :goto_0
    return-object v0

    .line 370
    :cond_1
    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->negotiating_transfer:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    sget-object v2, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->negotiating_stream:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->updateStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 371
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Illegal state change"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_2
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->streamID:Ljava/lang/String;

    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->initiator:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->getPeer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->createOutgoingStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;

    .line 376
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->negotiating_stream:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->negotiated:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->updateStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 377
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Illegal state change"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_3
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method public static setResponseTimeout(I)V
    .locals 0
    .parameter

    .prologue
    .line 60
    sput p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->RESPONSE_TIMEOUT:I

    .line 61
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->cancelled:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 384
    return-void
.end method

.method public getBytesSent()J
    .locals 2

    .prologue
    .line 349
    iget-wide v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->amountWritten:J

    return-wide v0
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->getStatus()Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->negotiated:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized sendFile(Ljava/lang/String;JLjava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The negotation process has already been attempted on this file transfer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 123
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->negotiateStream(Ljava/lang/String;JLjava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    :try_start_2
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    :try_start_3
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->handleXMPPException(Lorg/jivesoftware/smack/XMPPException;)V

    .line 126
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized sendFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->checkTransferThread()V

    .line 205
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not read file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->setFileInfo(Ljava/lang/String;Ljava/lang/String;J)V

    .line 211
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$2;-><init>(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Transfer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->streamID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->transferThread:Ljava/lang/Thread;

    .line 255
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->transferThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendFile(Ljava/lang/String;JLjava/lang/String;Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$NegotiationProgress;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    monitor-enter p0

    if-nez p5, :cond_0

    .line 154
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback progress cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 156
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->checkTransferThread()V

    .line 157
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The negotation process has already been attempted for this file transfer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_2
    iput-object p5, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->callback:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$NegotiationProgress;

    .line 163
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$1;-><init>(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;Ljava/lang/String;JLjava/lang/String;Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$NegotiationProgress;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File Transfer Negotiation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->streamID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v7, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->transferThread:Ljava/lang/Thread;

    .line 175
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->transferThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendStream(Ljava/io/InputStream;Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->checkTransferThread()V

    .line 277
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$3;

    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$3;-><init>(Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;Ljava/lang/String;JLjava/lang/String;Ljava/io/InputStream;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File Transfer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->streamID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v7, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->transferThread:Ljava/lang/Thread;

    .line 314
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->transferThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setException(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 406
    invoke-super {p0, p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->setException(Ljava/lang/Exception;)V

    .line 407
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->callback:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$NegotiationProgress;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->callback:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$NegotiationProgress;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$NegotiationProgress;->errorEstablishingStream(Ljava/lang/Exception;)V

    .line 410
    :cond_0
    return-void
.end method

.method protected setOutputStream(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 77
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->outputStream:Ljava/io/OutputStream;

    .line 79
    :cond_0
    return-void
.end method

.method protected setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V
    .locals 2
    .parameter

    .prologue
    .line 397
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->getStatus()Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    move-result-object v0

    .line 398
    invoke-super {p0, p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 399
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->callback:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$NegotiationProgress;

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->callback:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$NegotiationProgress;

    invoke-interface {v1, v0, p1}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$NegotiationProgress;->statusUpdated(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 402
    :cond_0
    return-void
.end method

.method protected updateStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 388
    invoke-super {p0, p1, p2}, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;->updateStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)Z

    move-result v0

    .line 389
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->callback:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$NegotiationProgress;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 390
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;->callback:Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$NegotiationProgress;

    invoke-interface {v1, p1, p2}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer$NegotiationProgress;->statusUpdated(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 392
    :cond_0
    return v0
.end method
