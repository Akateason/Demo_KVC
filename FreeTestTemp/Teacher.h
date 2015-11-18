//
//  Teacher.h
//  KVCdemo
//
//  Created by TuTu on 15/11/18.
//  Copyright © 2015年 teason. All rights reserved.
//


/*
 * 用kvc获取只读变量和私有变量 .
 */

#import <Foundation/Foundation.h>
@class Student ;

@interface Teacher : NSObject
{
    @private
    NSNumber *age ;
}
@property (nonatomic,copy,readonly)     NSString   *name ;
@property (nonatomic,strong)            Student    *student ;
- (instancetype)initWithStudent:(Student *)student ;
- (void)logAge ;
@end
