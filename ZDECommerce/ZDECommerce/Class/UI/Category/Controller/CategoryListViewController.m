//
//  CategoryListViewController.m
//  ZDECommerce
//
//  Created by suishen.mobi on 12-9-14.
//  Copyright (c) 2012年 suishen.mobi. All rights reserved.
//

#import "CategoryListViewController.h"
#import "DetailViewController.h"
@interface CategoryListViewController ()

@end

@implementation CategoryListViewController

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
   // catListTableView.frame=CGRectMake(0, 88.0, 320, __gScreenHeight-88.0) ;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma  mark TableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *catIdentifer=@"catIdentifer";
    UITableViewCell *cell=nil;
    cell=[tableView dequeueReusableCellWithIdentifier:catIdentifer];
    if (nil==cell) {
        cell=[[CategoryListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:catIdentifer];
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{

}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 90.0;
}

#pragma mark OneCatView Delegate
-(void)oneCatViewSelectedWithBean:(ProjectBean *)bean{
    DetailViewController *detalVC=[[DetailViewController alloc] init];
    detalVC.ptBean=bean;
    [self.navigationController pushViewController:detalVC animated:YES];
}
@end
