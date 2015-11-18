//
//  Teacher.m
//  KVCdemo
//
//  Created by TuTu on 15/11/18.
//  Copyright © 2015年 teason. All rights reserved.
//

#import "Teacher.h"
#import "Student.h"

@implementation Teacher
- (instancetype)initWithStudent:(Student *)student
{
    self = [super init];
    if (self) {
        self.student = student ;
    }
    return self;
}

- (void)logAge
{
    NSLog(@"age : %@",age) ;
}
@end
