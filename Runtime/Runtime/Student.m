//
//  Student.m
//  Runtime
//
//  Created by apple on 05/06/18.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "Student.h"
#import <objc/runtime.h>
@implementation Student

- (instancetype)init
{
    self = [super init];
    if (self) {
      
     }
    return self;
}
+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"id":@"pid",@"UI":@"UIKey"};
}
- (void)run {
    NSLog(@"%s %d",__func__,__LINE__);
}
- (void)aaa {
    NSLog(@"hhhhhhhhhhhhhh");
}

@end
