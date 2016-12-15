//
//  BNREmployee.m
//  20_BNREmployee
//
//  Created by MAMIAN on 2016/12/15.
//  Copyright © 2016年 Gaofei Ma. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@interface BNREmployee ()

{
    NSMutableArray *_assets;
}
@property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation BNREmployee

- (void)setAssets:(NSArray *)a {
    _assets = [a mutableCopy];
}


- (NSArray *)assets {
    return [_assets copy];
}

- (void)addAssets:(BNRAsset *)a {
    // assets是否为nil
    if (!_assets) {
        _assets = [[NSMutableArray alloc] init];
        [_assets addObject:a];
    }
}



- (unsigned int)valueOfAssets {
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}

- (double)yearsOfEmployment {
    // 是否拥有一个非nil的hireDate？
    if (self.hireDate) {
        // NSTimeInterval 是double类型
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0;
    } else {
        return 0;
    }
}

- (float)bodyMassIndex {
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>",
            self.employeeID, self.valueOfAssets];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}
@end
