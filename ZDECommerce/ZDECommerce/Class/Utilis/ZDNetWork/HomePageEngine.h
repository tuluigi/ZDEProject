//
//  HomePageEngine.h
//  ZDECommerce
//
//  Created by Luigi on 13-12-8.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HomePageEngine : NSObject
#pragma make- 获取首页广告列表
-(MKNetworkOperation *)getHomePageBannerOnCompletionHandler:(HHResponseResultArrySucceedBlock)completion onErrorHandler:(MKNKErrorBlock)errorBlock;
#pragma make- 获取项目列表 cid-类别ID ; type:0首页项目 1其他项目 ；sort:1、按人气 2、按时间3、推荐项目4、最新项目
-(MKNetworkOperation *)getProjectListWihtCatID:(NSString *)cid
                                andPageIndex:(int)pid
                                 andPageSize:(int)pageSize
                                     andType:(int)type
                                     andSort:(int)sort
                         OnCompletionHandler:(HHResponseResultArrySucceedBlock)completion
                              onErrorHandler:(MKNKErrorBlock)errorBlock;
#pragma make- 获取随机项目列表
-(MKNetworkOperation *)getRandomProjectListWithUserID:(NSString *)userID
                                OnCompletionHandler:(HHResponseResultArrySucceedBlock)completion onErrorHandler:(MKNKErrorBlock)errorBlock;
@end
