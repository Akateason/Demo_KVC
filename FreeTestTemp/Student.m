//
//  Student.m
//  KVCdemo
//
//  Created by TuTu on 15/11/18.
//  Copyright © 2015年 teason. All rights reserved.
//

#import "Student.h"
#import "Book.h"


@implementation Student

- (instancetype)initWithName:(NSString *)name
                    bookList:(NSArray *)listOfBook
{
    self = [super init];
    if (self) {
        self.name = name ;
        self.bookList = listOfBook ;
    }
    
    return self;
}

@end
