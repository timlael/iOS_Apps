//
//  AddressBook.m
//  lael5
//
//  Created by Tim Lael on 7/31/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize book;

-(instancetype) init {
    self = [super init];
    if (self) {
        book = [NSMutableArray array];
    }
    return self;
}



@end
