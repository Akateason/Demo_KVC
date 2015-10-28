//
//  NSObject+XTFetchProperty.h
//  FreeTestTemp
//
//  Created by TuTu on 15/10/12.
//  Copyright © 2015年 teason. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (XTFetchProperty)

/* 获取对象的所有属性和属性内容 */
- (NSDictionary *)getAllPropertiesAndVaules ;

/* 获取对象的所有属性 */
- (NSArray *)getAllProperties ;

/* 获取对象的所有方法 */
- (void)getAllMethods ;

@end

