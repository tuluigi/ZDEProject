//
//  UserLoginViewController.m
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-13.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import "UserLoginViewController.h"

@interface UserLoginViewController ()

@end
#define  kLoginImgBgTag          300
#define  kLoginImgLogoTag        310
#define  kLoginTextViewTag       320
#define  kTextFiledHeight        40.0
#define  kLoginMagrinTop         15.0
@implementation UserLoginViewController
@synthesize isLogin;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)viewWillAppear:(BOOL)animated{
      isLogin=NO;
    [self setWidgetToDefault];
}

-(void)setWidgetToDefault{
  
     CGRect frame=imageViewBg.frame;
    CGRect textFrame=phoneTextFiedl.frame;
    if (isLogin) {
        loginBtn.selected=YES;
        registerBtn.selected=NO;
      
        frame.size.width=148.0;
        textFrame.size.width=100;
    }else{
        registerBtn.selected=YES;
        loginBtn.selected=NO;
        frame.size.width=248.0;
        textFrame.size.width=200;
    }
      [confirmBtn setTitle:(isLogin?kZD_UserLogoin:kZD_UserRegister) forState:UIControlStateNormal];
    imageViewBg.userInteractionEnabled=YES;
    imageViewBg.frame=frame;
    phoneTextFiedl.frame=textFrame;
    nameTextField.text=kZD_UserName;
    pwdTextField.text=kZD_UserPwd;
    phoneTextFiedl.text=(isLogin?kZD_VerfiyCode:kZD_PhoneNum);
    checkBtn.selected=NO;
    checkBtn.selected=NO;
    verfiyBtn.selected=NO;
    checkBtn.hidden=isLogin;
    messageLb.hidden=isLogin;
    verfiyBtn.hidden=!isLogin;
}
-(void)viewDidDisappear:(BOOL)animated{
    self.isLogin=NO;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self onPerformInit];
}
-(void)onPerformInit{
    [checkBtn setBackgroundImage:[UIImage imageNamed:@"u_checkebox.png"] forState:UIControlStateNormal];
    [checkBtn setBackgroundImage:[UIImage  imageNamed:@"u_checkbox1.png"] forState:UIControlStateSelected];
    
    [loginBtn setBackgroundImage:[UIImage imageNamed:@"u_header_bg.png"] forState:UIControlStateNormal];
    [loginBtn setBackgroundImage:[UIImage imageNamed:@"u_header_bg1.png"] forState:UIControlStateSelected];
    [registerBtn setBackgroundImage:[UIImage imageNamed:@"u_header_bg.png"] forState:UIControlStateNormal];
    [registerBtn setBackgroundImage:[UIImage imageNamed:@"u_header_bg1.png"] forState:UIControlStateSelected];
    
    [checkBtn setBackgroundImage:[UIImage imageNamed:@"u_checkbox.png"] forState:UIControlStateNormal];
    [checkBtn setBackgroundImage:[UIImage imageNamed:@"u_checkbox1.png"] forState:UIControlStateSelected];

}
-(IBAction)textFiledEndEdit:(UITextField *)_textFidld;{
    [_textFidld resignFirstResponder];
}


-(IBAction)userLoginButtonsClicked:(UIButton *)sender{
    switch (sender.tag) {
             
        case 20:// login
        {
           isLogin=YES;
            [self setWidgetToDefault];
        }
            break;
        case 21://register
        {
            isLogin=NO;
            [self setWidgetToDefault];
        }
            break;
        case 22:// agree agreementMessage
        {
            sender.selected=!sender.selected;
        }
            break;
        case 23:// login /register
        {
            if (isLogin) {//login 
                
            }else{//register
                
            }
        }
            break;
        case 24:{
            [[ZDTabBarController sharedZDTabBarController].navigationController dismissModalViewControllerAnimated:YES];
        }
            break;
        default:
            break;
    }
}
#pragma mark TextFileDelegate
- (void)textFieldDidBeginEditing:(UITextField *)textField{
   textField.text=@"";
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
