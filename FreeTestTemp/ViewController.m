//
//  ViewController.m
//  FreeTestTemp
//
//  Created by TuTu on 15/10/12.
//  Copyright © 2015年 teason. All rights reserved.
//

#import "ViewController.h"
#import "ObjWillParsel.h"
#import "NSObject+XTFetchProperty.h"
#import "Teacher.h"
#import "Student.h"
#import "Book.h"




@interface ViewController ()

@end

@implementation ViewController


- (void)demo1_ObjParser
{
    // get json string from server
    NSDictionary *jsonObject = @{
                                 @"name"     : @"Teason" ,
                                 @"sex"      : @"male" ,
                                 @"shit"     : @"xxxxxxxxxxxxxxxxxx" ,
                                 @"products" : @[@{@"productName":@"aaa"},
                                                 @{@"productName":@"bbb"},
                                                 @{@"productName":@"ccc"}
                                                 ]
                                 } ;
    // parse it
    ObjWillParsel *obj = [[ObjWillParsel alloc] initWithJsonObject:jsonObject] ;
//    NSLog(@"obj : %@",obj.description) ;
    NSLog(@"getAllPropertiesAndVaules : %@",[obj getAllPropertiesAndVaules]) ;
    NSLog(@"getAllProperties : %@",[obj getAllProperties]) ;
//    [obj getAllMethods] ;
    
    // *** Terminating app due to uncaught exception 'NSUnknownKeyException', reason: '[<ObjWillParsel 0x7fe7f0511340> setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key sex.'
}

- (void)demo2_KVC_set
{
    // initial
    NSMutableArray *mutableList = [NSMutableArray array];
    for (int i = 10; i <= 20; i++)
    {
        Book *bookTemp = [[Book alloc] initWithName:[NSString stringWithFormat:@"book%d",i] price:i*10] ;
        [mutableList addObject:bookTemp] ;
    }
    Student *student1 = [[Student alloc] initWithName:@"Student_Teason" bookList:mutableList] ;
    Teacher *teacher1 = [[Teacher alloc] initWithStudent:student1] ;
    [self logTeacher:teacher1] ;
    
    // set the readonly value
    //teacher1.name = @"heheda" ;
    [teacher1 setValue:@"Teacher_AKAteason" forKey:@"name"] ;
    [self logTeacher:teacher1] ;
    
    // set the private value
    //teacher1.age = 22 ;
    [teacher1 setValue:@24 forKey:@"age"] ;
    [self logTeacher:teacher1] ;
    
    // log student .
    NSLog(@"student : %@\n",[student1 getAllPropertiesAndVaules]) ;
    // get in keyPath way
    NSLog(@"student name For KeyPath : %@", [teacher1 valueForKeyPath:@"student.name"]) ;

    // change student name
    [student1 setValue:@"Peter" forKey:@"name"] ;
    NSLog(@"student new name : %@",[student1 valueForKey:@"name"]) ;

    // get an array
    for (Book *book in [student1 valueForKey:@"bookList"]) {
        NSLog(@"bookName : %@ \t price : %f",book.name,book.price) ;
    }
    
    // get an array in KeyPath
    NSLog(@"All book name  : %@",[teacher1 valueForKeyPath:@"student.bookList.name"]) ;
    NSLog(@"All book name  : %@",[student1 valueForKeyPath:@"bookList.name"]) ;
    NSLog(@"All book price : %@",[student1 valueForKeyPath:@"bookList.price"]) ;
    
    // calculate
    NSLog(@"sum of book price : %@",[student1 valueForKeyPath:@"bookList.@sum.price"]) ;
    NSLog(@"avg of book price : %@",[student1 valueForKeyPath:@"bookList.@avg.price"]) ;

}

- (void)logTeacher:(Teacher *)t
{
    [t logAge] ;
    NSLog(@"teacher : %@\n",[t getAllPropertiesAndVaules]) ;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //demo1 parser an object
    [self demo1_ObjParser] ;
    
    //demo2 log a complicated Object
    [self demo2_KVC_set] ;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
