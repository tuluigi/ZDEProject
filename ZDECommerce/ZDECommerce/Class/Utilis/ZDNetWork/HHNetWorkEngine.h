//
//  HHNetWorkEngine.h
//  PsHospital
//
//  Created by d gl on 13-12-3.
//  Copyright (c) 2013年 d gl. All rights reserved.
//

#import "MKNetworkEngine.h"
#import "MKNetworkOperation.h"
#import "HHResponseResult.h"
#define HHPOST          @"POST"
#define HHGET           @"GET"

@interface HHNetWorkEngine : MKNetworkEngine
+(id)sharedHHNetWorkEngine;
#pragma mark- 网络请求
-(MKNetworkOperation *)requestWithPath:(NSString *)hh_path
                         andParmarDic:(NSMutableDictionary *)hh_postDic
                            andMethod:(NSString *)hh_method
                  onCompletionHandler:(HHResponseResultSucceedBlock)hh_completion
                        onErrorHander:(MKNKResponseErrorBlock)hh_errorBlock;
#pragma mark - 上传文件 以path 形式上传
-(MKNetworkOperation *)uploadFileWithPath:(NSString *)hh_path
                              andFilePath:(NSString *)hh_filePath
                                   andKey:(NSString *)hh_key
                          andParmarDic:(NSMutableDictionary *)hh_postDic
                   onCompletionHandler:(HHResponseResultSucceedBlock)hh_completion
                         onErrorHander:(MKNKResponseErrorBlock)hh_errorBlock;
#pragma mark - 上传文件 以文件data 形式上传
-(MKNetworkOperation *)uploadFileWithPath:(NSString *)hh_path
                              andFileData:(NSData *)hh_fileData
                                   andKey:(NSString *)hh_key
                             andParmarDic:(NSMutableDictionary *)hh_postDic
                      onCompletionHandler:(HHResponseResultSucceedBlock)hh_completion
                            onErrorHander:(MKNKResponseErrorBlock)hh_errorBlock;

@end
