//
//  BNREmployee.h
//  20_BNREmployee
//
//  Created by MAMIAN on 2016/12/15.
//  Copyright © 2016年 Gaofei Ma. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

@class BNRAsset;
@interface BNREmployee : BNRPerson


@property (nonatomic) unsigned int employeeID;

@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets;

- (double)yearsOfEmployment;

- (void)addAssets:(BNRAsset *)a;



- (unsigned int)valueOfAssets;

@end
