//
//  AppDelegate.m
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-10.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import "AppDelegate.h"

#import "HomeViewController.h"
#import "FriendsListViewController.h"
#import "CategoryViewController.h"
#import "IIViewDeckController.h"
#import "RankViewController.h"  
#import "ShakeViewController.h"
#import "SearchViewController.h"
#import "MoreViewController.h"
#import "MyProjectViewController.h"
#import "ZDDeckViewController.h"
#import "CategoryListViewController.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    NSArray *path=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    __gDocumentPath=[path objectAtIndex:0];
    __gScreenHeight=[UIScreen mainScreen].bounds.size.height-20.0f;
    __scale=__gScreenHeight/548.0;
       application.applicationSupportsShakeToEdit=YES;//support shake
    
    [self onInitRootViewController];
    [self.window makeKeyAndVisible];
    return YES;
}

#pragma mark rootController init
-(void)onInitRootViewController{
    ZDTabBarController *zdTabController=[ZDTabBarController sharedZDTabBarController];
    UINavigationController *_rootNav=[[UINavigationController alloc] initWithRootViewController:[ZDTabBarController sharedZDTabBarController]];
    [_rootNav setNavigationBarHidden:YES];
    HomeViewController *_homeCtrl=[[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
    
    RankViewController *_rankCtrl=[[RankViewController alloc] initWithNibName:@"RankViewController" bundle:nil];
    
    SearchViewController *_searchCtr=[[SearchViewController alloc] initWithNibName:@"SearchViewController" bundle:nil];
    
    ShakeViewController *_shakeCtr=[[ShakeViewController alloc] initWithNibName:@"ShakeViewController" bundle:nil];

    MoreViewController *_moreCtr=[[MoreViewController alloc] initWithNibName:@"MoreViewController" bundle:nil];
    CategoryListViewController *_catListVC =[[CategoryListViewController alloc] initWithNibName:@"CategoryListViewController" bundle:nil];
    //MyProjectViewController *_myProjectVC=[[MyProjectViewController alloc] initWithNibName:@"MyProjectViewController" bundle:nil];
    //  MessageCenterViewController *_msgVC=[[MessageCenterViewController alloc] init];
    
    NSArray *ctrArry=[NSArray arrayWithObjects:_homeCtrl,_rankCtrl,_shakeCtr,_searchCtr,_moreCtr,_catListVC,  nil];
    zdTabController.viewControllers=ctrArry;
    
    FriendsListViewController *_friendListCtrl=[[FriendsListViewController alloc] initWithNibName:@"FriendsListViewController" bundle:nil];
    CategoryViewController *_categoryCtrl=[[CategoryViewController alloc] initWithNibName:@"CategoryViewController" bundle:nil];
    
    ZDDeckViewController *zdDeck=[ZDDeckViewController sharedZDDeckCtrl];
    zdDeck.delegate=_homeCtrl;
    [zdDeck setLeftController:_categoryCtrl];
    [zdDeck setRightController:_friendListCtrl];
    [zdDeck setCenterController:_rootNav];
    __leftSize=100.0;
    __rightSize=50.0;
    [zdDeck setLeftSize:__leftSize];
    [zdDeck setRightSize:__rightSize];
    
    
    self.window.rootViewController=zdDeck;
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
