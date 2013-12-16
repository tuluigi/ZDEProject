//
//  HomeViewController.h
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-10.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HMBanerView;
@interface HomeViewController : BaseViewController<IIViewDeckControllerDelegate>
{
    HMBanerView *_hmBannerView;
}
@end

@interface HMBanerView : UIImageView


@end

@interface HomeView : UIView
{
    NSMutableArray *dataArry;
}
@end