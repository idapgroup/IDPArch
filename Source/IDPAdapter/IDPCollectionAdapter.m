//
//  IDPCollectionAdapter.m
//  IDPArch
//
//  Created by Oleksa Korin on 15/5/15.
//  Copyright (c) 2015 IDAP Group. All rights reserved.
//

#import "IDPCollectionAdapter.h"

@implementation IDPCollectionAdapter

#pragma mark -
#pragma mark Public

- (id)objectAtIndex:(NSUInteger)index {
    [self doesNotRecognizeSelector:_cmd];
    
    return nil;
}
- (id)objectAtIndexedSubscript:(NSUInteger)index {
    [self doesNotRecognizeSelector:_cmd];
    
    return nil;
}

- (NSUInteger)count {
    [self doesNotRecognizeSelector:_cmd];
    
    return 0;
}

#pragma mark -
#pragma mark NSFastEnumeration

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state
                                  objects:(id __unsafe_unretained [])buffer
                                    count:(NSUInteger)len
{
    [self doesNotRecognizeSelector:_cmd];
    
    return 0;
}

@end
