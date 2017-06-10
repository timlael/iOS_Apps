//
//  NSMutableArrayShuffling.m
//  lael4
//
//  Created by Tim Lael on 7/25/15.
//  Copyright (c) 2015 Tim Lael. All rights reserved.
//

#import "NSMutableArrayShuffling.h"


@implementation NSMutableArray (Shuffling)

- (void)shuffle {
    static BOOL seeded = NO;
    if(!seeded){
        seeded = YES;
        srandom(time(NULL));
    }
    
    NSUInteger count = [self count];
    for (NSUInteger i = 0; i < count; ++i) {
        // Select a random element between i and end of array to swap with.
        int nElements = count - i;
        int n = (random() % nElements) + i;
        [self exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
}

@end
