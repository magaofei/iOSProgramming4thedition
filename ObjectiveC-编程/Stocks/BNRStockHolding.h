//
//  BNRStockHolding.h
//  ObjectiveC-编程
//
//  Created by MAMIAN on 2016/12/7.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

{
    float _purchaseShare;
    float _currentSharePrice;
    int _numberOfShares;
}

- (float)purchaseShare;
- (float)currentSharePrice;
- (int)numberOfShares;

- (float)setPurchaseShare;
- (float)setCurrentSharePrice;
- (int)setNumberOfShares;

- (float)costInDollars;
- (float)valueInDollars;

@end
