//
//  BNRAsset.m
//  20_BNREmployee
//
//  Created by MAMIAN on 2016/12/15.
//  Copyright © 2016年 Gaofei Ma. All rights reserved.
//

#import "BNRAsset.h"



@implementation BNRAsset

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end
