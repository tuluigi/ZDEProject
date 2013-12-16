//
//  UserLoginViewController.h
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-13.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserLoginViewController : UIViewController<UITextFieldDelegate>
{
    UIButton *lastClikedBtn;
    //UIButton *loginBtn;//注册 登陆 button
    IBOutlet UIButton *loginBtn,*registerBtn,*checkBtn,*confirmBtn,*verfiyBtn;
    IBOutlet UITextField *nameTextField,*pwdTextField,*phoneTextFiedl;
    IBOutlet UIImageView *imageViewBg;
    IBOutlet UILabel *messageLb;
}
@property(nonatomic,assign) BOOL isLogin;
-(IBAction)userLoginButtonsClicked:(UIButton *)sender;
-(IBAction)textFiledEndEdit:(UITextField *)_textFidld;
@end
