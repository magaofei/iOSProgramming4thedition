//
//  BNRItem.m
//  RandomItems
//
//  Created by MAMIAN on 2016/11/23.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+ (instancetype)randomItem {
    NSArray *randomAdjectiveList = @[@"Fluffy",
                                     @"Rusty",
                                     @"Shiny"];
    NSArray *randomNounList = @[@"Bear",
                                @"Spork",
                                @"Mac"];
    //根据数组对象所含对象的个数，得到随机索引
    NSInteger adjectiveIndex = arc4random() % [randomNounList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            randomAdjectiveList[adjectiveIndex],
                            randomNounList[nounIndex]];
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + arc4random() % 10, // 0~10之间的随机数
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10];
    BNRItem *newItem = [[self alloc] initWithItemName:randomName
                                       valueInDollars:randomValue
                                         serialNumber:randomSerialNumber];
    return newItem;
}

//- (void)setItemName:(NSString *)str {
//    _itemName = str;
//}
//
//- (NSString *)itemName {
//    return _itemName;
//}
//
//- (void)setSerialNumber:(NSString *)str {
//    _serialNumber = str;
//}
//
//- (NSString *)serialNumber {
//    return _serialNumber;
//}
//
//- (void)setValueInDollars:(int)v {
//    _valueInDollars = v;
//}
//
//- (int)valueInDollars {
//    return _valueInDollars;
//}
//
//- (NSDate *)dateCreated {
//    return _dateCreated;
//}
//
//- (void)setContainedItem:(BNRItem *)item {
//    _countainedItem = item;
//    
//    // 将item加入容纳它的BNRItem对象时
//    // 会将它的container实例变量指向容纳它的对象
//    item.container = self;
//}
//
//- (BNRItem *)containedItem {
//    return _countainedItem;
//}
//
//- (void)setContainer:(BNRItem *)item {
//    _container = item;
//}
//
//- (BNRItem *)container {
//    return _container;
//}



- (void)dealloc {
    NSLog(@"Destroyed %@", self);
}

- (instancetype)initWithItemName:(NSString *)name {
    return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}

- (instancetype)init {
    return [self initWithItemName:@"Item"];
}


- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber {
    self = [super init];
    if (self) {
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        
        _dateCreated = [[NSDate alloc] init];
    }
    return self;
}

- (void) superClass {
    NSLog(@"self --> %@", [self class]);
    NSLog(@"super --> %@", [super class]);
}



- (NSString *)description {
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@) :Worth $%d, recorded on %@", self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated ];
    return descriptionString;
}

@end
