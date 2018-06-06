//
//  Student+Ca.m
//  Runtime
//
//  Created by apple on 06/06/18.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "Student+Ca.h"

@implementation Student (Ca)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

- (void)run {
    NSLog(@"类扩展 run方法");
    NSLog(@"%s %d",__func__,__LINE__);
    
}
- (void)method {
    
    NSLog(@"给student扩充一个方法");
}

#pragma clang diagnostic pop


@end
