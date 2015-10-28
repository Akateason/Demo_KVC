//
//  Product.h
//  FreeTestTemp
//
//  Created by TuTu on 15/10/12.
//  Copyright © 2015年 teason. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property (nonatomic,copy) NSString *productName ;

- (instancetype)initWithDic:(NSDictionary *)dic ;

@end
