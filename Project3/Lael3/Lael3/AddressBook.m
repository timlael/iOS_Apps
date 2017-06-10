//
//  AddressBook.m
//  Lael3
//
//  Created by Tim Lael on 7/11/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook
@synthesize bookName, book;

-(instancetype) initWithName: (NSString *) name {
    self = [super init];
    if (self) {
        bookName = [NSString stringWithString: name];
        book = [NSMutableDictionary dictionary];
    }
    return self;
}
-(instancetype) init {
    return [self initWithName:
            @"NoName"];
}

-(void) addCard: (AddressCard *) theCard{
    [book setObject: theCard forKey: theCard.email];
}
-(void) removeCard: (AddressCard *) theCard {
    [book removeObjectForKey: theCard.email];
}
-(AddressCard *) lookup: (NSString *) theName {
    for ( AddressCard *nextCard in book )
        if ( [nextCard.name caseInsensitiveCompare: theName] == NSOrderedSame )
            return nextCard;
    return nil;
}
-(NSUInteger) entries {
    return [book count];
}
-(void) list {
        NSLog (@"======== Contents of: %@ =========", bookName);
               /*for ( AddressCard *theCard in book)
                    NSLog (@"%-20s %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);*/
            for ( NSString *key in book )
                NSLog (@"%@: %@", [[book objectForKey: key] name], key);
        NSLog (@"==================================================");
}

@end
