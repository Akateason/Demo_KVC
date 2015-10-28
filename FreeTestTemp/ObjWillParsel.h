//
//  ObjWillParsel.h
//  FreeTestTemp
//
//  Created by TuTu on 15/10/12.
//  Copyright © 2015年 teason. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

// Using KVC in parsel

@interface ObjWillParsel : NSObject

@property (nonatomic,copy) NSString *name ;
@property (nonatomic,copy) NSString *sex ;
@property (nonatomic) int thisIsShitYouNeedTransformIt ;
@property (nonatomic,strong) NSMutableArray *productList ;
- (instancetype)initWithJsonObject:(NSDictionary *)jsonObj ;

@end
