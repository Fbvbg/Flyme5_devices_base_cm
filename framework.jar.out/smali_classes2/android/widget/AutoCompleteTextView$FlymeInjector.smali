.class final Landroid/widget/AutoCompleteTextView$FlymeInjector;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AutoCompleteTextView$FlymeInjector$DropdownPopup;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getPosition(Landroid/widget/AutoCompleteTextView;I)I
    .locals 1
    .param p0, "tv"    # Landroid/widget/AutoCompleteTextView;
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method static initFlymeExtraFields(Landroid/widget/AutoCompleteTextView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/AutoCompleteTextView;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    new-instance v0, Landroid/widget/AutoCompleteTextView$FlymeInjector$DropdownPopup;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView$FlymeInjector$DropdownPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->flymSetFieldPopup(Landroid/widget/ListPopupWindow;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mFlymeFilterComplete:Z

    return-void
.end method

.method static updateFlymeDropDownForFilter(Landroid/widget/AutoCompleteTextView;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mFlymeFilterComplete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mIsFlymeMmsFirstFileter:Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mFlymeFilterComplete:Z

    return-void
.end method
