//
//  UserTool.m
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-12.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#import "UserTool.h"

@implementation UserTool
+(BOOL)isLogIn{
    NSString * userName= [self getUserName];
    NSString *userPwd=[self getUserPwd];
    if((userName==nil||[userName isEqualToString:@""])||(userPwd==nil||[userPwd isEqualToString:@""])){
        return NO;
    }else{
        return YES;
    }
}
+(NSString *)getUserName
{
    NSUserDefaults *storeUser=[NSUserDefaults standardUserDefaults];
    return  [storeUser valueForKey:ZD_U_UserName];
}
+(NSString *)getUserPwd{
    NSUserDefaults *storeUser=[NSUserDefaults standardUserDefaults];
    return [storeUser valueForKey:ZD_U_UserPwd];
}
@end
