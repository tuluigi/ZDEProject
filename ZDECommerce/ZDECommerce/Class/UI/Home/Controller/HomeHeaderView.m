//
//  HomeHeaderView.m
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-11.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import "HomeHeaderView.h"

@implementation HomeHeaderView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self onPerformInit];
    }
    return self;
}
-(void)onPerformInit{
    UIImageView *bgImageView=[[UIImageView alloc] initWithFrame:self.frame];
    bgImageView.image=[UIImage imageNamed:@"m_header_bg.png"];
    [self addSubview:bgImageView];
    
    UIImageView *logoImgView=[[UIImageView alloc] initWithFrame:CGRectMake(50, 1, 100, 42)];
  //  logoImgView.image=[UIImage  imageNamed:@"m_logo.png"];
    [self addSubview:logoImgView];
    
    UIButton *menuBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    [menuBtn setFrame:CGRectMake(5, 2, 40, 40)];
    [menuBtn setBackgroundImage:[UIImage imageNamed:@"m_menuBtn.png"] forState:UIControlStateNormal];
    [menuBtn addTarget:self action:@selector(headerViewBtnCliked:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:menuBtn];
    
    
    UIButton *userBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    [userBtn setFrame:CGRectMake(280, 2, 40, 40)];
    [userBtn setBackgroundImage:[UIImage imageNamed:@"m_user.png"] forState:UIControlStateNormal];
    [userBtn addTarget:self action:@selector(headerViewBtnCliked:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:userBtn];  
}
-(void)headerViewBtnCliked:(UIButton *)sender{
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
