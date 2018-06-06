//
//  ViewController.m
//  Extend
//
//  Created by apple on 06/06/18.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"
#import "NSObject+Ob.h"
#import "Xiaoming.h"
#import "Student+Ca.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Xiaoming *stu = [[Xiaoming alloc] init];
    [stu run];
    [stu method];
}



@end
