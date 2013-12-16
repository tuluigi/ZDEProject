//
//  CategoryListCell.h
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-13.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ProjectBean;
@protocol OneCategoryDelegate <NSObject>
@optional
-(void)oneCatViewSelectedWithBean:(ProjectBean *)bean;
@end



@interface OneCatgoryView : UIView
@property(nonatomic,strong ) ProjectBean *ptBean;
@property(nonatomic,strong ) UIImageView *bgImgView;
@property(nonatomic,strong ) UILabel     *contentLb;
@property(nonatomic,assign)id<OneCategoryDelegate> delegate;
@end


@interface CategoryListCell : UITableViewCell<OneCategoryDelegate>
{
 
}
@property(nonatomic,strong) OneCatgoryView *firstView,*secondView;
@end
