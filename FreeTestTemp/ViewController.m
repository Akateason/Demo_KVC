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
@interface ViewController ()

@end

@implementation ViewController


- (void)demo1_ObjParser
{
    // get json string from server
    NSDictionary *jsonObject = @{
                                 @"name"     : @"呵呵哒" ,
                                 @"sex"      : @"男" ,
                                 @"shit"     : @"38312" ,
                                 @"products" : @[@{@"productName":@"aaa"},
                                                 @{@"productName":@"bbb"},
                                                 @{@"productName":@"ccc"}
                                                 ]
                                 } ;
    // parse it
    ObjWillParsel *obj = [[ObjWillParsel alloc] initWithJsonObject:jsonObject] ;
    NSLog(@"obj : %@",obj.description) ;
    NSDictionary *showDic = [obj getAllPropertiesAndVaules] ;
    NSLog(@"getAllPropertiesAndVaules : %@",showDic) ;
    NSLog(@"getAllProperties : %@",[obj getAllProperties]) ;
    [obj getAllMethods] ;
    
    // *** Terminating app due to uncaught exception 'NSUnknownKeyException', reason: '[<ObjWillParsel 0x7fe7f0511340> setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key sex.'
}

- (void)abc {
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [self demo1_ObjParser] ;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
