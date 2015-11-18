//
//  ObjWillParsel.m
//  FreeTestTemp
//
//  Created by TuTu on 15/10/12.
//  Copyright © 2015年 teason. All rights reserved.
//

#import "ObjWillParsel.h"

@implementation ObjWillParsel

- (instancetype)initWithJsonObject:(NSDictionary *)jsonObj
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:jsonObj];
    }
    return self;
}

// *** Terminating app due to uncaught exception 'NSUnknownKeyException', reason: '[<ObjWillParsel 0x7fe7f0511340> setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key sex.'

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    if ([key isEqualToString:@"shit"]) {
        self.thisIsShitYouNeedTransformIt = [value intValue] ;
    }
    else {
        [super setValue:value forKey:key] ;
    }
}

- (void)setValue:(id)value forKey:(NSString *)key
{
    if([key isEqualToString:@"products"])
    {
        self.productList = [NSMutableArray array] ;
        
        for(NSMutableDictionary *productDict in value)
        {
            Product *product = [[Product alloc] initWithDic:productDict] ;
            [self.productList addObject:product] ;
        }
    }
    else
    {
        [super setValue:value forKey:key] ;
    }
}

@end
