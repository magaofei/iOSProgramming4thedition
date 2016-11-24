//
//  Person.h
//  RandomItems
//
//  Created by MAMIAN on 2016/11/23.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong) Person *spouse;
@property (nonatomic, unsafe_unretained) NSString *name;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy, ) NSString *lastNameOfSpouse;


@end
