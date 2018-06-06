//
//  NSObject+Property.h
//  Runtime
//
//  Created by apple on 05/06/18.
//  Copyright © 2018年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 扩充两个属性
 */
@interface NSObject (Property) // 注意，分类不能扩充成员变量

@property (copy, nonatomic) NSString *name;

@property (copy, nonatomic) NSString *height;

@end
