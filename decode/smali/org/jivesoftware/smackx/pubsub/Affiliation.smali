.class public Lorg/jivesoftware/smackx/pubsub/Affiliation;
.super Ljava/lang/Object;
.source "Affiliation.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;
    }
.end annotation


# instance fields
.field protected node:Ljava/lang/String;

.field protected type:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->node:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->type:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    .line 49
    return-void
.end method

.method private appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v0, "=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "subscription"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->node:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->type:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Affiliation;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, "node"

    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->node:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/Affiliation;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "affiliation"

    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->type:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/Affiliation;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
