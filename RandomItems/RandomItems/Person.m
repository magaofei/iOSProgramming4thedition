//
//  Person.m
//  RandomItems
//
//  Created by MAMIAN on 2016/11/23.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

#import "Person.h"
@interface Person()

@property (nonatomic, readwrite) NSString *onlyName;


@end


@implementation Person

- (void)setLastNameOfSpouse:(NSString *)lastNameOfSpouse {
    self.spouse.lastName = lastNameOfSpouse;
}

- (NSString *)lastNameOfSpouse {
    return self.spouse.lastName;
}

- (void)test {
    self.onlyName = @"123";
//    _onlyName = @"123";
}

@end
