//
//  Person.h
//  tmlz5d_p1
//
//  Created by Lael, Tim M (UMSL-Student) on 6/24/15.
//  Copyright (c) 2015 Lael, Tim M (UMSL-Student). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

@interface Person : NSObject
@property (copy) NSString *name;
@property int age;
@property Car *myCar;

- (void) print;
- (void) setWithCar: (Car *) c;

@end
