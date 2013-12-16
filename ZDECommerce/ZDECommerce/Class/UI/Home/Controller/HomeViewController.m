//
//  HomeViewController.m
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-10.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import "HomeViewController.h"
#import "UserTool.h"
#import "UserLoginViewController.h"

@interface HomeViewController ()

@end
#define HM_BanerView_Height      150.0f  //上方的广告view的高度

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)viewDidAppear:(BOOL)animated{

}
- (void)viewDidLoad
{
    [super viewDidLoad];
    _hmBannerView=[[HMBanerView alloc] initWithFrame:CGRectMake(5.0f,40.0f, 310.0f, HM_BanerView_Height*__scale)];
   _hmBannerView.backgroundColor=[UIColor greenColor];

    [self.view addSubview:_hmBannerView];
    HomeView *_homeView=[[HomeView alloc] initWithFrame:CGRectMake(0.0f,44.0f+HM_BanerView_Height*__scale, 320.0f, __gScreenHeight-HM_BanerView_Height*__scale-44.0f-50.0f)];
    _homeView.backgroundColor=[UIColor blueColor];
    [self.view addSubview:_homeView];
    
    //[self getBanner]; 
}

#pragma makr IIViewDeckControllerDelegate
- (void)viewDeckController:(IIViewDeckController*)viewDeckController didOpenViewSide:(IIViewDeckSide)viewDeckSide animated:(BOOL)animated{
    if (viewDeckSide==IIViewDeckRightSide) {
        //if not login ，then logoin
        BOOL isLogin=[UserTool isLogIn];
        if (!isLogin) {
            [[ZDDeckViewController sharedZDDeckCtrl] toggleRightViewAnimated:YES];
            UserLoginViewController *userLoginVC=[[UserLoginViewController alloc] initWithNibName:@"UserLoginViewController" bundle:nil];
            [[ZDTabBarController    sharedZDTabBarController].navigationController presentModalViewController:userLoginVC animated:YES];
        }
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end

@implementation HMBanerView
#define BanerBtnWidth       25
#define BanerBtnHeigth      25
#define BanerBtnTag         210
-(id)initWithFrame:(CGRect)frame{
    if (self==[super initWithFrame:frame]) {
        self.layer.cornerRadius=5.0;
        self.layer.masksToBounds=YES;
        for ( int i=0; i<2; i++) {
            UIButton *opButton=[[UIButton alloc] initWithFrame:CGRectMake(i*(frame.size.width-45.0)+10, frame.size.height-BanerBtnHeigth-10.0, BanerBtnWidth, BanerBtnHeigth)];
            opButton.tag=BanerBtnTag+i;
            UIImage *btnImg=[UIImage imageNamed:[NSString stringWithFormat:@"m_banerBtn%d.png",i]];
            [opButton setBackgroundImage:btnImg forState:UIControlStateNormal];
            [opButton addTarget:self action:@selector(changeBaner:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:opButton];
        }
    }
    return  self;
}
-(void)changeBaner:(UIButton *)sender{
    if (sender.tag==BanerBtnTag) {// change left
        
    }else if(sender.tag==BanerBtnTag+1){// right
      
    }
}

@end

@implementation HomeView
#define HM_LB_Height              20
#define HM_Banner_Count           6  // banner count
#define HM_ImgView_Tag            1000
#define HM_ContentLB_Tag          100
#define Hm_MagrinLeft             5
#define HM_MagrinTop              5
#define HM_HeaderView_Heighet     25  
-(id)initWithFrame:(CGRect)frame{
    if (self==[super initWithFrame:frame]) {
        
        dataArry=[[NSMutableArray alloc] init];
        [self initCenterBannerViewWitFrame:frame];
    }
    return  self;
}

-(void)initCenterBannerViewWitFrame:(CGRect)frame{
    float  imgViewWith=(frame.size.width-3*Hm_MagrinLeft)/2;
    float  imgViewHeight=(frame.size.height-2*HM_MagrinTop-HM_HeaderView_Heighet)/3;

    UIImageView *banerShowImg=[[UIImageView alloc] initWithFrame:CGRectMake(Hm_MagrinLeft, 0, 60, HM_HeaderView_Heighet)];
    banerShowImg.image=[UIImage imageNamed:@"m_baner_show.png"];
    [self addSubview:banerShowImg];
    
    UIButton *refrashBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    [refrashBtn setFrame:CGRectMake(220, 0, 80, HM_HeaderView_Heighet)];
    [refrashBtn setBackgroundImage:[UIImage imageNamed:@"m_refrash_btn.png"] forState:UIControlStateNormal];
    [refrashBtn addTarget:self action:@selector(getNextGroupBaner) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:refrashBtn];

    for (int i=0; i<HM_Banner_Count; i++) {
        UIImageView *imgView=[[UIImageView alloc] initWithFrame:CGRectMake((i%2)*(imgViewWith+Hm_MagrinLeft)+Hm_MagrinLeft,(i/2)*(imgViewHeight+HM_MagrinTop)+HM_HeaderView_Heighet, imgViewWith, imgViewHeight)];
        imgView.tag=HM_ImgView_Tag+i;
        imgView.backgroundColor=[UIColor redColor];
        imgView.layer.cornerRadius=5.0;
        imgView.layer.masksToBounds=YES;
        UILabel *contentLb=[[UILabel alloc] initWithFrame:CGRectMake(0, imgViewHeight-HM_LB_Height, imgViewWith, HM_LB_Height)];
        contentLb.backgroundColor=[UIColor clearColor];
        contentLb.tag=HM_ContentLB_Tag+i;
        contentLb.text=@"test";
        [imgView addSubview:contentLb];
        [self addSubview:imgView];
    }
}
-(void)getNextGroupBaner{//刷新广告
   
}
-(void)setDataWithArry:(NSArray *)_arry{//如果arry 少于 6 条记录的话，多余的imgview 上的数据 要处理掉 
    if (_arry.count>0&&_arry) {
        if (dataArry.count) {
            [dataArry removeAllObjects];
        }
        [dataArry addObjectsFromArray:_arry];
        for (int i=0; i<dataArry.count; i++) {
            /*
            UIImageView *imgView=(UIImageView *)[self viewWithTag:HM_ImgView_Tag+i];
            UILabel *contentLB=(UILabel *)[self viewWithTag:HM_ContentLB_Tag+i];
             */
        }
    }
}
@end