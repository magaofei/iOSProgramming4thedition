//
//  BNRItemStore.h
//  Homepwner
//
//  Created by MAMIAN on 2016/12/5.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRItem;
@interface BNRItemStore : NSObject

@property (nonatomic, readonly) NSArray *allItems;

+ (instancetype)sharedStore;

- (BNRItem *)creatItem;

@end
