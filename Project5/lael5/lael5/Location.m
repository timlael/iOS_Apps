//
//  Location.m
//  lael5
//
//  Created by Tim Lael on 8/2/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//
#import "Location.h"


@implementation Location
@synthesize address, name, latitude, longitude;


-(instancetype) init {
    self = [super init];
        if (self) {
            address = @"1 University Blvd, St. Louis, MO, 63121";
            latitude = 38.711802;
            longitude = -90.311415;
        }
    return self;
}
- (instancetype) initWithName: (NSString *) n andAddress: (NSString *) a andLatitude: (float) lat andLongitude: (float) lon{
    self = [super init];
    if (self) {
        name = n;
        address = a;
        latitude = lat;
        longitude = lon;
    }
    return self;
}




@end
