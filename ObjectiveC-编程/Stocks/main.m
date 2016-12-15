//
//  main.m
//  Stocks
//
//  Created by MAMIAN on 2016/12/7.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        BNRStockHolding *sh1 = [[BNRStockHolding alloc] init];
        sh1.purchaseShare = 2.3;
        sh1.currentSharePrice = 4.5;
        sh1.numberOfShares = 40;
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
