//
//  Book.h
//  KVCdemo
//
//  Created by TuTu on 15/11/18.
//  Copyright © 2015年 teason. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property (nonatomic,copy) NSString *name ;
@property (nonatomic) float price ;
- (instancetype)initWithName:(NSString *)name price:(float)price ;

@end
