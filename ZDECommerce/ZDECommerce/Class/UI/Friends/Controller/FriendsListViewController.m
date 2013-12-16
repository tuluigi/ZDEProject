//
//  FriendsListViewController.m
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-10.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import "FriendsListViewController.h"
#import "FFootItemVew.h"
#import "UserTool.h"
#import "ZDDeckViewController.h"
@interface FriendsListViewController ()

@end

@implementation FriendsListViewController

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
    FFootItemVew *ffootView=[[FFootItemVew alloc] initWithFrame:CGRectMake(__rightSize, __gScreenHeight-44.0,320-__rightSize, 44.0)];
    [self.view addSubview:ffootView];
    
    [listTableView setFrame:CGRectMake(__rightSize, 44.0, 320.0-__rightSize, __gScreenHeight-88.0)];
}
-(void)viewWillAppear:(BOOL)animated{
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  2;
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
        
    }
    return  cell;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 15;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 10;
}
@end
