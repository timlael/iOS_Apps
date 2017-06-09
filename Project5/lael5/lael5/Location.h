//
//  Location.h
//  lael5
//
//  Created by Tim Lael on 8/2/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Location : NSObject

@property NSString *address, *name;
@property float latitude, longitude;

- (instancetype) initWithName: (NSString *) n andAddress: (NSString *) a andLatitude: (float) lat andLongitude: (float) lon;
@end
