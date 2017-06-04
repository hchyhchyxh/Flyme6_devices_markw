.class public Lcom/android/server/policy/FlymeConfirmPasswordView;
.super Landroid/widget/FrameLayout;
.source "FlymeConfirmPasswordView.java"

# interfaces
.implements Lcom/meizu/widget/ShutdownLockView$OnPanelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/FlymeConfirmPasswordView$1;
    }
.end annotation


# static fields
.field public static final FINDPHONE_ENABLED:I = 0x2

.field public static final FIND_PHONE_SETTING_KEY:Ljava/lang/String; = "com.meizu.flyme.FindPhone"

.field private static final LOCK_SETTINGS_KEY_PASSWORD_TYPE_BACKUP:Ljava/lang/String; = "lockscreen.password_type_mz_backup"

.field public static final PASSWORD_FROM_SCREEN_LOCK:I = 0x0

.field public static final PASSWORD_MIN_LENGTH_SIMPLE:I = 0x4

.field public static final PASSWORD_TYPE_COMPLEX:I = 0x1

.field public static final PASSWORD_TYPE_SIMPLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConfirmPasswordView"


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mCancelButton:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mEndRunnable:Ljava/lang/Runnable;

.field private mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

.field private mFingerprintCancelSignal:Landroid/os/CancellationSignal;

.field private mFingerprintDetectionRunning:Z

.field private mFingerprintLockout:Z

.field private mFingerprintUsedAsUnlock:Z

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mMaxNum:I

.field private mPasswordType:I

.field private mShowButtonsRunnable:Ljava/lang/Runnable;

.field private mTimeoutCount:I

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mVerifyTips:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/FlymeConfirmPasswordView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mDismissRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/FlymeConfirmPasswordView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/meizu/widget/ShutdownLockView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/FlymeConfirmPasswordView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimeoutCount:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/FlymeConfirmPasswordView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mVerifyTips:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/FlymeConfirmPasswordView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintLockout:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/FlymeConfirmPasswordView;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimeoutCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/FlymeConfirmPasswordView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mVerifyTips:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/FlymeConfirmPasswordView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->cancelTimer()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/FlymeConfirmPasswordView;I)V
    .locals 0
    .param p1, "acquireInfo"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->handleFingerprintAcquired(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/FlymeConfirmPasswordView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->handleFingerprintAuthFailed()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/FlymeConfirmPasswordView;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 0
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->handleFingerprintAuthenticated(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/FlymeConfirmPasswordView;ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->handleFingerprintError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/FlymeConfirmPasswordView;ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/FlymeConfirmPasswordView;->handleFingerprintHelp(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/FlymeConfirmPasswordView;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->showComplexKeypad(Landroid/widget/EditText;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mEndRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mShowButtonsRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mDismissRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mPasswordType:I

    iput-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimer:Ljava/util/Timer;

    iput-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimerTask:Ljava/util/TimerTask;

    new-instance v0, Lcom/android/server/policy/FlymeConfirmPasswordView$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/FlymeConfirmPasswordView$1;-><init>(Lcom/android/server/policy/FlymeConfirmPasswordView;)V

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    iput-object p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->initViews()V

    return-void
.end method

.method private cancelTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimer:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimerTask:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method private getLocksSettingsValue(Ljava/lang/String;I)I
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defalutValue"    # I

    .prologue
    move v1, p2

    .local v1, "value":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    int-to-long v4, p2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-interface {v2, p1, v4, v5, v3}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v1, v2

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private handleFingerprintAcquired(I)V
    .locals 0
    .param p1, "acquireInfo"    # I

    .prologue
    if-eqz p1, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method private handleFingerprintAuthFailed()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$string;->mz_fp_verify_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mVerifyTips:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->onResult(Z)V

    return-void
.end method

.method private handleFingerprintAuthenticated(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 1
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->onResult(Z)V

    return-void
.end method

.method private handleFingerprintError(ILjava/lang/String;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "timeout":I
    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->handleRecogniseError(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "timeout":I
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleFingerprintHelp(ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method private handleRecogniseError(II)V
    .locals 1
    .param p1, "lockout"    # I
    .param p2, "timeout"    # I

    .prologue
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimeoutCount:I

    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->startCountDownTimer()V

    :cond_0
    return-void
.end method

.method private initFingerPrint()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mContext:Landroid/content/Context;

    const-string v3, "fingerprint"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mz_fingerprint_use_unlock"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintUsedAsUnlock:Z

    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->updateFingerprintListeningState()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private initViews()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/meizu/findphone/FindPhoneAbstract;->newFindphoneUtils()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    const-string v2, "lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/flyme/internal/R$layout;->shutdown_confirm_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "layout":Landroid/view/View;
    sget v2, Lcom/flyme/internal/R$id;->keypadView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/ShutdownLockView;

    iput-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    invoke-virtual {v2}, Lcom/meizu/widget/ShutdownLockView;->getCancelText()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/meizu/widget/ShutdownLockView;->setInputTextButtonVisibility(Z)V

    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    invoke-virtual {v2, p0}, Lcom/meizu/widget/ShutdownLockView;->setPanelListener(Lcom/meizu/widget/ShutdownLockView$OnPanelListener;)V

    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mCancelButton:Landroid/widget/TextView;

    new-instance v3, Lcom/android/server/policy/FlymeConfirmPasswordView$2;

    invoke-direct {v3, p0}, Lcom/android/server/policy/FlymeConfirmPasswordView$2;-><init>(Lcom/android/server/policy/FlymeConfirmPasswordView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->refreshViews()V

    return-void
.end method

.method private notifyFingerprintRunningStateChanged()V
    .locals 0

    .prologue
    return-void
.end method

.method private onFingerprintAuthenticated(IZ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "wakeAndUnlocking"    # Z

    .prologue
    return-void
.end method

.method private onResult(Z)V
    .locals 1
    .param p1, "result"    # Z

    .prologue
    new-instance v0, Lcom/android/server/policy/FlymeConfirmPasswordView$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/FlymeConfirmPasswordView$4;-><init>(Lcom/android/server/policy/FlymeConfirmPasswordView;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private refreshViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$string;->confirm_access_password_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mVerifyTips:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getPasswordType()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mPasswordType:I

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    iget v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mPasswordType:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ShutdownLockView;->setKeyPadType(I)V

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mVerifyTips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ShutdownLockView;->setTip(Ljava/lang/String;)V

    const-string v0, "meizu_password_length"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getLocksSettingsValue(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mMaxNum:I

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    iget v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mMaxNum:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ShutdownLockView;->setMaxLen(I)V

    iget v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mPasswordType:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/ShutdownLockView;->setHollowVisible(Z)V

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/ShutdownLockView;->setInputTextButtonVisibility(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/ShutdownLockView;->setHollowVisible(Z)V

    goto :goto_0
.end method

.method private setFingerprintRunningDetectionRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintDetectionRunning:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintDetectionRunning:Z

    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->notifyFingerprintRunningStateChanged()V

    :cond_0
    return-void
.end method

.method private shouldListenForFingerprint()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .local v0, "shouldFPVisible":Z
    :goto_0
    return v0

    .end local v0    # "shouldFPVisible":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "shouldFPVisible":Z
    goto :goto_0
.end method

.method private showComplexKeypad(Landroid/widget/EditText;)V
    .locals 3
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private startCountDownTimer()V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimer:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/policy/FlymeConfirmPasswordView$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/FlymeConfirmPasswordView$5;-><init>(Lcom/android/server/policy/FlymeConfirmPasswordView;)V

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimerTask:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method

.method private startListeningForFingerprint()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .local v6, "userId":I
    invoke-virtual {p0, v6}, Lcom/android/server/policy/FlymeConfirmPasswordView;->isUnlockWithFingerPrintPossible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    const/4 v3, 0x0

    move-object v5, v1

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->setFingerprintRunningDetectionRunning(Z)V

    :cond_1
    return-void
.end method

.method private stopListeningForFingerprint()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->setFingerprintRunningDetectionRunning(Z)V

    return-void
.end method

.method private updateFingerprintListeningState()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->shouldListenForFingerprint()Z

    move-result v0

    .local v0, "shouldListenForFingerprint":Z
    iget-boolean v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintDetectionRunning:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintDetectionRunning:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->startListeningForFingerprint()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->stopListeningForFingerprint()V

    goto :goto_0
.end method

.method private verifyThePassword(Ljava/lang/String;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->checkPassword(ILjava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$string;->confirm_password_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mVerifyTips:Ljava/lang/String;

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->onResult(Z)V

    return-void
.end method


# virtual methods
.method public checkPassword(ILjava/lang/String;)Z
    .locals 4
    .param p1, "passwordFrom"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, p2, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/widget/LockPatternUtils;->checkFlymePassword(ILjava/lang/String;)Z
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v1    # "ret":Z
    :goto_0
    return v1

    .restart local v1    # "ret":Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    goto :goto_0
.end method

.method public fingerprintUsedAsUnlock()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintUsedAsUnlock:Z

    return v0
.end method

.method public forceShowInputMethod()V
    .locals 4

    .prologue
    new-instance v0, Lcom/android/server/policy/FlymeConfirmPasswordView$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/FlymeConfirmPasswordView$3;-><init>(Lcom/android/server/policy/FlymeConfirmPasswordView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/policy/FlymeConfirmPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getPasswordType()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .local v1, "type":I
    const-string v2, "lockscreen.password_type_mz_backup"

    invoke-direct {p0, v2, v4}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getLocksSettingsValue(Ljava/lang/String;I)I

    move-result v0

    .local v0, "bakupType":I
    if-eqz v0, :cond_0

    move v1, v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->isSimplePassword(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mPasswordType:I

    return v0
.end method

.method public hasFlymeAccount()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v2, "com.meizu.account"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .local v0, "accounts":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public initValues()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->initFingerPrint()V

    return-void
.end method

.method public isFindPhoneEnabled()Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.meizu.flyme.FindPhone"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFingerprintDetectionRunning()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFingerprintDetectionRunning:Z

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .local v0, "secure":Z
    return v0
.end method

.method public isSimplePassword(I)Z
    .locals 2
    .param p1, "passwordQuality"    # I

    .prologue
    const/4 v0, 0x1

    const/high16 v1, 0x20000

    if-eq p1, v1, :cond_0

    const/high16 v1, 0x30000

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnlockWithFingerPrintPossible(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->fingerprintUsedAsUnlock()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onCellAdded(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mMaxNum:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->verifyThePassword(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCellCleared(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onCellFhish(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onInputTextButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onKeyLeftButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onKeyRightButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onLeftButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onRightButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->updateFingerprintListeningState()V

    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mLockDigitPanel:Lcom/meizu/widget/ShutdownLockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ShutdownLockView;->clearCell(Z)V

    return-void
.end method

.method public show(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "endRunnable"    # Ljava/lang/Runnable;
    .param p2, "showButtons"    # Ljava/lang/Runnable;
    .param p3, "dismiss"    # Ljava/lang/Runnable;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mEndRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->refreshViews()V

    iget v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView;->mPasswordType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->forceShowInputMethod()V

    :cond_0
    return-void
.end method
