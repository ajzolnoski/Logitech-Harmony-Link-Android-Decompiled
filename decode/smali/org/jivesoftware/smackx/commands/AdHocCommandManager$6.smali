.class Lorg/jivesoftware/smackx/commands/AdHocCommandManager$6;
.super Ljava/lang/Object;
.source "AdHocCommandManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$6;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .parameter

    .prologue
    .line 328
    check-cast p1, Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    .line 329
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$6;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    #calls: Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->processAdHocCommand(Lorg/jivesoftware/smackx/packet/AdHocCommandData;)V
    invoke-static {v0, p1}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->access$400(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;Lorg/jivesoftware/smackx/packet/AdHocCommandData;)V

    .line 330
    return-void
.end method
