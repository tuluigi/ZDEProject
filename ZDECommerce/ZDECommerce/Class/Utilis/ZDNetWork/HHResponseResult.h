//
//  HHResponseResult.h
//  PsHospital
//
//  Created by d gl on 13-11-11.
//  Copyright (c) 2013年 d gl. All rights reserved.
//

#import <Foundation/Foundation.h>
@class HHResponseResult;
typedef void(^HHResponseResultArrySucceedBlock)(HHResponseResult *responseResult);//返回的数据是数据（列表）的格式
typedef void(^HHResponseResultDictorySucceedBlock)(HHResponseResult *responseResult);//返回的数据的单个对象的的格式
typedef void(^HHResponseResultModelSucceedBlock)(HHResponseResult *responseResult);//返回的数据的单个对象的的格式
typedef void(^HHResponseResultStringSucceedBlock)(HHResponseResult *responseResult);//返回的数据的单个字符串
typedef void(^HHResponseResultSucceedBlock)(HHResponseResult *responseResult);//返回的数据的单个字符串

@interface HHResponseResult : NSObject
@property (nonatomic, strong) id        n_responseData;
@property (nonatomic, strong) NSString *n_responseCode;
@property (nonatomic, strong) NSString *n_responseErrorMsg;
@end
