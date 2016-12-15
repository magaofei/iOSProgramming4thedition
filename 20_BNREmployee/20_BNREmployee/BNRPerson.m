//
//  BNRPerson.m
//  20_BNREmployee
//
//  Created by MAMIAN on 2016/12/15.
//  Copyright © 2016年 Gaofei Ma. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

-(float)bodyMassIndex {
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
