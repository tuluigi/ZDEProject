//
//  GlobalData.h
//  ZDECommerce
//
//  Created by suishen.mobi on 13-9-10.
//  Copyright (c) 2013年 suishen.mobi. All rights reserved.
//

#ifndef ZDECommerce_GlobalData_h
#define ZDECommerce_GlobalData_h
#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO) //判断是否是iPhone5
#define iPhone ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone?YES:NO)//判断是手机还是PAD
#define ZDEPageSize 30
#define HostName @"api.zdw168.com"
#define SuffiexName @"/MobileSvr.asmx/"


#pragma mark ------------global variable---------
const NSString *__gDocumentPath;
// screen height-20
float __gScreenHeight,__scale;
float __leftSize;
float __rightSize;

//tabbar item 
enum TabBarItmeType {
    TabBarItemHome             = 0,
    TabBarItemRank             = 1,
    TabBarItemShake            = 2,
    TabBarItemSearch           = 3,
    TabBarItemMore             = 4,
    TabBarItemCategoryList     = 5

};
/****************接口返回结果的状态值*************/
#define CODE_STATE_0        @"0"    //0 成功
#define CODE_STATE_1        @"1"    //1 失败 
#define CODE_STATE_2        @"2"    //2 json格式错误
#define CODE_STATE_1000     @"1000" //1000 json格式错误

#pragma mark ----------API------------------------
#define   ZDE_Private_Key       @"abcdef"   //秘钥
#define   pAPI_TimeSpan    @"timespan"
#define   pAPI_Token       @"token"

//1.Login 用户登陆
#define   pAPI_UserName    @"username"
#define   pAPI_Pwd         @"pwd"

//2.GetBanner获取主页广告轮播图
#define   GetBanner                 @"GetBanner"//获取广告轮播图
#define   GetProjectList            @"GetProjectList"//获取项目列表
#define   GetRandomProject          @"GetRandomProject"//获取随机项目
#define   GetProjectDetail          @"GetProjectDetail "//获取项目详情
#define   SearchProject             @"SearchProject"//搜索项目
#define   InterestProject           @"InterestProject"//将项目标记为感兴趣或者取消感兴趣
#define   CollectProject            @"CollectProject"//将项目标记为收藏或者取消收藏

#define   GetCategoryList           @"GetCategoryList"//获取分类列表


#define   GetArticle                @"GetArticle"//获取文章
#define   VersionUpdate             @"Update"//版本更新
/*****个人中心****/
#define   UserLogin                 @"Login"//用户登录
#define   Register                  @"Register"//注册
#define   GetCollectionProjectList  @"GetCollectionProjectList"//获取收藏项目列表


#define   GetFriendsList            @"GetFriendsList"//获取好友和陌生人列表
#define   GetVoteCode               @"GetVoteCode"//获取验证码（暂时不用）
#define   SendWordsMessage          @"SendWordsMessage"//聊天发送文字消息
#define   SendVoiceMessage          @"SendVoiceMessage"//聊天发送语音消息
#define   GetMessage                @"GetMessage"//接受消息
#define   SearchUser                @"SearchUser"//搜索用户
#define   GetContactListStatus      @"GetContactListStatus"//获取通讯录中交友的状态
#define   InviteContactFriend       @"InviteContactFriend"//邀请通讯录好友
#define   AddContactFriend          @"AddContactFriend"//添加通讯录好友
#define   SendValidateApply         @"SendValidateApply"//发送申请验证请求
#define   GetUserInfo               @"GetUserInfo"//获取用户信息
#define   EditUserInfo              @"EditUserInfo"//编辑用户信息
#define   ModifyUserHeader          @"ModifyUserHeader"//修改用户头像
#define   GetArea                   @"GetArea"//获取地区列表

/****系统通知*****/
#define   GetSystemInfoList          @"GetSystemInfoList"//获取系统通知消息
#define   UpdateSystemInfo           @"UpdateSystemInfo"//更新系统消息状态

#endif  
