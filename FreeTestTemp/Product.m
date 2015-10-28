//
//  Product.m
//  FreeTestTemp
//
//  Created by TuTu on 15/10/12.
//  Copyright © 2015年 teason. All rights reserved.
//

#import "Product.h"

@implementation Product

- (instancetype)initWithDic:(NSDictionary *)dic
{
    self = [super init];
    if (self)
    {
        [self setValuesForKeysWithDictionary:dic] ;
    }
    
    return self;
}

@end
