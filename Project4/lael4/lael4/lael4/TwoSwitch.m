//
//  TwoSwitch.m
//  lael4
//
//  Created by Tim Lael on 7/27/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import "TwoSwitch.h"

@implementation TwoSwitch

- (void) twoToggle{
    if (_twosw == YES)
        _twosw = NO;
    else
        _twosw = YES;
}
- (id) init{
    self = [super init];
    if (self)
        _twosw = YES;
    return self;
}

@end
