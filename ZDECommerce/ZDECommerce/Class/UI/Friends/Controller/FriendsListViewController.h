//
//  FriendsListViewController.h
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-10.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FriendsListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    IBOutlet UITableView *listTableView;
}

@end
