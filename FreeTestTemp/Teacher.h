//
//  Teacher.h
//  KVCdemo
//
//  Created by TuTu on 15/11/18.
//  Copyright © 2015年 teason. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Student ;

@interface Teacher : NSObject
@property (nonatomic,copy)   NSString   *name ;
@property (nonatomic,strong) Student    *student ;
@end
