//
//  MoreViewController.h
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-17.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoreViewController : UIViewController
{
    IBOutlet UIImageView *aboutUsImg,*phoneImg,*lawImg,*versionImg;
    IBOutlet UILabel     *aboutUsLb,*phoneLb,*lawLb,*versionLb;
}

- (IBAction)moreMenuButtonClicked:(UIButton *)sender;
@end
