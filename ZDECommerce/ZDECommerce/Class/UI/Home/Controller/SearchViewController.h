//
//  SearchViewController.h
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-11.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchViewController : UIViewController<UITextFieldDelegate>
{
    IBOutlet UITextField *userIDTF,*userNameTF,*lowMoneyTF,*highMoneyTF;
    IBOutlet UIButton *areaBtn,*genderBtn,*searchBtn;
    IBOutlet UITableView *searchTableView;
}
-(IBAction)textFileEndEditing:(UITextField *)_textFiled;
@end
