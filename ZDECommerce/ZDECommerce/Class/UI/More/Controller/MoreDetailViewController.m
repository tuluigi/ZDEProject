//
//  MoreDetailViewController.m
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-17.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import "MoreDetailViewController.h"
#import "DetailHeaderView.h"
@interface MoreDetailViewController ()

@end

@implementation MoreDetailViewController
@synthesize titleName,imageName;
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
    DetailHeaderView *detailHeaderView=[[DetailHeaderView alloc] initWithFrame:CGRectMake(0, 0, 320.0f, 44.0f)];
    [self.view addSubview:detailHeaderView];
    logoImgView.image=[UIImage imageNamed:self.imageName];
    titleLb.text=self.titleName;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
