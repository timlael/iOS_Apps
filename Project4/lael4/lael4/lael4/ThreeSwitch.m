//
//  ThreeSwitch.m
//  lael4
//
//  Created by Tim Lael on 7/27/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import "ThreeSwitch.h"

@implementation ThreeSwitch
- (void) threeToggle{
    if (_threesw == YES)
        _threesw = NO;
    else
        _threesw = YES;
}
- (id) init{
    self = [super init];
    if (self)
        _threesw = YES;
    return self;
}
@end
