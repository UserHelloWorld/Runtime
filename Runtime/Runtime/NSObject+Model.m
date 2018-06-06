//
//  NSObject+Model.m
//  Runtime
//
//  Created by apple on 05/06/18.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "NSObject+Model.h"
#import <objc/runtime.h>

@implementation NSObject (Model)

//- (void)helloworld {
//    NSLog(@"************");
//}
- (NSArray *)objcProperties
{
    NSMutableArray *array = [NSMutableArray array];
    unsigned int count = 0;
    // 获取所有成员变量
    // Ivar *ivars = class_copyIvarList(self.class, &count);
    // 获取所有属性    C语言中，数组的名字就是指向第一个元素的地址
    objc_property_t *propertyList = class_copyPropertyList(self.class, &count); // count 为类属性的数量
    // 遍历所有属性
    for (int i = 0; i < count; i++) {
        // 从指针数组中取出属性
        objc_property_t property = propertyList[i];
        // 获取属性字符串名字
        const char *cName = property_getName(property);
        // C 字符串 转 OC字符串
        NSString *propertyName = [NSString stringWithUTF8String:cName];
        
        [array addObject:propertyName];
    }
    
    free(propertyList);
    return array;
}


+ (instancetype)modelWithDict:(NSDictionary *)dict
{
    id objc = [[self alloc] init];
    // 遍历属性数组
    for (NSString *property in [self objcProperties]) {
        // 判断字典中是否有这个属性
        
        if (dict[property]) {
            // kvc 设置 值
            [objc setValue:dict[property] forKey:property];
        }
    }
    
    if ([self respondsToSelector:@selector(modelCustomPropertyMapper)]) {
    
        NSDictionary *d = [self modelCustomPropertyMapper];
        
        [d enumerateKeysAndObjectsUsingBlock:^(NSString *propertyName, NSString *mappedToKey, BOOL *stop) {
            if (dict[propertyName]) {
                [objc setValue:dict[propertyName] forKey:mappedToKey];
            }
        }];
    }
   
    return objc;
}
+ (NSDictionary *)modelCustomPropertyMapper
{
    return nil;
}


@end
