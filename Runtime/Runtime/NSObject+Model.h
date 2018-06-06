//
//  NSObject+Model.h
//  Runtime
//
//  Created by apple on 05/06/18.
//  Copyright © 2018年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Model)

+ (instancetype)modelWithDict:(NSDictionary *)dict;

/** 重写这个方法实现字段的自定义 */
+ (NSDictionary *)modelCustomPropertyMapper;

@end
