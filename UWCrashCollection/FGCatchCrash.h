//
//  UWCatchCrash.h
//  MrMoney
//  崩溃日志收集
//  Created by 王智超 on 15/11/5.
//  Copyright © 2015年 王智超. All rights reserved.
//

/*
 
 **********************************************************************************
 *                                                                                 *
 * 需要使用这个崩溃类的时候，需要在appdelegate.m里倒入这个类的头文件。                      *
 * 然后实现uncaughtExceptionHandler方法                                             *
 * 实例demo地址：https://github.com/Fengur/FengurArchive                            *
 *                                                                                 *
 **********************************************************************************
 
 */


#import <Foundation/Foundation.h>

@interface FGCatchCrash : NSObject

void uncaughtExceptionHandler(NSException*exception);

@end
