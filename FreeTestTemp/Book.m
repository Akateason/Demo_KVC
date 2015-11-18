//
//  Book.m
//  KVCdemo
//
//  Created by TuTu on 15/11/18.
//  Copyright © 2015年 teason. All rights reserved.
//

#import "Book.h"

@implementation Book
- (instancetype)initWithName:(NSString *)name price:(float)price
{
    self = [super init];
    if (self) {
        _name = name ;
        _price = price ;
    }
    return self;
}
@end
