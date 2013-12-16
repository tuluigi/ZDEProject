//
//  CategoryListViewController.h
//  ZDECommerce
//
//  Created by suishen.mobi on 12-9-14.
//  Copyright (c) 2012年 suishen.mobi. All rights reserved.
//

#import "BaseViewController.h"
#import "CategoryListViewController.h"
#import "CategoryListCell.h"
@interface CategoryListViewController : BaseViewController<UITableViewDataSource,UITableViewDelegate,OneCategoryDelegate>
{
    IBOutlet UITableView * catListTableView;
}
@end
