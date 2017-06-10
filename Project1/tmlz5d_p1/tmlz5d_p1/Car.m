//
//  Car.m
//  tmlz5d_p1
//
//  Created by Lael, Tim M (UMSL-Student) on 6/24/15.
//  Copyright (c) 2015 Lael, Tim M (UMSL-Student). All rights reserved.
//

#import "Car.h"

@implementation Car

- (void) print {
    NSLog(@"%i %@", self.year, self.make);
}
- (void) setYear: (int) y andMake: (NSString *) m; {
    self.year = y;
    self.make = m;
}
- (id) initWithYear: (int) y {
    self = [super init];
    if (self) {
        self.year = y;
    }
    return self;
}
- (id) initWithMake: (NSString *) m {
    self = [super init];
    if (self) {
        self.make = m;
    }
    return self;
}
- (id) initWithYear: (int) y andMake: (NSString *) m{
    self = [super init];
    if (self) {
        self.year = y;
        self.make = m;
    }
    return self;
}

@end
