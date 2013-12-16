//
//  BaseViewController.m
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-12.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

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
    
//     UIImage *bgimg=[UIImage imageNamed:@"m_bg.jpg"];
//     UIImageView *bgView=[[UIImageView alloc] initWithFrame:self.view.frame];
//     bgView.image=bgimg;
    self.view.backgroundColor=[UIColor clearColor];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
