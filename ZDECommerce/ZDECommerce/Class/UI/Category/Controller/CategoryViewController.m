//
//  CategoryViewController.m
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-10.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import "CategoryViewController.h"
#import "CategoryListViewController.h"
@interface CategoryViewController ()

@end

@implementation CategoryViewController

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
    
    UIImageView *bgImgView  = [[UIImageView alloc] initWithFrame:self.view.frame];
    bgImgView.image         = [UIImage imageNamed:@"c_bg.jpg"];

    [catTableView setFrame:CGRectMake(0, 44.0, 320.0-__leftSize, __gScreenHeight-44.0)];
    [catTableView setBackgroundView:bgImgView];
    catTableView.separatorColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"c_separateLine.png"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark tableView Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identiferStr=@"identiferStr";
    UITableViewCell *cell=nil;
    cell=[tableView dequeueReusableCellWithIdentifier:identiferStr];
    if (nil==cell) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identiferStr];
        [cell setBackgroundColor:[UIColor clearColor]];
        cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle=UITableViewCellSelectionStyleNone;
        
        UIImageView *imgView=[[UIImageView alloc] initWithFrame:cell.frame];
        imgView.tag=1000;
        imgView.image =[UIImage imageNamed:@"c_canyin.jpg"];
        [cell addSubview:imgView];
    }

    return  cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [[ZDDeckViewController sharedZDDeckCtrl] toggleLeftViewAnimated:YES];
    [ZDTabBarController sharedZDTabBarController].selectedIndex=TabBarItemCategoryList;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50.0;
}
@end
