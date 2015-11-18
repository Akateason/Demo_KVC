//
//  Student.h
//  KVCdemo
//
//  Created by TuTu on 15/11/18.
//  Copyright © 2015年 teason. All rights reserved.



// 用kvc 获取一个数组 .

#import <Foundation/Foundation.h>
@class Book ;
@interface Student : NSObject
@property (nonatomic,copy)      NSString *name ;
@property (nonatomic,strong)    NSArray  *bookList ;
- (instancetype)initWithName:(NSString *)name
                    bookList:(NSArray *)listOfBook ;
@end
