//
//  Friend.h
//  lael5
//
//  Created by Tim Lael on 7/31/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Friend : NSObject

@property NSString *firstName;
@property NSString *lastName;
@property NSString *address;

- (id) initWithFirstName: (NSString *) fn andLastName: (NSString *) ln andAddress: (NSString *) a;

- (NSString *) getName;


@end
