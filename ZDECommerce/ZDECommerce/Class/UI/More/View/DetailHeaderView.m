//
//  DetailHeaderView.m
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-17.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import "DetailHeaderView.h"

@implementation DetailHeaderView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) { 
        UIImageView  *imgaeBg     = [[UIImageView alloc] initWithFrame:self.frame];
        imgaeBg.image=[UIImage imageNamed:@"m_header_bg.png"];
        
        UIImageView  *imagelLogo  = [[UIImageView alloc] initWithFrame:CGRectMake(100.0f, 0, 120.0f, 44.0f)];
        imagelLogo.image=[UIImage imageNamed:@"m_logo.png"];
        
        UIButton *backButton=[UIButton buttonWithType:UIButtonTypeCustom];
        [backButton setFrame:CGRectMake(2, 5, 62, 30)];
        [backButton setBackgroundImage:[UIImage imageNamed:@"u_backBtn.png"] forState:UIControlStateNormal];
        [backButton addTarget:self action:@selector(backToPrevious) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:imgaeBg];
        [self addSubview:imagelLogo];
        [self addSubview:backButton];
        
    }
    return self;
}
- (void)backToPrevious{
    [[ZDTabBarController sharedZDTabBarController].navigationController dismissViewControllerAnimated:YES completion:nil];
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
