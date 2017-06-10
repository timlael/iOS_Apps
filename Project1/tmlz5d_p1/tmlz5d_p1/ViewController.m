//
//  ViewController.m
//  tmlz5d_p1
//
//  Created by Lael, Tim M (UMSL-Student) on 6/24/15.
//  Copyright (c) 2015 Lael, Tim M (UMSL-Student). All rights reserved.
//

#import "ViewController.h"
#import "Car.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *ted = @"Theodore";

    //Car_test
    Car *c1 = [[Car alloc] init];                                   //empty c1 Car object created
    Car *c2 = [[Car alloc] initWithYear: 2004 andMake: @"Ford"];    //c2 Car object created with variable year and literal make
    c1.year = 1969;                                                 //year setter
    c1.make = @"Ford";                                              //make setter
    Car * c3 = [Car new];
    [c3 setYear: 1999 andMake: @"Chrysler"];
    [c1 print];
    [c2 print];
    [c3 print];

    //Person_test
    Person *p1 = [[Person alloc] init];
    p1.name = @"Ralph";                                         //name set with literal
    p1.age = 39;                                                //age set with variable
    p1.myCar  = c2;
    Person *p2 = [Person new];
    [p2 setName: ted];                                          //name set with variable
    [p2 setAge: 44];                                            //age set with literal
    [p2 setMyCar : c1];                                          //myCar set with existing car
    Person *p3 = [Person new];
    p3.name = @"Tim";
    p3.age = 42;
    p3.myCar = [[Car alloc] initWithYear: 1966 andMake: @"Ford"];
    [p1 print];
    [p2 print];
    [p3 print];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
