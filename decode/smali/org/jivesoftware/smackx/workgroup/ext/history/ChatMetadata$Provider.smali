.class public Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata$Provider;
.super Ljava/lang/Object;
.source "ChatMetadata.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;-><init>()V

    .line 89
    const/4 v1, 0x0

    .line 90
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 91
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 92
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 93
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sessionID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;->setSessionID(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "metadata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-static {p1}, Lorg/jivesoftware/smackx/workgroup/util/MetaDataUtils;->parseMetaData(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v2

    .line 98
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;->setMetadata(Ljava/util/Map;)V

    goto :goto_0

    .line 101
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 102
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chat-metadata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    const/4 v1, 0x1

    goto :goto_0

    .line 108
    :cond_3
    return-object v0
.end method