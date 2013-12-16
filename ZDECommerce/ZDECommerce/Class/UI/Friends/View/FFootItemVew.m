//
//  FFootItemVew.m
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-12.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import "FFootItemVew.h"
#define FF_Button_Height         44
//#define FF_Button_Width          ((320-__rightSize)/3)
#define FF_Button_Tag            300
@implementation FFootItemVew

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self onPerformInitWithFrame:frame];
    }
    return self;
}
-(void)onPerformInitWithFrame:(CGRect)frame{
    float FF_Button_Width=frame.size.width/3;
    UIButton *projectBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    projectBtn.frame=CGRectMake(0,0, FF_Button_Width, FF_Button_Height);
    [projectBtn setBackgroundImage:[UIImage imageNamed:@"f_project.png"] forState:UIControlStateNormal];
    [projectBtn setBackgroundImage:[UIImage imageNamed:@"f_project1.png"] forState:UIControlStateSelected];
    [projectBtn addTarget:self action:@selector(footItemButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
 
    [self addSubview:projectBtn];
    
    UIButton *messageBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    [messageBtn addTarget:self action:@selector(footItemButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    messageBtn.frame=CGRectMake(FF_Button_Width,0,FF_Button_Width ,FF_Button_Height);
    [messageBtn setBackgroundImage:[UIImage imageNamed:@"f_message.png"] forState:UIControlStateNormal];
    [messageBtn setBackgroundImage:[UIImage imageNamed:@"f_message1.png"] forState:UIControlStateSelected];

    [self  addSubview:messageBtn];
    
    UIButton *settingBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    [settingBtn addTarget:self action:@selector(footItemButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    settingBtn.frame=CGRectMake(FF_Button_Width*2,0,FF_Button_Width ,FF_Button_Height);
    [settingBtn setBackgroundImage:[UIImage imageNamed:@"f_setting.png"] forState:UIControlStateNormal];
    [settingBtn setBackgroundImage:[UIImage imageNamed:@"f_setting1.png"] forState:UIControlStateSelected];

    [self  addSubview:settingBtn];

}
-(void)footItemButtonClicked:(UIButton *)sender{
    //sender.selected=YES;
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
