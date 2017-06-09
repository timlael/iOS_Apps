//
//  LocationManager.h
//  lael5
//
//  Created by Tim Lael on 8/2/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Location.h"

@interface LocationManager : NSObject
@property (nonatomic, strong) Location *newloc;
@property NSMutableArray *locs;



- (Location *) getLocation;
- (Location *) getLocationWithAddress:(NSString *)address;

@end
