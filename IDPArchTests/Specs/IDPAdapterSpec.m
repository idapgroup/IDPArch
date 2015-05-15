//
//  IDPArchTests.m
//  IDPArchTests
//
//  Created by Oleksa Korin on 15/5/15.
//  Copyright (c) 2015 IDAP Group. All rights reserved.
//

#import "Kiwi.h"

#import "IDPDictionaryToArrayAdapter.h"

SPEC_BEGIN(IDPAdapterSpec)

__block id adapter = nil;

describe(@"IDPDictionaryToArrayAdapter", ^{
    NSDictionary *dictionary = @{@"mama" : [NSObject new],
                                 @"papa" : [NSObject new]};
    
    context(@"when initialized with dictionary", ^{
        beforeAll(^{
            adapter = [IDPDictionaryToArrayAdapter adapterWithDictionary:dictionary];
        });
        
        it(@"should have count of 2", ^{
            [[adapter should] haveCountOf:2];
        });
        
        it(@"should return values of dictionary", ^{
            NSMutableArray *values = [NSMutableArray new];
            for (id object in adapter) {
                [values addObject:object];
            }
            
            [[values should] containObjectsInArray:adapter];
        });
    });
    
});

SPEC_END
