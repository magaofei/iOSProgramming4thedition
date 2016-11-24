//
//  main.m
//  RandomItems
//
//  Created by MAMIAN on 2016/11/23.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 创建一个NSMutableArray对象，并用items变量保存该对象的地址
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // 向items所指向的NSMutableArray对象发送addObject:消息
        // 每次传入一个字符串
//        [items addObject:@"One"];
//        [items addObject:@"Two"];
//        [items addObject:@"Three"];
//        
//        //继续向同一个对象发送消息，这次是insertObject:atIndex:
//        [items insertObject:@"Zero" atIndex:0];
        
//        for (int i = 0; i < 10; i++) {
//            BNRItem *item = [BNRItem randomItem];
//            [items addObject:item];
//        }
        
//        id lastObj = [items lastObject];
//        // lastObj是BNRItem对象，无法处理count消息
//        [lastObj count];  // runtime Err
        
        
        BNRItem *backpack = [[BNRItem alloc] initWithItemName:@"Backpack"];
        [items addObject:backpack];
        
        BNRItem *calculator = [[BNRItem alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        
        backpack = nil;
        calculator = nil;
        
//        Person *p1 = [[Person alloc] init];
//        p1.onlyName = @"123";
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        
//        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa"
//                                           valueInDollars:100
//                                             serialNumber:@"A1B2C"];
//        NSLog(@"%@", item);
//        
//        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
//        NSLog(@"%@", itemWithName);
//        
//        BNRItem *itemWithNoName = [[BNRItem alloc] init];
//        NSLog(@"%@", itemWithNoName);
        
//        [item setItemName:@"Red Sofa"];
//        item.itemName = @"Red Sofa";
////        [item setSerialNumber:@"A1B2C"];
//        item.serialNumber = @"A1B2C";
//        item.valueInDollars = 100;
        
//        [item setValueInDollars:100];
        
//        NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated],
//              [item serialNumber], [item valueInDollars]);
//        NSLog(@"%@", item);
//        
//        [item superClass];
//        // 释放items所指向的NSMutableArray对象
        
//        NSMutableString *mutableString = [[NSMutableString alloc] init];
//        BNRItem *item = [[BNRItem alloc] initWithItemName:mutableString
//                                           valueInDollars:5
//                                             serialNumber:@"4f2w7"];
//        [mutableString appendString:@"123"];
        NSLog(@"Setting items to nil....");
        items = nil;
        
        
        
        
    }
    return 0;
}


