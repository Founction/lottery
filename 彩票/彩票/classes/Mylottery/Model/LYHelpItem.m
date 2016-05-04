//
//  LYHelpItem.m
//  彩票
//
//  Created by 李胜营 on 16/5/3.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYHelpItem.h"
#import "NSObject+Models.h"

@implementation LYHelpItem
+ (instancetype)helpItemWithDic:(NSDictionary *)dic
{
//    LYHelpItem *item = [[LYHelpItem alloc] init];
    
    LYHelpItem *item1 = [LYHelpItem objcWithDic:dic mapDic:@{@"id":@"ID"}];
//    [item setValuesForKeysWithDictionary:dic];
    
    
    
    return item1;
}

- (void)setValue:(id)value forKey:(NSString *)key
{
    if ([key isEqualToString:@"id"])
    {
        [self setValue:value forKey:@"ID"];
    }else{
        [super setValue:value forKey:key];
    
    }
}
@end
