//
//  IDPViewAdapter.h
//  IDPArch
//
//  Created by Oleksa Korin on 15/5/15.
//  Copyright (c) 2015 IDAP Group. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "IDPCollectionAdapterProtocol.h"

@interface IDPViewAdapter : NSObject
@property (nonatomic, readonly)   id view;
@property (nonatomic, readonly)   id<IDPCollectionAdapter> adapter;

+ (instancetype)adapterWithView:(id)view collectionAdapter:(id<IDPCollectionAdapter>)adapter;
- (instancetype)initWithView:(id)view collectionAdapter:(id<IDPCollectionAdapter>)adapter;

- (Class)viewClassAtIndex:(NSUInteger)index;
- (id)viewAtIndex:(NSUInteger)index;
- (NSUInteger)indexOfView:(id)view;
- (CGSize)viewSizeAtIndex:(NSUInteger)index;

@end
