//
//  ViewController.m
//  Runtime
//
//  Created by apple on 05/06/18.
//  Copyright © 2018年 apple. All rights reserved.
// 类扩展实例变量默认是private(私有的)

#import "ViewController.h"
#import <objc/runtime.h>
#import "NSObject+Property.h"
#import "Student.h"
#import "NSObject+Model.h"
@interface ViewController ()
@property (assign, nonatomic) int b;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Student *stu = [[Student alloc] init];
    stu.name = @"小明";
    stu.sex = 1;
    stu.height = 13;
    // runtime方法 不去看有没有定义
    [stu performSelector:@selector(aaa) withObject:nil];
    
    [self simulateData];
    Student *tu = [[NSClassFromString(@"Student") alloc] init];;
    tu.name = @"dsss";
    NSLog(@"%@",tu.name);
    
}


- (void)simulateData {
    NSDictionary *dict = @{@"name":@"小明",
                           @"age":@13,
                           @"interest":@"hello world",
                           @"sex":@(12),
                           @"good":@"ds",
                           @"bbb":@"aaa",
                           @"id":@"离开圣诞快乐圣诞快乐",
                           @"UI":@"看就看四大皆空"};
    
   Student *stu = [Student modelWithDict:dict];
    
    NSLog(@"%@ %@ %d %d %@ %@",stu.name,stu.interest,stu.age,stu.sex,stu.pid,stu.UIKey);
}


@end
