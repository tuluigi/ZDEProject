//
//  MoreDetailViewController.h
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-17.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoreDetailViewController : UIViewController
{
   
    IBOutlet UIImageView *logoImgView;
     IBOutlet UILabel     *titleLb;
}
@property(nonatomic,strong) NSString *imageName,*titleName;
 
@end
