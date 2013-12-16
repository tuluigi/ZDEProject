//
//  RankViewController.m
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-11.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import "RankViewController.h"
#import "RankTableViewCell.h"
@interface RankViewController ()

@end

@implementation RankViewController

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
    [self onPerformInit];
   }
- (void)onPerformInit{
    peopleBtn.selected=YES;
    lastClickedBtn=peopleBtn;
    UIImage *bgImg=[UIImage imageNamed:@"u_header_bg.png"];
    UIImage *bgImgSelected=[UIImage imageNamed:@"u_header_bg1.png"];
    [peopleBtn setBackgroundImage:bgImg forState:UIControlStateNormal];
    [peopleBtn setBackgroundImage:bgImgSelected forState:UIControlStateSelected];
    
    [timeBtn setBackgroundImage:bgImg forState:UIControlStateNormal];
    [timeBtn setBackgroundImage:bgImgSelected forState:UIControlStateSelected];
}
#pragma mark   RankTableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * rankCellIdentifer=@"rankCellIdentifer";
    RankTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:rankCellIdentifer];
    if (nil==cell) {
        cell=[[RankTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:rankCellIdentifer];
    }
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPat{
    return 70.0;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
   
}
//item change
-(IBAction)itemButtonClicked:(UIButton *)sender{
    sender.selected=YES;
    lastClickedBtn.selected=NO;
    lastClickedBtn=sender;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
