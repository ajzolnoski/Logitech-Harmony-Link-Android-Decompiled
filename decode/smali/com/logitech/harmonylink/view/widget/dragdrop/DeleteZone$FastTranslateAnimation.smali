.class Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone$FastTranslateAnimation;
.super Landroid/view/animation/TranslateAnimation;
.source "DeleteZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FastTranslateAnimation"
.end annotation


# direct methods
.method public constructor <init>(IFIFIFIF)V
    .locals 0
    .parameter "fromXType"
    .parameter "fromXValue"
    .parameter "toXType"
    .parameter "toXValue"
    .parameter "fromYType"
    .parameter "fromYValue"
    .parameter "toYType"
    .parameter "toYValue"

    .prologue
    .line 230
    invoke-direct/range {p0 .. p8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 232
    return-void
.end method


# virtual methods
.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method
