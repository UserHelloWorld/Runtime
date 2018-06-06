//
//  Student.h
//  Runtime
//
//  Created by apple on 05/06/18.
//  Copyright © 2018年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Property.h"

#import "Xiao.h"

//#import "NSObject+Model.h"
@interface Student : NSObject

@property (copy, nonatomic) NSString *idKey;
@property (copy, nonatomic) NSString *pid;
@property (copy, nonatomic) NSString *UIKey;

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *interest;
@property (assign, nonatomic) NSInteger height;

@property (strong, nonatomic) Xiao *xiao;


@property (assign, nonatomic) int age;
@property (assign, nonatomic) int sex;
- (void)run;
//+ (NSDictionary *)modelCustomPropertyMapper;

@end
