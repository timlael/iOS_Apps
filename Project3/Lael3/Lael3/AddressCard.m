//
//  AddressCard.m
//  Lael3
//
//  Created by Tim Lael on 7/11/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
@synthesize name, email;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail {
    self.name = theName;
    self.email = theEmail;
}
-(void) setName: (NSString *) theName {
    if (name != theName)
        name = [NSString stringWithString: theName];
}
-(void) setEmail: (NSString *) theEmail {
    if (email != theEmail)
        email = [NSString stringWithString: theEmail];
}
-(void) print{
    NSLog (@"====================================");
    NSLog (@"|                                  |");
    NSLog (@"|              %-31s               |", [name UTF8String]);
    NSLog (@"|              %-31s               |", [email UTF8String]);
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"|         O              O         |");
    NSLog (@"====================================");
}

@end
