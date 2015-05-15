//
//  IDPDictionaryAdapter.h
//  IDPArch
//
//  Created by Oleksa Korin on 15/5/15.
//  Copyright (c) 2015 IDAP Group. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IDPDictionaryToArrayAdapter : NSMutableArray

+ (id)adapterWithDictionary:(NSDictionary *)dictionary;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
