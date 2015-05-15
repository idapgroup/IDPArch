//
//  IDPCollectionAdapterProtocol.h
//  IDPArch
//
//  Created by Oleksa Korin on 15/5/15.
//  Copyright (c) 2015 IDAP Group. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IDPCollectionAdapter <NSObject, NSFastEnumeration>

- (id)objectAtIndex:(NSUInteger)index;
- (id)objectAtIndexedSubscript:(NSUInteger)index;
- (NSUInteger)indexOfObject:(id)object;

- (NSUInteger)count;

@end
