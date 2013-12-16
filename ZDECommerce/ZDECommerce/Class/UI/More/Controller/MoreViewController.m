//
//  MoreViewController.m
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-17.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import "MoreViewController.h"
#import "MoreDetailViewController.h"
@interface MoreViewController ()

@end

@implementation MoreViewController

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
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)moreMenuButtonClicked:(UIButton *)sender
{
    MoreDetailViewController *_moreDetailVC=[[MoreDetailViewController alloc] initWithNibName:@"MoreDetailViewController" bundle:Nil];
    
    NSString *titleLB=@"";
    NSString *logoImg=@"";
    switch (sender.tag) {
        case 30:
        {
            titleLB=aboutUsLb.text;
            logoImg=@"icon_03.png";
        }
            break;
        case 31:
        {
            titleLB=phoneLb.text;
             logoImg=@"icon_04.png";
        }
            break;
        case 32:
        {
            titleLB=lawLb.text;
             logoImg=@"icon_05.png";
        }
            break;
        case 33:
        {
            titleLB=versionLb.text;
             logoImg=@"icon_06.png";
        }
            break;
        default:
            break;
    }
    _moreDetailVC.imageName=logoImg;
    _moreDetailVC.titleName=titleLB;
    [[ZDTabBarController sharedZDTabBarController].navigationController  presentViewController:_moreDetailVC animated:YES completion:nil];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
