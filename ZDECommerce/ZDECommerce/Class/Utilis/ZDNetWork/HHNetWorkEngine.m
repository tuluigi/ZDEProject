    //
    //  HHNetWorkEngine.m
    //  PsHospital
    //
    //  Created by d gl on 13-12-3.
    //  Copyright (c) 2013年 d gl. All rights reserved.
    //

#import "HHNetWorkEngine.h"
@implementation HHNetWorkEngine
static HHNetWorkEngine *hh_NetWorkEngine;
+(id)sharedHHNetWorkEngine
{
    @synchronized(self){
        if (nil==hh_NetWorkEngine) {
            hh_NetWorkEngine=[[HHNetWorkEngine alloc] initWithHostName:HostName];
        }
    }
    return hh_NetWorkEngine;
}
#pragma mark- 网络请求
-(MKNetworkOperation *)requestWithPath:(NSString *)hh_path
                          andParmarDic:(NSMutableDictionary *)hh_postDic
                             andMethod:(NSString *)hh_method
                   onCompletionHandler:(HHResponseResultSucceedBlock)hh_completion
                         onErrorHander:(MKNKResponseErrorBlock)hh_errorBlock{
    NSMutableDictionary *postMutableDic;
    NSMutableDictionary *tempDic=[NSMutableDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithDouble:[self getTotalSecondTimeFrom1970]],@"timespan",[self md5WithDictory:hh_postDic],@"token", nil];
    if (hh_postDic) {
        [hh_postDic addEntriesFromDictionary:tempDic];
        postMutableDic=hh_postDic;
    }else{
        postMutableDic=tempDic;
    }
    MKNetworkOperation *hhop=[[HHNetWorkEngine sharedHHNetWorkEngine] operationWithPath:hh_path params:postMutableDic httpMethod:hh_method];
    [hhop addCompletionHandler:^(MKNetworkOperation *completedOperation) {
        NSString *valueString=[completedOperation responseString];
        HHResponseResult *responseResult=[self parseHHResultWithJsonString:valueString] ;
        hh_completion(responseResult);
    } errorHandler:^(MKNetworkOperation *completedOperation, NSError *error) {
        hh_errorBlock(completedOperation,error);
    }];
    [[HHNetWorkEngine sharedHHNetWorkEngine] enqueueOperation:hhop];
    return hhop;
}
#pragma mark - 上传文件 以path 形式上传
-(MKNetworkOperation *)uploadFileWithPath:(NSString *)hh_path
                              andFilePath:(NSString *)hh_filePath
                                   andKey:(NSString *)hh_key
                             andParmarDic:(NSMutableDictionary *)hh_postDic
                      onCompletionHandler:(HHResponseResultSucceedBlock)hh_completion
                            onErrorHander:(MKNKResponseErrorBlock)hh_errorBlock{
    MKNetworkOperation *hhop=[[HHNetWorkEngine sharedHHNetWorkEngine] operationWithPath:hh_path params:hh_postDic httpMethod:HHPOST];
    [hhop addFile:hh_filePath forKey:hh_key];
    [hhop addCompletionHandler:^(MKNetworkOperation *completedOperation) {
        NSString *valueString=[completedOperation responseString];
        HHResponseResult *responseResult=[self parseHHResultWithJsonString:valueString];
        hh_completion(responseResult);
        
    } errorHandler:^(MKNetworkOperation *completedOperation, NSError *error) {
        hh_errorBlock(completedOperation,error);
    }];
    [[HHNetWorkEngine sharedHHNetWorkEngine] enqueueOperation:hhop];
    return hhop;
}
#pragma mark - 上传文件 以文件data 形式上传
-(MKNetworkOperation *)uploadFileWithPath:(NSString *)hh_path
                              andFileData:(NSData *)hh_fileData
                                   andKey:(NSString *)hh_key
                             andParmarDic:(NSMutableDictionary *)hh_postDic
                      onCompletionHandler:(HHResponseResultSucceedBlock)hh_completion
                            onErrorHander:(MKNKResponseErrorBlock)hh_errorBlock{
    MKNetworkOperation *hhop=[[HHNetWorkEngine sharedHHNetWorkEngine] operationWithPath:hh_path params:hh_postDic httpMethod:HHPOST];
    [hhop addData:hh_fileData forKey:hh_key];
    [hhop addCompletionHandler:^(MKNetworkOperation *completedOperation) {
        NSString *valueString=[completedOperation responseString];
        HHResponseResult *responseResult=[self parseHHResultWithJsonString:valueString];
        hh_completion(responseResult);
    } errorHandler:^(MKNetworkOperation *completedOperation, NSError *error) {
        hh_errorBlock(completedOperation,error);
    }];
    [[HHNetWorkEngine sharedHHNetWorkEngine] enqueueOperation:hhop];
    return hhop;

}
#pragma mark- 解析 网络请求数据
-(HHResponseResult *)parseHHResultWithJsonString:(NSString *)valueStr{
    HHResponseResult *responseResult=[[HHResponseResult alloc] init];
    NSError *errorJson=nil;
    NSDictionary *resultDic=[valueStr objectFromJSONStringWithParseOptions:JKParseOptionNone error:&(errorJson)];
    if (nil==resultDic&&errorJson) {
        responseResult.n_responseErrorMsg=@"数据错误";
        responseResult.n_responseCode=CODE_STATE_1000;
    }else{
        NSString *code=[ resultDic objectForKey:@"status"];
        responseResult.n_responseCode=code;
        if ([code isEqualToString:CODE_STATE_0]) {
            responseResult.n_responseData=[resultDic objectForKey:@"data"];
            responseResult.n_responseErrorMsg=[resultDic objectForKey:@"msg"];
        }else if ([code isEqualToString:CODE_STATE_1]){
            responseResult.n_responseErrorMsg=[resultDic objectForKey:@"msg"];
        }
    }
    return responseResult;
}
#pragma mark - get time second form 1970
-(double)getTotalSecondTimeFrom1970{
    NSDate *currentData=[NSDate date];
    NSTimeInterval totaltime=[currentData timeIntervalSince1970];    
    return totaltime;
}
#pragma makr- md5 dictory
-(NSString *)md5WithDictory:(NSDictionary *)dic{
    NSString *md5Str=ZDE_Private_Key;
    if (dic) {
        NSArray *keyArrys=[dic allKeys];
        for (NSString * keyStr in keyArrys) {
            NSString *valueStr=[dic objectForKey:keyStr];
            md5Str=[[md5Str stringByAppendingString:keyStr] stringByAppendingString:valueStr];
        }
    }
    md5Str=[md5Str stringByAppendingString:ZDE_Private_Key];
    md5Str=[md5Str md5];
    return md5Str;
}
@end
