//
//  FourSwitch.m
//  lael4
//
//  Created by Tim Lael on 7/27/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import "FourSwitch.h"

@implementation FourSwitch
- (void) fourToggle{
    if (_foursw == YES)
        _foursw = NO;
    else
        _foursw = YES;
}
- (id) init{
    self = [super init];
    if (self)
        _foursw = YES;
    return self;
}
@end
