

//
//  BNRAsset.h
//  20_BNREmployee
//
//  Created by MAMIAN on 2016/12/15.
//  Copyright © 2016年 Gaofei Ma. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNREmployee;
@interface BNRAsset : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic) BNREmployee *holder;
@property (nonatomic) unsigned int resaleValue;

@end
