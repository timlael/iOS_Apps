//
//  Car.h
//  tmlz5d_p1
//
//  Created by Lael, Tim M (UMSL-Student) on 6/24/15.
//  Copyright (c) 2015 Lael, Tim M (UMSL-Student). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property int year;
@property (copy) NSString *make;

- (void) print;
- (void) setYear: (int) y andMake: (NSString *) m;
- (id) initWithYear: (int) y;
- (id) initWithMake: (NSString *) m;
- (id) initWithYear: (int) y andMake: (NSString *) m;


@end
