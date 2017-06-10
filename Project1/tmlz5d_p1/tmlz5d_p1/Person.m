//
//  Person.m
//  tmlz5d_p1
//
//  Created by Lael, Tim M (UMSL-Student) on 6/24/15.
//  Copyright (c) 2015 Lael, Tim M (UMSL-Student). All rights reserved.
//

#import "Person.h"

@implementation Person

- (void) print {
    NSLog(@"%@ is %i years old and has a %@ %@ for a car.\n", _name, _age, _myCar.year, _myCar.make);
}
- (void) setWithMyCar: (Car *) c; {
    self.myCar = c;
}
@end
