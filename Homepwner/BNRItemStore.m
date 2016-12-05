//
//  BNRItemStore.m
//  Homepwner
//
//  Created by MAMIAN on 2016/12/5.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@interface BNRItemStore ()

@property (nonatomic, strong) NSMutableArray *privateItems;

@end

@implementation BNRItemStore


+ (instancetype)sharedStore {
    static BNRItemStore *shareStore = nil;
    // 判断是否需要创建一个sharedStore对象
    if (!shareStore) {
        shareStore = [[self alloc] initPrivate];
    }
    return shareStore;
}


- (instancetype)init {
    @throw [NSException exceptionWithName:@"Singleton"
                                   reason:@"Use + [BNRItemStore sharedStore"
                                 userInfo:nil];
    return nil;
}

- (instancetype)initPrivate {
    self = [super init];
    if (self) {
        _privateItems = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)allItems {
    return [self.privateItems copy];  //子类如果是可变类型，那么其他对象在调用时也会返回一个可变类型，违反了设计时是不可变类型的初衷，使用copy修饰后会返回一个不可变类型，
}

- (BNRItem *)creatItem {
    BNRItem *item = [BNRItem randomItem];
    [self.privateItems addObject:item];
    return item;
}
@end
