//
//  ZDDeckViewController.m
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-12.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import "ZDDeckViewController.h"

@interface ZDDeckViewController ()

@end
static ZDDeckViewController *_zdDeckVC=nil;
@implementation ZDDeckViewController
+(ZDDeckViewController *)sharedZDDeckCtrl{
    @synchronized(self){
        if (nil==_zdDeckVC) {
            _zdDeckVC=[[ZDDeckViewController alloc] init];
        }
    }
    return _zdDeckVC;
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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
