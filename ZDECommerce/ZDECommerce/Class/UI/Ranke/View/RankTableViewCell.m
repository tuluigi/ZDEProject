//
//  RankTableViewCell.m
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-17.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import "RankTableViewCell.h"
#define RankTableViewCell_Height            70
#define RankTableViewCell_Width             120
#define RankTableViewCell_MagrinTop         5.0
@implementation RankTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self onPerformInti];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)onPerformInti{
    imageView =[[UIImageView alloc] initWithFrame:CGRectMake(5.0, 5.0, RankTableViewCell_Width  , RankTableViewCell_Height-10.0)];
    imageView.layer.cornerRadius=5.0;
    imageView.layer.masksToBounds=YES;
    imageView.backgroundColor=[UIColor greenColor];
    [self addSubview:imageView];
    
    titleLb=[[UILabel alloc] initWithFrame:CGRectMake(10.0+RankTableViewCell_Width, 5.0, 320.0-10.0-RankTableViewCell_Width, 15.0)];
    titleLb.text=@"shkdsfjkahjsdfasdfnaskjfsdfh";
    [self addSubview:titleLb];
    
    contentLb=[[UILabel alloc] initWithFrame:CGRectMake(10.0+RankTableViewCell_Width, titleLb.frame.size.height+5.0, 320.0-10.0-RankTableViewCell_Width, RankTableViewCell_Height-20.0)];
    contentLb.numberOfLines=3;
    contentLb.lineBreakMode=NSLineBreakByTruncatingTail;
    contentLb.text=@"s,kdhfo faksdgh adsjbfgdjuiasdfsskkdhk声卡的发卡都很费劲阿斯顿发货时打开发 ";
    [self addSubview:contentLb];
}
@end
