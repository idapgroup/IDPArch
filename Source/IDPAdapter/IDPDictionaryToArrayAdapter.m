//
//  IDPDictionaryAdapter.m
//  IDPArch
//
//  Created by Oleksa Korin on 15/5/15.
//  Copyright (c) 2015 IDAP Group. All rights reserved.
//

#import "IDPDictionaryToArrayAdapter.h"

@interface IDPDictionaryToArrayAdapter ()
@property (nonatomic, strong)   NSDictionary    *dictionary;
@property (nonatomic, strong)   NSArray         *keys;

@end

@implementation IDPDictionaryToArrayAdapter

#pragma mark -
#pragma mark Class methods

+ (id)adapterWithDictionary:(NSDictionary *)dictionary {
    return [[self alloc] initWithDictionary:dictionary];
}

#pragma mark -
#pragma mark Initializations and Deallocations

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    self.dictionary = dictionary;
    self.keys = [dictionary allKeys];
    
    return self;
}

#pragma mark -
#pragma mark NSArray

- (NSUInteger)count {
    return [self.keys count];
}

- (id)objectAtIndex:(NSUInteger)index {
    return [self.dictionary valueForKey:self.keys[index]];
}

@end
