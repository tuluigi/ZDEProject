//
//  ZDTabBarController.m
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-11.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import "ZDTabBarController.h"
#import "HomeHeaderView.h"
@interface ZDTabBarController ()

@end
#define H_Button_Width    64.0
#define H_Button_Height   44.0
#define H_Magrin_Height    6.0
#define H_Button_Tag      1000
@implementation ZDTabBarController

static ZDTabBarController *_zdTabBarCtr=nil;
+(ZDTabBarController *)sharedZDTabBarController{
    @synchronized(self){
        if (_zdTabBarCtr==nil) {
            _zdTabBarCtr=[[ZDTabBarController alloc] init]; 
        }
    }
    return _zdTabBarCtr;
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage *bgimg=[UIImage imageNamed:@"m_bg.jpg"];
    UIImageView *bgView=[[UIImageView alloc] initWithFrame:self.view.frame];
    bgView.image=bgimg;
    //[self.view addSubview:bgView];
     
    self.view.backgroundColor=[UIColor colorWithPatternImage:bgimg];
     //self.tabBar.hidden=YES;
    [self hiddenTabBar];
    [self onPerforInit];
    HomeHeaderView *homeHeaderView=[[HomeHeaderView alloc] initWithFrame:CGRectMake(0, 0, 320, 44.0)];
    [self.view addSubview:homeHeaderView];
}

-(void)onPerforInit{
    UIButton *homeBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    homeBtn.frame=CGRectMake(0, __gScreenHeight-H_Button_Height, H_Button_Width, H_Button_Height);
    [homeBtn setBackgroundImage:[UIImage imageNamed:@"m_home.png"] forState:UIControlStateNormal];
    [homeBtn setBackgroundImage:[UIImage imageNamed:@"m_home1.png"] forState:UIControlStateSelected];
    [homeBtn addTarget:self action:@selector(footItemButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    homeBtn.tag=H_Button_Tag+TabBarItemHome;
    homeBtn.selected=YES;
    lastClickedBtn=homeBtn;
    [self.view addSubview:homeBtn];
    
    UIButton *rankBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    [rankBtn addTarget:self action:@selector(footItemButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    rankBtn.frame=CGRectMake(H_Button_Width,__gScreenHeight- H_Button_Height, H_Button_Width, H_Button_Height);
    [rankBtn setBackgroundImage:[UIImage imageNamed:@"m_rank.png"] forState:UIControlStateNormal];
    [rankBtn setBackgroundImage:[UIImage imageNamed:@"m_rank1.png"] forState:UIControlStateSelected];
    rankBtn.tag=H_Button_Tag+TabBarItemRank;
    [self.view  addSubview:rankBtn];
    
    UIButton *shakeBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    [shakeBtn addTarget:self action:@selector(footItemButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    shakeBtn.frame=CGRectMake(H_Button_Width*2, __gScreenHeight-H_Magrin_Height-H_Button_Height, H_Button_Width, H_Button_Height+H_Magrin_Height);
    [shakeBtn setBackgroundImage:[UIImage imageNamed:@"m_shake.png"] forState:UIControlStateNormal];
    [shakeBtn setBackgroundImage:[UIImage imageNamed:@"m_shake1.png"] forState:UIControlStateSelected];
    shakeBtn.tag=H_Button_Tag+TabBarItemShake;
    [self.view  addSubview:shakeBtn];
    
    UIButton *searchBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    [searchBtn addTarget:self action:@selector(footItemButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    searchBtn.frame=CGRectMake(H_Button_Width*3, __gScreenHeight-H_Button_Height, H_Button_Width, H_Button_Height);
    [searchBtn setBackgroundImage:[UIImage imageNamed:@"m_search.png"] forState:UIControlStateNormal];
    [searchBtn setBackgroundImage:[UIImage imageNamed:@"m_search1.png"] forState:UIControlStateSelected];
    searchBtn.tag=H_Button_Tag+TabBarItemSearch;
    [self.view  addSubview:searchBtn];
    
    UIButton *moreBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    [moreBtn addTarget:self action:@selector(footItemButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    moreBtn.frame=CGRectMake(H_Button_Width*4, __gScreenHeight-H_Button_Height, H_Button_Width, H_Button_Height);
    [moreBtn setBackgroundImage:[UIImage imageNamed:@"m_more.png"] forState:UIControlStateNormal];
    [moreBtn setBackgroundImage:[UIImage imageNamed:@"m_more1.png"] forState:UIControlStateSelected];
    moreBtn.tag=H_Button_Tag+TabBarItemMore;
    [self.view  addSubview:moreBtn];

}
-(void)footItemButtonClicked:(UIButton *)sender{
    lastClickedBtn.selected=!lastClickedBtn.selected;
    self.selectedIndex=sender.tag-H_Button_Tag;
    sender.selected=YES;
    lastClickedBtn=sender;
}
-(void)hiddenTabBar{
    for (UIView * barview in self.view.subviews) {
        if ([barview isKindOfClass:[UITabBar class]]) {
            barview.hidden=YES;
            //break;
        }
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
