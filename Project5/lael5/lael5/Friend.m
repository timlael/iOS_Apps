//
//  Friend.m
//  lael5
//
//  Created by Tim Lael on 7/31/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import "Friend.h"

@implementation Friend
@synthesize firstName, lastName, address;


- (id) initWithFirstName: (NSString *) fn andLastName: (NSString *) ln andAddress: (NSString *) a {
    self = [super init];
    if (self) {
        firstName = fn;
        lastName = ln;
        address = a;
    }
    return self;
}
- (NSString *) getName{
    NSString *temp = [firstName stringByAppendingString:@" "];
    NSString *fullName =[temp stringByAppendingString: lastName];
    return fullName;
}

@end


