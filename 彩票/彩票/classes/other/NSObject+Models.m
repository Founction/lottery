//
//  NSObject+Models.m
//  彩票
//
//  Created by 李胜营 on 16/5/4.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "NSObject+Models.h"
#import "objc/runtime.h"

@implementation NSObject (Models)
+ (instancetype)objcWithDic:(NSDictionary *)dic mapDic:(NSDictionary *)mapDic
{

    id objc = [[self alloc] init];
    
    unsigned int count = 0;
    
    Ivar *ivars = class_copyIvarList([self class], &count);
    
    for (int i = 0; i < count; i ++)
    {
        Ivar ivar = ivars[i];
        
        NSString *ivarName = @(ivar_getName(ivar));
        
        ivarName = [ivarName substringFromIndex:1];
        
        id value = dic[ivarName];
        
        if (value == nil)
        {
            if (mapDic)
            {
                NSString *keyName = mapDic[ivarName];
                value = dic[keyName];
            }
        }
        
        [objc setObject:value forKey:ivarName];
  
    }
    return objc;
}
@end
