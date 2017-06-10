//
//  AddressBook.h
//  Lael3
//
//  Created by Tim Lael on 7/11/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook: NSObject

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableDictionary *book;

-(instancetype) initWithName: (NSString *) name;

-(void) addCard: (AddressCard *) theCard;
-(void) removeCard: (AddressCard *) theCard;
-(AddressCard *) lookup: (NSString *) theName;
-(NSUInteger) entries;
-(void) list;
@end
