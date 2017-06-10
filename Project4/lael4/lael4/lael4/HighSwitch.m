//
//  HighSwitch.m
//  lael4
//
//  Created by Tim Lael on 7/27/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import "HighSwitch.h"

@implementation HighSwitch
- (void) highToggle{
    if (_highsw == YES)
        _highsw = NO;
    else
        _highsw = YES;
}
- (id) init{
    self = [super init];
    if (self)
        _highsw = YES;
    return self;
}
@end
