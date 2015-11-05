//
//  UWCatchCrash.m
//  MrMoney
//  崩溃日志收集
//  Created by 王智超 on 15/11/5.
//  Copyright © 2015年 王智超. All rights reserved.
//

#import "FGCatchCrash.h"
#import "AppDelegate.h"
@implementation FGCatchCrash

void uncaughtExceptionHandler(NSException*exception)
{
    // 异常的堆栈信息
    NSArray *stackArray = [exception callStackSymbols];
    // 出现异常的原因
    NSString *reason = [exception reason];
    // 出现异常的名称
    NSString *name = [exception name];
    
    // 详细内容
    NSString *exceptionInfo = [NSString stringWithFormat:@"reason :%@\n name :%@\n stackArray %@",reason,name,stackArray];
    
    NSLog(@"Program crashed :%@",exceptionInfo);
    
    /**
     *  程序崩溃日志查看方式一般有如下几种，可根据需求自定。
     1、存到本地，下次程序启动的时候，发送到服务器；
     
     [[NSUserDefaults standardUserDefaults] setObject:exceptionInfo forKey:@"Program-Crash-Details"];
     
     2、将崩溃日志发送到指定邮箱；
     
     NSString *urlStr = [NSString stringWithFormat:@"mailto://wzc475739@163.com?subject=bug报告&body=感谢您的配合<br><br><br>\n\n""错误详情:<br>%@<br>--------------------------<br>%@<br>---------------------<br>%@",name,reason,[stackArray componentsJoinedByString:@"<br>"]];
     NSURL *url = [NSURL URLWithString:[urlStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
     [[UIApplication sharedApplication] openURL:url];
     
     3、直接发送至服务器。
     
     备注：连接Xcode开发时，可采取打印异常的处理，要注意在程序崩溃至主函数后，继续点击“下一步”运行，则会看到打印出来的详细崩溃日志.
     */
    NSString *urlStr = [NSString stringWithFormat:@"mailto://wzc475739@163.com?subject=bug报告&body=感谢您的配合<br><br><br>\n\n""错误详情:<br>%@<br>--------------------------<br>%@<br>---------------------<br>%@",name,reason,[stackArray componentsJoinedByString:@"<br>"]];
    NSURL *url = [NSURL URLWithString:[urlStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    [[UIApplication sharedApplication] openURL:url];
}

@end
