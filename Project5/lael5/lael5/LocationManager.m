//
//  LocationManager.m
//  lael5
//
//  Created by Tim Lael on 8/2/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import "LocationManager.h"

@implementation LocationManager
@synthesize locs;

-(id) init {
    self = [super init];
    if (self) {
        locs = [NSMutableArray array];
    }
    return self;
}

- (Location *) getLocation{
    Location *loc = [[Location alloc] init];
    return loc;
}
- (Location*) getLocationWithAddress: (NSString *)address {
    double latitude = 0, longitude = 0;
    NSString *escAddress =
    [address stringByAddingPercentEscapesUsingEncoding:
     NSUTF8StringEncoding];
    NSString *request =
    [NSString stringWithFormat: @"http://maps.google.com/maps/api/geocode/json?sensor=false&address=%@", escAddress];
      NSString *result = [NSString stringWithContentsOfURL:[NSURL URLWithString:request] encoding:NSUTF8StringEncoding error:nil];
      if (result) {
        NSScanner *scanner = [NSScanner scannerWithString:result];
        if ([scanner scanUpToString:@"\"lat\" :" intoString:nil] && [scanner scanString:@"\"lat\" :" intoString:nil]) {
            [scanner scanDouble:&latitude];
        }
            if ([scanner scanUpToString:@"\"lng\" :" intoString:nil] && [scanner scanString:@"\"lng\" :" intoString:nil]){
            [scanner scanDouble:&longitude];
            }
        }
      Location *loc = [[Location alloc] init];
      loc.latitude = latitude;
      loc.longitude = longitude;
      return loc;
}



@end
