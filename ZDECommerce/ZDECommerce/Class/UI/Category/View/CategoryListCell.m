//
//  CategoryListCell.m
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-13.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import "CategoryListCell.h"


@implementation OneCatgoryView
@synthesize delegate,ptBean;
@synthesize bgImgView,contentLb;
-(id)initWithFrame:(CGRect)frame{
    if (self==[super initWithFrame:frame]) {
        bgImgView=[[UIImageView alloc] initWithFrame:frame];
        [self addSubview:bgImgView];
        
        contentLb=[[UILabel alloc] initWithFrame:CGRectMake(0, frame.size.height-18.0, self.frame.size.width, 20.0)];
        [self addSubview:contentLb];
        
        self.layer.cornerRadius=5.0;
        self.layer.masksToBounds=YES;
        self.backgroundColor=[UIColor clearColor];
        UITapGestureRecognizer *tapGesture=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onOneCatViewTouched)];
        [self addGestureRecognizer:tapGesture];
    }
    return  self;
}

-(void)onOneCatViewTouched{
    if (nil!=delegate&&[delegate respondsToSelector:@selector(oneCatViewSelectedWithBean:)]) {
        [delegate oneCatViewSelectedWithBean:self.ptBean];
    }
}
@end

#define ZD_CCell_Height           80.0
#define ZD_CCell_Width            150.0
#define ZD_CCell_MagrinTop        5.0
@implementation CategoryListCell
@synthesize firstView,secondView;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        float margin_left=(320.0-2*ZD_CCell_Width)*3;
        
        firstView=[[OneCatgoryView alloc] initWithFrame:CGRectMake(margin_left, ZD_CCell_MagrinTop, ZD_CCell_Width, ZD_CCell_Height)];
        firstView.delegate=self;

        secondView=[[OneCatgoryView alloc] initWithFrame:CGRectMake(margin_left*2+ZD_CCell_Width, ZD_CCell_MagrinTop, ZD_CCell_Width, ZD_CCell_Height)];
        secondView.delegate=self;
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
