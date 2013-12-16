//
//  UserTool.h
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-12.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserTool : NSObject
+(BOOL)isLogIn;
+(NSString *)getUserName;
+(NSString *)getUserPwd;
@end
