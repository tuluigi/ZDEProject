//
//  RankViewController.h
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-11.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RankViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UITableView *rankTableView;
    IBOutlet UIButton    *peopleBtn,*timeBtn,*lastClickedBtn;
}


-(IBAction)itemButtonClicked:(UIButton *)sender;
@end
