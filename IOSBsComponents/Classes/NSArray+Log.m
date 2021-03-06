//
//  NSArray+Log.m
//  It's Warm
//
//  Created by rimi on 15/5/14.
//  Copyright (c) 2015年 CAP. All rights reserved.
//

#import "NSArray+Log.h"

@implementation NSArray (Log)

// 重写描述方法，打印输出转码之后的中文
- (NSString *)descriptionWithLocale:(id)locale {
    // 遍历数组中的所有内容，将内容拼接成一个新的字符串返回
    NSMutableString *strM = [NSMutableString string];
    
    [strM appendString:@"(\n"];
    
    // 遍历数组,self就是当前的数组
    for (id obj in self) {
        // 在拼接字符串时，会调用obj的description方法
        [strM appendFormat:@"\t%@,\n", obj];
    }
    
    [strM appendString:@")"];
    
    return strM;
}
- (NSString *)descriptionWithLocale:(nullable id)locale indent:(NSUInteger)level{
    
    NSMutableString *mStr = [NSMutableString string];
    NSMutableString *tab = [NSMutableString stringWithString:@""];
    for (int i = 0; i < level; i++) {
        [tab appendString:@"\t"];
    }
    [mStr appendString:@"(\n"];
    for (int i = 0; i < self.count; i++) {
        NSString *lastSymbol = (self.count == i + 1) ? @"":@",";
        id value = self[i];
        if ([value respondsToSelector:@selector(descriptionWithLocale:indent:)]) {
            [mStr appendFormat:@"\t%@%@%@\n",tab,[value descriptionWithLocale:locale indent:level + 1],lastSymbol];
        } else {
            [mStr appendFormat:@"\t%@%@%@\n",tab,value,lastSymbol];
        }
    }
    [mStr appendFormat:@"%@)",tab];
    return mStr;
    
}

@end
