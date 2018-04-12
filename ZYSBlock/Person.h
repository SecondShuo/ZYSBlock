//
//  Person.h
//  ZYSBlock
//
//  Created by 依萌匠心网络部 on 2018/4/8.
//  Copyright © 2018年 张洋硕. All rights reserved.
//
//typedef <#returnType#>(^<#name#>)(<#arguments#>);
#import <Foundation/Foundation.h>
//block 面向对象
@interface Person : NSObject
/** block :ARC 使用strong 非ARC copy*/
@property(nonatomic,strong) void(^myblock)(void);
- (void)ert:(void(^)(void))block;
@end
