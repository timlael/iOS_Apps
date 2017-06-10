//
//  HighSwitch.h
//  lael4
//
//  Created by Tim Lael on 7/27/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HighSwitch : NSObject
@property (readonly) BOOL highsw;

- (void) highToggle;
@end
