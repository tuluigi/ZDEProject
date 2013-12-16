//
//  ZDTabBarController.h
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-11.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZDTabBarController : UITabBarController
{
    UIButton *lastClickedBtn;
}

+(ZDTabBarController *)sharedZDTabBarController;
@end
