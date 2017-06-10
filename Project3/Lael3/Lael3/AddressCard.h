//
//  AddressCard.h
//  Lael3
//
//  Created by Tim Lael on 7/11/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (copy, nonatomic) NSString *name, *email;

-(void) print;
-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail;
-(void) setName: (NSString *) theName;
-(void) setEmail: (NSString *) theEmail;


@end
