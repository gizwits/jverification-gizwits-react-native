#import "RCTJVerificationModule.h"

//常量
#define ENABLE         @"enable"
#define TIME           @"time"

#define CODE           @"code"
#define CONTENT        @"content"
#define OPERATOR       @"operator"

//事件
#define LOGIN_EVENT    @"LoginEvent"

//自定义布局路径
#define CUSTOM_VIEW_NAME      @"customViewName"
#define CUSTOM_VIEW_POINT     @"customViewPoint"

//资源文件夹
#define JVERIFICATION_RESOURCE          @"JVerificationResource"
//背景图
#define BACK_GROUND_IMAGE               @"backgroundImage"
//状态栏
#define STATUS_BAR_HIDDEN               @"statusBarHidden"          //状态栏是否隐藏
#define STATUS_BAR_MODE                 @"statusBarMode"            //状态栏模式
#define STATUS_BAR_MODE_LIGHT           @"light"                    //状态栏亮色模式
#define STATUS_BAR_MODE_DARK            @"dark"                     //状态栏暗色模式
//导航栏
#define NAV_HIDDEN                      @"navHidden"                //导航栏是否隐藏
#define NAV_COLOR                       @"navColor"                 //导航栏颜色
//导航栏标题
#define NAV_TITLE                       @"navTitle"                 //导航栏标题
#define NAV_TITLE_SIZE                  @"navTitleSize"             //导航栏标题文字字体大小
#define NAV_TITLE_COLOR                 @"navTitleColor"            //导航栏标题文字颜色
//导航栏返回按钮
#define NAV_RETURN_HIDDEN               @"navReturnHidden"          //导航栏返回按钮是否隐藏
#define NAV_RETURN_IMAGE                @"navReturnImage"           //导航栏左侧返回按钮图标
#define NAV_RETURN_X                    @"navReturnX"               //导航栏返回按钮相对于屏幕左边x轴偏移
#define NAV_RETURN_Y                    @"navReturnY"               //导航栏返回按钮相对于导航栏下边缘y偏移
#define NAV_RETURN_WIDTH                @"navReturnWidth"           //导航栏返回按钮宽
#define NAV_RETURN_HEIGHT               @"navReturnHeight"          //导航栏返回按钮高
//logo
#define LOGO_HIDDEN                     @"logoHidden"               //logo是否隐藏
#define LOGO_IMAGE                      @"logoImage"                //logo(android默认为应用图标;ios默认无)
#define LOGO_X                          @"logoX"                    //logo相对于屏幕左边x轴偏移
#define LOGO_Y                          @"logoY"                    //logo相对于导航栏下边缘y偏移
#define LOGO_W                          @"logoW"                    //logo宽
#define LOGO_H                          @"logoH"                    //logo高
//号码
#define NUMBER_SIZE                     @"numberSize"               //手机号码字体大小
#define NUMBER_COLOR                    @"numberColor"              //手机号码字体颜色
#define NUMBER_X                        @"numberX"                  //号码栏相对于屏幕左边x轴偏移
#define NUMBER_Y                        @"numberY"                  //号码栏相对于导航栏下边缘y偏移
#define NUMBER_W                        @"numberW"                  //号码栏宽度
#define NUMBER_H                        @"numberH"                  //号码栏高度
//slogan
#define SLOGAN_HIDDEN                   @"sloganHidden"             //slogan是否隐藏
#define SLOGAN_TEXT_SIZE                @"sloganTextSize"           //slogan字体大小
#define SLOGAN_TEXT_COLOR               @"sloganTextColor"          //slogan文字颜色
#define SLOGAN_X                        @"sloganX"                  //slogan相对于屏幕左边x轴偏移
#define SLOGAN_Y                        @"sloganY"                  //slogan相对于导航栏下边缘y偏移
#define SLOGAN_W                        @"sloganW"                  //slogan宽度
#define SLOGAN_H                        @"sloganH"                  //slogan高度
//登录按钮
#define LOGIN_BTN_TEXT                  @"loginBtnText"             //登录按钮文字
#define LOGIN_BTN_TEXT_SIZE             @"loginBtnTextSize"         //登录按钮字体大小
#define LOGIN_BTN_TEXT_COLOR            @"loginBtnTextColor"        //登录按钮文字颜色
#define LOGIN_BTN_IMAGE                 @"loginBtnImage"            //登录按钮selector选择样式 （仅android）
#define LOGIN_BTN_NORMAL_IMAGE          @"loginBtnNormalImage"      //登录按钮正常图片 （仅ios,三个同时设置生效）
#define LOGIN_BTN_DISABLED_IMAGE        @"loginBtnDisabledImage"    //登录按钮失效图片  (仅ios,三个同时设置生效)
#define LOGIN_BTN_SELECTED_IMAGE        @"loginBtnSelectedImage"    //登录按钮按下图片  (仅ios,三个同时设置生效）
#define LOGIN_BTN_X                     @"loginBtnX"                //登录按钮相对于屏幕左边x轴偏移
#define LOGIN_BTN_Y                     @"loginBtnY"                //登录按钮相对于d导航栏下边缘y偏移
#define LOGIN_BTN_W                     @"loginBtnW"                //登录按钮宽度
#define LOGIN_BTN_H                     @"loginBtnH"                //登录按钮高度
//隐私条款
#define PRIVACY_ONE                     @"privacyOne"               //隐私条款一:数组（务必按顺序）@[条款名称,条款链接]
#define PRIVACY_TWO                     @"privacyTwo"               //隐私条款二:数组（务必按顺序）@[条款名称,条款链接]
#define PRIVACY_COLOR                   @"privacyColor"             //隐私条款名称颜色 @[基础文字颜色,条款颜色]
#define PRIVACY_TEXT                    @"privacyText"              //隐私条款拼接文本数组
#define PRIVACY_TEXT_SIZE               @"privacyTextSize"          //隐私条款字体大小，默认12
#define PRIVACY_TEXT_GRAVITY_MODE       @"privacyTextGravityMode"   //隐私条款文本对齐方式，目前仅支持 left、center
#define PRIVACY_TEXT_GRAVITY_LEFT       @"left"                     //隐私条款文本对齐方式，目前仅支持 left、center
#define PRIVACY_TEXT_GRAVITY_CENTER     @"center"                   //隐私条款文本对齐方式，目前仅支持 left、center
#define PRIVACY_BOOK_SYMBOL_ENABLE      @"privacyBookSymbolEnable"  //隐私条款是否显示书名号，默认不显示
#define PRIVACY_X                       @"privacyX"                 //隐私条款相对于屏幕左边x轴偏移
#define PRIVACY_Y                       @"privacyY"                 //隐私条款相对于导航栏下边缘y偏移
#define PRIVACY_W                       @"privacyW"                 //隐私条款宽度
#define PRIVACY_H                       @"privacyH"                 //隐私条款高度
//隐私条款checkbox
#define PRIVACY_CHECKBOX_HIDDEN         @"privacyCheckboxHidden"    //checkBox是否隐藏，默认不隐藏
#define PRIVACY_CHECK_ENABLE            @"privacyCheckEnable"       //checkBox默认状态 默认:NO
#define PRIVACY_CHECKED_IMAGE           @"privacyCheckedImage"      //checkBox选中时图片
#define PRIVACY_UNCHECKED_IMAGE         @"privacyUncheckedImage"    //checkBox未选中时图片
#define CHECK_VIEW_CONSTRAINTS          @"checkViewConstraints"     //checkBox布局对象

//协议
#define PRIVACY_WEB_NAV_COLOR           @"privacyWebNavColor"       //协议页导航栏背景颜色
#define PRIVACY_WEB_NAV_TITLE           @"privacyWebNavTitle"       //协议页导航栏标题
#define PRIVACY_WEB_NAV_TITLE_SIZE      @"privacyWebNavTitleSize"   //协议页导航栏标题字体大小
#define PRIVACY_WEB_NAV_TITLE_COLOR     @"privacyWebNavTitleColor"  //协议页导航栏标题字体颜色
#define PRIVACY_WEB_NAV_RETURN_IMAGE    @"privacyWebNavReturnImage" //协议页导航栏返回按钮图片

//弹窗（New）
#define SHOW_WINDOW                     @"showWindow"       //是否弹窗
#define WINDOW_BACKGROUND_ALPHA         @"windowBackgroundAlpha"  //弹窗外侧 透明度 0~1.0
#define WINDOW_CORNER_RADIUS            @"windowCornerRadius"   //弹窗圆角数值
#define WINDOW_X     @"windowConstraintsCenterX"  //弹窗布局对象中心x
#define WINDOW_Y     @"windowConstraintsCenterY"  //弹窗布局对象中心y
#define WINDOW_W     @"windowConstraintsW"  //弹窗布局对象w
#define WINDOW_H     @"windowConstraintsH"  //弹窗布局对象h
#define WINDOW_CLOSE_NOR_IMAGE           @"windowCloseNorImage"      //弹窗close按钮图片，普通状态
#define WINDOW_CLOSE_SELECTED_IMAGE         @"privacyUncheckedImage"    //弹窗close按钮图片，高亮状态
#define WINDOW_CLOSE_BTN_X     @"windowCloseBtnConstraintsX"  //弹窗横屏布局x
#define WINDOW_CLOSE_BTN_Y     @"windowCloseBtnConstraintsY"  //弹窗横屏布局y
#define WINDOW_CLOSE_BTN_W     @"windowCloseBtnConstraintsW"  //弹窗横屏布局w
#define WINDOW_CLOSE_BTN_H     @"windowCloseBtnConstraintsH"  //弹窗横屏布局h


#define UIColorFromRGBValue(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

static double defaultTime  = 5000;

@implementation RCTJVerificationModule

RCT_EXPORT_MODULE(JVerificationModule);

+ (BOOL)requiresMainQueueSetup
{
    return YES;
}

RCT_EXPORT_METHOD(setDebug: (BOOL *)enable)
{
    [JVERIFICATIONService setDebug: enable];
}

RCT_EXPORT_METHOD(setupWithConfig: (NSDictionary *)params
                         callback: (RCTResponseSenderBlock)callback)
{
    JVAuthConfig *config = [[JVAuthConfig alloc] init];
    if (params[@"appKey"]) {
        config.appKey = params[@"appKey"];
    }
    if (params[@"channel"]) {
        config.channel = params[@"channel"];
    }
    if (params[@"advertisingId"]) {
        config.advertisingId = params[@"advertisingId"];
    }
    if (params[@"isProduction"]) {
        config.isProduction = [params[@"isProduction"] boolValue];
    }
    if(params[@"time"]){
        config.timeout = [params[@"time"] doubleValue];
    }
    if(callback != nil){
        config.authBlock = ^(NSDictionary *result) {
            NSNumber *code = result[@"code"];
            NSString *content = result[@"content"];
            NSDictionary *response = [self convertToResult:code content:content];
            callback(@[response]);
        };
    }
    [JVERIFICATIONService setupWithConfig:config];
}

RCT_EXPORT_METHOD(isSetupClient: (RCTResponseSenderBlock)callback)
{
    BOOL enable = [JVERIFICATIONService isSetupClient];
    NSDictionary *data = [self convertToResult:enable];
    callback(@[data]);
}

RCT_EXPORT_METHOD(checkVerifyEnable: (RCTResponseSenderBlock)callback)
{
   BOOL enable = [JVERIFICATIONService checkVerifyEnable];
   NSDictionary *data = [self convertToResult:enable];
   callback(@[data]);
}

RCT_EXPORT_METHOD(getToken: (double)params
                  callback: (RCTResponseSenderBlock)callback)
{
    NSTimeInterval time  = params;
    [JVERIFICATIONService getToken:(time) completion:^(NSDictionary *result) {
        NSNumber *code =  result[@"code"]?result[@"code"]:@(-1);
        NSString *content = result[@"token"]?result[@"token"]:@"";
        NSString *operator = result[@"operator"]?result[@"operator"]:@"";
        NSDictionary *data = [self convertToResult:code content:content operator:operator];
        callback(@[data]);
    }];
}

RCT_EXPORT_METHOD(preLogin: (double)params
                  callback: (RCTResponseSenderBlock)callback)
{
    NSTimeInterval time  = params;
    [JVERIFICATIONService preLogin:time completion:^(NSDictionary *result) {
        NSNumber *code =  result[@"code"]?result[@"code"]:@(-1);
        NSString *message = result[@"message"]?result[@"message"]:@"";
        NSDictionary *data = [self convertToResult:code content:message];
        callback(@[data]);
    }];
}

RCT_EXPORT_METHOD(clearPreLoginCache)
{
    [JVERIFICATIONService clearPreLoginCache];
}

RCT_EXPORT_METHOD(customUIWithConfig: (NSDictionary *)configParams viewParams: (NSArray *)viewParams)
{
    JVUIConfig *config = [self convertToCinfig:configParams];
    dispatch_async(dispatch_get_main_queue(), ^{
        [JVERIFICATIONService customUIWithConfig:config customViews:^(UIView *customAreaView) {
            for (int i = 0; i < viewParams.count; i++) {
                RCTRootView *rctView;
                if (self.bridge) {
                    rctView = [[RCTRootView alloc] initWithBridge:self.bridge moduleName:viewParams[i][CUSTOM_VIEW_NAME] initialProperties:nil];
                }
                else {
                    NSURL *jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
                    rctView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation moduleName:viewParams[i][CUSTOM_VIEW_NAME] initialProperties:nil launchOptions:nil];
                }
                NSArray *point = viewParams[i][CUSTOM_VIEW_POINT];
                NSNumber *pointX = point[0];
                NSNumber *pointY = point[1];
                NSNumber *pointW = point[2];
                NSNumber *pointH = point[3];
                CGFloat x = [pointX doubleValue];
                CGFloat y = [pointY doubleValue];
                CGFloat w = [pointW doubleValue];
                CGFloat h = [pointH doubleValue];
                CGRect customFrame = rctView.frame;
                customFrame.origin = CGPointMake(x, y);
                customFrame.size = CGSizeMake(w, h);
                rctView.frame = customFrame;
                [customAreaView addSubview:rctView];
            }
        }];
    });
}

RCT_EXPORT_METHOD(getAuthorizationWithController: (BOOL *)enable)
{
    dispatch_async(dispatch_get_main_queue(), ^{
        UIViewController *vc = [UIApplication sharedApplication].keyWindow.rootViewController;
        UIViewController *topVC = vc;
        if (topVC.presentedViewController) {
            topVC = topVC.presentedViewController;
        }
        [JVERIFICATIONService getAuthorizationWithController:topVC hide:enable completion:^(NSDictionary *result) {
            NSNumber *code = result[@"code"];
            NSString *content = @"";
            if(result[@"content"]){
                content = result[@"content"];
            }
            if(result[@"loginToken"]){
                content = result[@"loginToken"];
            }
            NSString *operator = result[@"operator"]?result[@"operator"]:@"";
            NSDictionary *responseData = [self convertToResult:code content:content operator:operator];
            [self sendLoginEvent:responseData];
        } actionBlock:^(NSInteger type, NSString *content) {
            NSNumber *code = [NSNumber numberWithLong: type];
            NSDictionary *responseData = [self convertToResult:code content:content];
            [self sendLoginEvent:responseData];
        }];
    });
}

RCT_EXPORT_METHOD(getAuthorizationWithControllerByTimeout: (NSDictionary *)params)
{
    dispatch_async(dispatch_get_main_queue(), ^{
        UIViewController *vc = [UIApplication sharedApplication].keyWindow.rootViewController;
        UIViewController *topVC = vc;
        if (topVC.presentedViewController) {
            topVC = topVC.presentedViewController;
        }
        BOOL enable = YES;
        NSNumber* enableNumber = [params objectForKey:ENABLE];
        if(enableNumber){
            enable = [enableNumber boolValue];
        }
        NSTimeInterval timeout = 3000;
        NSNumber* timeoutNumber = [params objectForKey:TIME];
        if(timeout){
            timeout = [timeoutNumber doubleValue];
        }
        [JVERIFICATIONService getAuthorizationWithController:topVC hide:enable animated:YES timeout:timeout completion:^(NSDictionary *result) {
            NSNumber *code = result[@"code"];
            NSString *content = @"";
            if(result[@"content"]){
                content = result[@"content"];
            }
            if(result[@"loginToken"]){
                content = result[@"loginToken"];
            }
            NSString *operator = result[@"operator"]?result[@"operator"]:@"";
            NSDictionary *responseData = [self convertToResult:code content:content operator:operator];
            [self sendLoginEvent:responseData];
        } actionBlock:^(NSInteger type, NSString *content) {
            NSNumber *code = [NSNumber numberWithLong: type];
            NSDictionary *responseData = [self convertToResult:code content:content];
            [self sendLoginEvent:responseData];
        }];
    });
}

RCT_EXPORT_METHOD(dismissLoginController)
{
    [JVERIFICATIONService dismissLoginController];
}

//事件处理
- (NSArray<NSString *> *)supportedEvents
{
    return @[LOGIN_EVENT];
}

- (void)sendLoginEvent:(NSDictionary *)responseData
{
    [self.bridge enqueueJSCall:@"RCTDeviceEventEmitter"
                        method:@"emit"
                          args:@[LOGIN_EVENT, responseData]
                    completion:NULL];
}

//结果返回
-(NSDictionary *)convertToResult:(BOOL)enable
{
    NSDictionary *responseData = @{@"enable":@(enable)};
    return responseData;
}

-(NSDictionary *)convertToResult:(NSNumber *)code
                         content:(NSString *)content
{
    NSDictionary *responseData = @{CODE:code,CONTENT:content};
    return responseData;
}

-(NSDictionary *)convertToResult:(NSNumber *)code
                         content: (NSString *)content
                        operator: (NSString *)operator
{
    NSDictionary *responseData = @{CODE:code,CONTENT:content,OPERATOR:operator};
    return responseData;
}

-(JVUIConfig *)convertToCinfig: (NSDictionary *)configParams
{
  JVUIConfig *config = [[JVUIConfig alloc] init];
  config.agreementNavReturnImage = [self imageNamed:@"back"];
  BOOL displayAsWindow = NO; //配置样式是不是为弹窗，是的话，就不解析导航栏的相关配置
  if([configParams[SHOW_WINDOW] isKindOfClass:[NSNumber class]]){
    displayAsWindow = [configParams[SHOW_WINDOW] boolValue];
  }
  if(displayAsWindow){
     config.showWindow = YES;
    config.navCustom = YES;
    config.autoLayout = YES;
    config.modalTransitionStyle =  UIModalTransitionStyleCrossDissolve;


    if(configParams[WINDOW_BACKGROUND_ALPHA]){
      config.windowBackgroundAlpha = [configParams[WINDOW_BACKGROUND_ALPHA] floatValue];
    }
    if(configParams[WINDOW_CORNER_RADIUS]){
      config.windowCornerRadius = [configParams[WINDOW_CORNER_RADIUS] floatValue];
    }
  if(configParams[WINDOW_X]&&configParams[WINDOW_Y]&&configParams[WINDOW_W]&&configParams[WINDOW_H]){
      CGFloat win_X = [configParams[WINDOW_X] floatValue];
      CGFloat win_Y = [configParams[WINDOW_Y] floatValue];
      CGFloat win_W = [configParams[WINDOW_W] floatValue];
      CGFloat win_H = [configParams[WINDOW_H] floatValue];
    JVLayoutConstraint *windowConstraintX = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeCenterX multiplier:1 constant:win_X];
    JVLayoutConstraint *windowConstraintY = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeCenterY multiplier:1 constant:win_Y];

    JVLayoutConstraint *windowConstraintW = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeWidth multiplier:1 constant:win_W];
    JVLayoutConstraint *windowConstraintH = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeHeight multiplier:1 constant:win_H];
    config.windowConstraints = @[windowConstraintY,windowConstraintH,windowConstraintX,windowConstraintW];
//      config.windowConstraints = [self layoutConstraint:win_X y:win_Y w:win_W h:win_H];
    }

    UIImage *windowCloseNorImage = [self imageNamed:@"default_close_icon"];
    UIImage *windowCloseSelImage = [self imageNamed:@"default_close_icon"];
    if (configParams[WINDOW_CLOSE_NOR_IMAGE] && configParams[WINDOW_CLOSE_SELECTED_IMAGE]) {
      UIImage *windowCloseNorImage_Custom = [self imageNamed:configParams[WINDOW_CLOSE_NOR_IMAGE]];
      UIImage * windowCloseSelImage_Custom = [self imageNamed:configParams[WINDOW_CLOSE_SELECTED_IMAGE]];
      if (windowCloseNorImage_Custom && windowCloseSelImage_Custom) {
        windowCloseNorImage = windowCloseNorImage_Custom;
        windowCloseSelImage = windowCloseSelImage_Custom;
      }
    }
    config.windowCloseBtnImgs = @[windowCloseNorImage, windowCloseSelImage];

    if(configParams[WINDOW_CLOSE_BTN_X]&&configParams[WINDOW_CLOSE_BTN_Y]&&configParams[WINDOW_CLOSE_BTN_W]&&configParams[WINDOW_CLOSE_BTN_H]){
        CGFloat win_close_btn_X = [configParams[WINDOW_CLOSE_BTN_X] floatValue];
        CGFloat win_close_btn_Y = [configParams[WINDOW_CLOSE_BTN_Y] floatValue];
        CGFloat win_close_btn_W = [configParams[WINDOW_CLOSE_BTN_W] floatValue];
        CGFloat win_close_btn_H = [configParams[WINDOW_CLOSE_BTN_H] floatValue];
        config.windowCloseBtnConstraints = [self layoutConstraint:win_close_btn_X y:win_close_btn_Y w:win_close_btn_W h:win_close_btn_H];
    } else{
      // 默认布局
         CGFloat windowCloseBtnWidth = 30;
         CGFloat windowCloseBtnHeight = 30;
         JVLayoutConstraint *windowCloseBtnConstraintX = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeRight multiplier:1 constant:-5];
         JVLayoutConstraint *windowCloseBtnConstraintY = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeTop multiplier:1 constant:5];
         JVLayoutConstraint *windowCloseBtnConstraintW = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeWidth multiplier:1 constant:windowCloseBtnWidth];
         JVLayoutConstraint *windowCloseBtnConstraintH = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeHeight multiplier:1 constant:windowCloseBtnHeight];
         config.windowCloseBtnConstraints = @[windowCloseBtnConstraintX,windowCloseBtnConstraintY,windowCloseBtnConstraintW,windowCloseBtnConstraintH];
    }
  } else{
    //背景图
    if(configParams[BACK_GROUND_IMAGE]){
         config.authPageBackgroundImage = [self imageNamed:configParams[BACK_GROUND_IMAGE]];
     }

    //导航栏
    if([configParams[NAV_HIDDEN] isKindOfClass:[NSNumber class]]){
         config.navCustom = [configParams[NAV_HIDDEN] boolValue];
    }
    if(configParams[NAV_COLOR]){
        NSNumber *color = configParams[NAV_COLOR];
        UIColor *navColor =  UIColorFromRGBValue(color.integerValue);
        config.navColor = navColor;
    }
    //导航栏标题
    NSString *navTitle = @"登录统一认证";
    if(configParams[NAV_TITLE]){
        navTitle = configParams[NAV_TITLE];
    }
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc]initWithString:navTitle];
    if(configParams[NAV_TITLE_SIZE]){
        CGFloat navTitleSize = [configParams[NAV_TITLE_SIZE] floatValue];
        [attrStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:navTitleSize] range:NSMakeRange(0, navTitle.length)];
    }
    if(configParams[NAV_TITLE_COLOR]){
        NSNumber *color = configParams[NAV_TITLE_COLOR];
        UIColor *navTitleColor =  UIColorFromRGBValue(color.integerValue);
        [attrStr addAttribute:NSForegroundColorAttributeName value:navTitleColor range:NSMakeRange(0, navTitle.length)];
    }
    config.navText = attrStr;
    //导航栏返回按钮
    if([configParams[NAV_RETURN_HIDDEN] isKindOfClass:[NSNumber class]]){
        config.navReturnHidden = [configParams[NAV_RETURN_HIDDEN] boolValue];
    }
    if(configParams[NAV_RETURN_IMAGE]){
        config.navReturnImg = [self imageNamed:configParams[NAV_RETURN_IMAGE]];
    }
  }



    //状态栏
    if([configParams[STATUS_BAR_HIDDEN] isKindOfClass:[NSNumber class]]){
        config.prefersStatusBarHidden = [configParams[STATUS_BAR_HIDDEN] boolValue];
    }
    if(configParams[STATUS_BAR_MODE]){
        NSString *statusBarMode = configParams[STATUS_BAR_MODE];
        if([statusBarMode isEqualToString:STATUS_BAR_MODE_LIGHT]){
            config.preferredStatusBarStyle = UIStatusBarStyleLightContent;
        }else if([statusBarMode isEqualToString:STATUS_BAR_MODE_DARK]){
            if (@available(iOS 13.0, *)) {
                config.preferredStatusBarStyle = UIStatusBarStyleDarkContent;
            }
        }else{
            config.preferredStatusBarStyle = UIStatusBarStyleDefault;
        }
    }

    //logo
    if([configParams[LOGO_HIDDEN] isKindOfClass:[NSNumber class]]){
        config.logoHidden = [configParams[LOGO_HIDDEN] boolValue];
    }
    if(configParams[LOGO_IMAGE]){
        config.logoImg = [self imageNamed:configParams[LOGO_IMAGE]];
    }
    if(configParams[LOGO_X]&&configParams[LOGO_Y]&&configParams[LOGO_W]&&configParams[LOGO_H]){
        CGFloat logoX = [configParams[LOGO_X] floatValue];
        CGFloat logoY = [configParams[LOGO_Y] floatValue];
        CGFloat logoW = [configParams[LOGO_W] floatValue];
        CGFloat logoH = [configParams[LOGO_H] floatValue];
        config.logoConstraints = [self layoutConstraint:(logoX) y:logoY w:logoW h:logoH];
    }
    //number
    if(configParams[NUMBER_SIZE]){
        CGFloat numberSize = [configParams[NUMBER_SIZE] floatValue];
        config.numberFont = [UIFont systemFontOfSize:numberSize];
    }
    if(configParams[NUMBER_COLOR]){
        NSNumber *color = configParams[NUMBER_COLOR];
        UIColor *navTitleColor =  UIColorFromRGBValue(color.integerValue);
        config.numberColor = navTitleColor;
    }
    if(configParams[NUMBER_X]&&configParams[NUMBER_Y]&&configParams[NUMBER_W]&&configParams[NUMBER_H]){
        CGFloat numberX = [configParams[NUMBER_X] floatValue];
        CGFloat numberY = [configParams[NUMBER_Y] floatValue];
        CGFloat numberW = [configParams[NUMBER_W] floatValue];
        CGFloat numberH = [configParams[NUMBER_H] floatValue];
        config.numberConstraints = [self layoutConstraint:(numberX) y:numberY w:numberW h:numberH];
    }
    //slogan
    if([configParams[SLOGAN_HIDDEN] isKindOfClass:[NSNumber class]]){
        //todo
    }
    if(configParams[SLOGAN_TEXT_SIZE]){
        CGFloat sloganTextSize = [configParams[SLOGAN_TEXT_SIZE] floatValue];
        config.sloganFont = [UIFont systemFontOfSize:sloganTextSize];
    }
    if(configParams[SLOGAN_TEXT_COLOR]){
        NSNumber *color = configParams[SLOGAN_TEXT_COLOR];
        UIColor *sloganTextColor =  UIColorFromRGBValue(color.integerValue);
        config.sloganTextColor = sloganTextColor;
    }
    if(configParams[SLOGAN_X]&&configParams[SLOGAN_Y]&&configParams[SLOGAN_W]&&configParams[SLOGAN_H]){
        CGFloat sloganX = [configParams[SLOGAN_X] floatValue];
        CGFloat sloganY = [configParams[SLOGAN_Y] floatValue];
        CGFloat sloganW = [configParams[SLOGAN_W] floatValue];
        CGFloat sloganH = [configParams[SLOGAN_H] floatValue];
        config.sloganConstraints = [self layoutConstraint:(sloganX) y:sloganY w:sloganW h:sloganH];
    }
    //登录按钮
    if(configParams[LOGIN_BTN_TEXT]){
        config.logBtnText= configParams[LOGIN_BTN_TEXT];
    }
    if(configParams[LOGIN_BTN_TEXT_SIZE]){
        CGFloat loginBtnTextSize = [configParams[LOGIN_BTN_TEXT_SIZE] floatValue];
        config.logBtnFont = [UIFont systemFontOfSize:loginBtnTextSize];
    }
    if(configParams[LOGIN_BTN_TEXT_COLOR]){
        NSNumber *color = configParams[LOGIN_BTN_TEXT_COLOR];
        UIColor *loginBtnTextColor =  UIColorFromRGBValue(color.integerValue);
        config.logBtnTextColor = loginBtnTextColor;
    }
    if(configParams[LOGIN_BTN_NORMAL_IMAGE] && configParams[LOGIN_BTN_DISABLED_IMAGE] && configParams[LOGIN_BTN_SELECTED_IMAGE]){
        UIImage *loginBtnNormalImage = [self imageNamed:configParams[LOGIN_BTN_NORMAL_IMAGE]];
        UIImage *loginBtnDisabledImage = [self imageNamed:configParams[LOGIN_BTN_DISABLED_IMAGE]];
        UIImage *loginBtnSelectedImage = [self imageNamed:configParams[LOGIN_BTN_SELECTED_IMAGE]];
        config.logBtnImgs = @[loginBtnNormalImage,loginBtnDisabledImage,loginBtnSelectedImage];
    }
    if(configParams[LOGIN_BTN_X]&&configParams[LOGIN_BTN_Y]&&configParams[LOGIN_BTN_W]&&configParams[LOGIN_BTN_H]){
        CGFloat loginBtnX = [configParams[LOGIN_BTN_X] floatValue];
        CGFloat loginBtnY = [configParams[LOGIN_BTN_Y] floatValue];
        CGFloat loginBtnW = [configParams[LOGIN_BTN_W] floatValue];
        CGFloat loginBtnH = [configParams[LOGIN_BTN_H] floatValue];
        config.logBtnConstraints = [self layoutConstraint:(loginBtnX) y:loginBtnY w:loginBtnW h:loginBtnH];
    }
    if(configParams[PRIVACY_ONE]){
        NSArray *parivacyOne = configParams[PRIVACY_ONE];
        config.appPrivacyOne = parivacyOne;
    }
    if(configParams[PRIVACY_TWO]){
        NSArray *parivacyTwo = configParams[PRIVACY_TWO];
        config.appPrivacyTwo = parivacyTwo;
    }
    if(configParams[PRIVACY_COLOR]){
        NSNumber *privacyNameColorNum = configParams[PRIVACY_COLOR][0];
        NSNumber *privacyUrlColorNum = configParams[PRIVACY_COLOR][1];
        UIColor *parivacyNameColor =  UIColorFromRGBValue(privacyNameColorNum.integerValue);
        UIColor *parivacyUrlColor =  UIColorFromRGBValue(privacyUrlColorNum.integerValue);
        config.appPrivacyColor = @[parivacyNameColor,parivacyUrlColor];
    }
    if(configParams[PRIVACY_TEXT]){
        NSArray *privacyText = configParams[PRIVACY_TEXT];
        config.privacyComponents = privacyText;
    }
    if(configParams[PRIVACY_TEXT_SIZE]){
        config.privacyTextFontSize = [configParams[PRIVACY_TEXT_SIZE] floatValue];
    }
    if(configParams[PRIVACY_TEXT_GRAVITY_MODE]){
        NSString *privacyTextGravityMode = configParams[PRIVACY_TEXT_GRAVITY_MODE];
        if([privacyTextGravityMode isEqualToString:PRIVACY_TEXT_GRAVITY_LEFT]){
            config.privacyTextAlignment = NSTextAlignmentLeft;
        }else if([privacyTextGravityMode isEqualToString:PRIVACY_TEXT_GRAVITY_CENTER]){
            config.privacyTextAlignment = NSTextAlignmentCenter;
        }else{
            config.privacyTextAlignment = NSTextAlignmentLeft;
        }
    }
    if([configParams[PRIVACY_BOOK_SYMBOL_ENABLE] isKindOfClass:[NSNumber class]]){
        config.privacyShowBookSymbol = [configParams[PRIVACY_BOOK_SYMBOL_ENABLE] boolValue];
    }
    if(configParams[PRIVACY_X]&&configParams[PRIVACY_Y]&&configParams[PRIVACY_W]&&configParams[PRIVACY_H]){
        CGFloat privacyX = [configParams[PRIVACY_X] floatValue];
        CGFloat privacyY = -[configParams[PRIVACY_Y] floatValue];
        CGFloat privacyW = [configParams[PRIVACY_W] floatValue];
        CGFloat privacyH = [configParams[PRIVACY_H] floatValue];
        JVLayoutConstraint *constraintX = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeLeft multiplier:1 constant:privacyX];
        JVLayoutConstraint *constraintY = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeBottom multiplier:1 constant:privacyY];
        JVLayoutConstraint *constraintW = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeWidth multiplier:1 constant:privacyW];
        JVLayoutConstraint *constraintH = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeHeight multiplier:1 constant:privacyH];
        config.privacyConstraints = @[constraintX,constraintY,constraintW,constraintH];
    }
    //checkbox
    if([configParams[PRIVACY_CHECKBOX_HIDDEN] isKindOfClass:[NSNumber class]]){
        config.checkViewHidden = [configParams[PRIVACY_CHECKBOX_HIDDEN] boolValue];
    }
    if([configParams[PRIVACY_CHECK_ENABLE] isKindOfClass:[NSNumber class]]){
        config.privacyState = [configParams[PRIVACY_CHECK_ENABLE] boolValue];
    }
    if(configParams[PRIVACY_CHECKED_IMAGE]){
        config.checkedImg = [self imageNamed:configParams[PRIVACY_CHECKED_IMAGE]];
    }
    if(configParams[PRIVACY_UNCHECKED_IMAGE]){
        config.uncheckedImg = [self imageNamed:configParams[PRIVACY_UNCHECKED_IMAGE]];
    }
    CGFloat privacyCheckboxW = config.uncheckedImg.size.width;
    CGFloat privacyCheckboxH = config.uncheckedImg.size.height;
    JVLayoutConstraint *constraintX = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemPrivacy attribute:NSLayoutAttributeLeft multiplier:1 constant:-15];
    JVLayoutConstraint *constraintY = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemPrivacy attribute:NSLayoutAttributeTop multiplier:1 constant:2];
    JVLayoutConstraint *constraintW = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeWidth multiplier:1 constant:privacyCheckboxW];
    JVLayoutConstraint *constraintH = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeHeight multiplier:1 constant:privacyCheckboxH];
    config.checkViewConstraints = @[constraintX,constraintY,constraintW,constraintH];

    if(configParams[CHECK_VIEW_CONSTRAINTS]){
        NSArray *checkViewConstraints= [RCTJVerificationModule configConstraintWithAttributes:configParams[CHECK_VIEW_CONSTRAINTS]];
        config.checkViewConstraints = checkViewConstraints;
    }

    //协议
    if(configParams[PRIVACY_WEB_NAV_COLOR]){
        NSNumber *color = configParams[PRIVACY_WEB_NAV_COLOR];
        UIColor *privacyWebNavColor =  UIColorFromRGBValue(color.integerValue);
        config.agreementNavBackgroundColor = privacyWebNavColor;
    }
    NSString *privacyWebNavTitle = @"登录";
    if(configParams[PRIVACY_WEB_NAV_TITLE]){
        privacyWebNavTitle = configParams[PRIVACY_WEB_NAV_TITLE];
    }
    UIFont *privacyWebNavTitleSize = [UIFont systemFontOfSize:12];
    if(configParams[PRIVACY_WEB_NAV_TITLE_SIZE]){
        CGFloat titleSize = [configParams[PRIVACY_WEB_NAV_TITLE_SIZE] floatValue];
        privacyWebNavTitleSize = [UIFont systemFontOfSize:titleSize];
    }
    UIColor *privacyWebNavTitleColor = [UIColor blackColor];
    if(configParams[PRIVACY_WEB_NAV_TITLE_COLOR]){
        NSNumber *color = configParams[PRIVACY_WEB_NAV_TITLE_COLOR];
        privacyWebNavTitleColor = UIColorFromRGBValue(color.integerValue);
    }
    config.agreementNavText = [[NSAttributedString alloc]initWithString:privacyWebNavTitle attributes:@{NSForegroundColorAttributeName:privacyWebNavTitleColor, NSFontAttributeName:privacyWebNavTitleSize}];
    if(configParams[PRIVACY_WEB_NAV_RETURN_IMAGE]){
        config.agreementNavReturnImage = [self imageNamed:configParams[PRIVACY_WEB_NAV_RETURN_IMAGE]];
    }
    // loading
    JVLayoutConstraint *loadingConstraintX = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
     JVLayoutConstraint *loadingConstraintY = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
     JVLayoutConstraint *loadingConstraintW = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeWidth multiplier:1 constant:30];
     JVLayoutConstraint *loadingConstraintH = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeHeight multiplier:1 constant:30];
     config.loadingConstraints = @[loadingConstraintX,loadingConstraintY,loadingConstraintW,loadingConstraintH];
    return config;
}

- (JVUIConfig*)customWindow: (NSDictionary *)configParams{
    JVUIConfig *config = [[JVUIConfig alloc] init];
    config.navCustom = YES;
    config.autoLayout = YES;
    config.modalTransitionStyle =  UIModalTransitionStyleCrossDissolve;
    config.agreementNavReturnImage = [self imageNamed:@"close"];

    //弹框
    config.showWindow = YES;
    config.windowBackgroundAlpha = 0.3;
    config.windowCornerRadius = 6;


    CGFloat windowW = 320;
    CGFloat windowH = 250;
    JVLayoutConstraint *windowConstraintX = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    JVLayoutConstraint *windowConstraintY = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];

    JVLayoutConstraint *windowConstraintW = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeWidth multiplier:1 constant:windowW];
    JVLayoutConstraint *windowConstraintH = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeHeight multiplier:1 constant:windowH];
    config.windowConstraints = @[windowConstraintY,windowConstraintH,windowConstraintX,windowConstraintW];

    JVLayoutConstraint *windowConstraintW1 = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeWidth multiplier:1 constant:480];
    JVLayoutConstraint *windowConstraintH1 = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeHeight multiplier:1 constant:250];
    config.windowHorizontalConstraints =@[windowConstraintY,windowConstraintH1,windowConstraintX,windowConstraintW1];


    //弹窗close按钮
    UIImage *window_close_nor_image = [self imageNamed:@"close_icon"];
    UIImage *window_close_hig_image = [self imageNamed:@"close_icon"];
    if (window_close_nor_image && window_close_hig_image) {
        config.windowCloseBtnImgs = @[window_close_nor_image, window_close_hig_image];
    }
    CGFloat windowCloseBtnWidth = 30;
    CGFloat windowCloseBtnHeight = 30;
    JVLayoutConstraint *windowCloseBtnConstraintX = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeRight multiplier:1 constant:-5];
    JVLayoutConstraint *windowCloseBtnConstraintY = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeTop multiplier:1 constant:5];
    JVLayoutConstraint *windowCloseBtnConstraintW = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeWidth multiplier:1 constant:windowCloseBtnWidth];
    JVLayoutConstraint *windowCloseBtnConstraintH = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeHeight multiplier:1 constant:windowCloseBtnHeight];
    config.windowCloseBtnConstraints = @[windowCloseBtnConstraintX,windowCloseBtnConstraintY,windowCloseBtnConstraintW,windowCloseBtnConstraintH];


    //logo
  if(configParams[LOGO_IMAGE]){
         config.logoImg = [self imageNamed:configParams[LOGO_IMAGE]];
     }
    CGFloat logoWidth = 105;
    CGFloat logoHeight = 26;
    JVLayoutConstraint *logoConstraintX = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    JVLayoutConstraint *logoConstraintY = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeTop multiplier:1 constant:40];
    JVLayoutConstraint *logoConstraintW = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeWidth multiplier:1 constant:logoWidth];
    JVLayoutConstraint *logoConstraintH = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeHeight multiplier:1 constant:logoHeight];
    config.logoConstraints = @[logoConstraintX,logoConstraintY,logoConstraintW,logoConstraintH];

    JVLayoutConstraint *logoConstraintLeft = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeLeft multiplier:1 constant:16];

    JVLayoutConstraint *logoConstraintTop = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeTop multiplier:1 constant:11];

    config.logoHorizontalConstraints = @[logoConstraintLeft,logoConstraintTop,logoConstraintW,logoConstraintH];


    //号码栏
    JVLayoutConstraint *numberConstraintX = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    JVLayoutConstraint *numberConstraintY = [JVLayoutConstraint constraintWithAttribute: NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemLogo attribute:NSLayoutAttributeBottom multiplier:1 constant:14];

    JVLayoutConstraint *numberConstraintH = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeHeight multiplier:1 constant:28];
    JVLayoutConstraint *numberConstraintW = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeWidth multiplier:1 constant:200];

    JVLayoutConstraint *numberConstraintY1 = [JVLayoutConstraint constraintWithAttribute: NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemLogo attribute:NSLayoutAttributeBottom multiplier:1 constant:39];

    config.numberConstraints = @[numberConstraintX,numberConstraintY,numberConstraintH,numberConstraintW];
    config.numberHorizontalConstraints = @[numberConstraintX,numberConstraintY1,numberConstraintH,numberConstraintW];

    //slogan展示
  if(configParams[SLOGAN_TEXT_COLOR]){
       NSNumber *color = configParams[SLOGAN_TEXT_COLOR];
       UIColor *sloganTextColor =  UIColorFromRGBValue(color.integerValue);
       config.sloganTextColor = sloganTextColor;
  }

    JVLayoutConstraint *sloganConstraintX = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    JVLayoutConstraint *sloganConstraintY = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNumber attribute:NSLayoutAttributeBottom   multiplier:1 constant:4];
    JVLayoutConstraint *sloganConstraintH = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeHeight multiplier:1 constant:17];
    JVLayoutConstraint *sloganConstraintW = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeWidth multiplier:1 constant:200];

    config.sloganConstraints = @[sloganConstraintX,sloganConstraintY,sloganConstraintW,sloganConstraintH];

    //登录按钮
//    UIImage *login_nor_image = [UIImage imageNamed:@"btn_38px"];
//    UIImage *login_dis_image = [UIImage imageNamed:@"btn_38px_ull"];
//    UIImage *login_hig_image = [UIImage imageNamed:@"btn_38px"];
//    if (login_nor_image && login_dis_image && login_hig_image) {
//        config.logBtnImgs = @[login_nor_image, login_dis_image, login_hig_image];
//    }
    if(configParams[LOGIN_BTN_TEXT]){
      config.logBtnText= configParams[LOGIN_BTN_TEXT];
    }

    CGFloat loginButtonWidth = 220;
    CGFloat loginButtonHeight = 38;
    JVLayoutConstraint *loginConstraintX = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    JVLayoutConstraint *loginConstraintY = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSlogan attribute:NSLayoutAttributeBottom multiplier:1 constant:10];
    JVLayoutConstraint *loginConstraintW = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeWidth multiplier:1 constant:loginButtonWidth];
    JVLayoutConstraint *loginConstraintH = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeHeight multiplier:1 constant:loginButtonHeight];
    JVLayoutConstraint *loginConstraintY1 = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSlogan attribute:NSLayoutAttributeBottom multiplier:1 constant:13];
    config.logBtnConstraints = @[loginConstraintX,loginConstraintY,loginConstraintW,loginConstraintH];
    config.logBtnHorizontalConstraints = @[loginConstraintX,loginConstraintY1,loginConstraintW,loginConstraintH];
    //勾选框
    config.checkViewHidden = YES;
    //隐私
    if(configParams[PRIVACY_TEXT]){
       NSArray *privacyText = configParams[PRIVACY_TEXT];
       config.privacyComponents = privacyText;
    }
    config.privacyState = YES;
    config.privacyTextAlignment = NSTextAlignmentCenter;
    if(configParams[PRIVACY_COLOR]){
        NSNumber *privacyNameColorNum = configParams[PRIVACY_COLOR][0];
        NSNumber *privacyUrlColorNum = configParams[PRIVACY_COLOR][1];
        UIColor *parivacyNameColor =  UIColorFromRGBValue(privacyNameColorNum.integerValue);
        UIColor *parivacyUrlColor =  UIColorFromRGBValue(privacyUrlColorNum.integerValue);
        config.appPrivacyColor = @[parivacyNameColor,parivacyUrlColor];
    }
    if(configParams[PRIVACY_TEXT_SIZE]){
        config.privacyTextFontSize = [configParams[PRIVACY_TEXT_SIZE] floatValue];
    }

    JVLayoutConstraint *privacyConstraintX = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    JVLayoutConstraint *privacyConstraintW = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeWidth multiplier:1 constant:180];
    JVLayoutConstraint *privacyConstraintY = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeBottom multiplier:1 constant:-21];
    JVLayoutConstraint *privacyConstraintH = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeHeight multiplier:1 constant:32];
    JVLayoutConstraint *privacyConstraintY1 = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeBottom multiplier:1 constant:-23];
    JVLayoutConstraint *privacyConstraintH1 = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeHeight multiplier:1 constant:14];
    JVLayoutConstraint *privacyConstraintW1 = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeWidth multiplier:1 constant:400];
    config.privacyConstraints = @[privacyConstraintX,privacyConstraintY,privacyConstraintH,privacyConstraintW];
    config.privacyHorizontalConstraints = @[privacyConstraintX,privacyConstraintY1,privacyConstraintH1,privacyConstraintW1];
    //loading
    JVLayoutConstraint *loadingConstraintX = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    JVLayoutConstraint *loadingConstraintY = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
    JVLayoutConstraint *loadingConstraintW = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeWidth multiplier:1 constant:30];
    JVLayoutConstraint *loadingConstraintH = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeHeight multiplier:1 constant:30];
    config.loadingConstraints = @[loadingConstraintX,loadingConstraintY,loadingConstraintW,loadingConstraintH];

//    [JVERIFICATIONService customUIWithConfig:config customViews:^(UIView *customAreaView) {
//
//    }];
    return config;
}

//获取UIImage
- (UIImage *)imageNamed:(NSString *)imageName
{
    if (![imageName isKindOfClass:[NSString class]]) {
        return nil;
    }
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:JVERIFICATION_RESOURCE ofType:@"bundle"];
    UIImage *image= [UIImage imageWithContentsOfFile:[bundlePath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.png",imageName]]];
    return image;
}

//设置x,y,w,h
- (NSArray <JVLayoutConstraint*>*)layoutConstraint:(CGFloat )x y:(CGFloat )y w:(CGFloat )w h:(CGFloat)h
{
    JVLayoutConstraint *constraintX = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeLeft multiplier:1 constant:x];
    JVLayoutConstraint *constraintY = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeTop multiplier:1 constant:y];
    JVLayoutConstraint *constraintW = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeWidth multiplier:1 constant:w];
    JVLayoutConstraint *constraintH = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeHeight multiplier:1 constant:h];
    return @[constraintX,constraintY,constraintW,constraintH];
}

// 设置宽高
+ (NSArray*)configConstraintWithAttributes:(NSArray*)keys{
    NSAssert(keys.count == 4, @"你必须按照文档规则设置参数(centerX,centerY,width,height)");
    NSMutableArray *constraints = [NSMutableArray arrayWithCapacity:4];
    NSArray* cons = keys;
    CGFloat centerX = [cons[0] floatValue];
    CGFloat centerY = [cons[1] floatValue];
    CGFloat w = [cons[2] floatValue];
    CGFloat h = [cons[3] floatValue];
    JVLayoutConstraint *constraintX = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeLeft multiplier:1 constant:centerX];
    JVLayoutConstraint *constraintY = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemSuper attribute:NSLayoutAttributeBottom multiplier:1 constant:centerY];
    JVLayoutConstraint *constraintW = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeWidth multiplier:1 constant:w];
    JVLayoutConstraint *constraintH = [JVLayoutConstraint constraintWithAttribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:JVLayoutItemNone attribute:NSLayoutAttributeHeight multiplier:1 constant:h];
    [constraints addObjectsFromArray:@[constraintX,constraintY,constraintW,constraintH]];
    return constraints;
}

@end
