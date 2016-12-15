//
//  main.m
//  mutableCopy
//
//  Created by MAMIAN on 2016/12/15.
//  Copyright © 2016年 Gaofei Ma. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        // Array mutableCopy
        NSArray *arr = @[@1,@3];
        NSMutableArray *mutableArr = [arr mutableCopy]; // 深复制 返回可变类型
        
        [mutableArr addObject:@4];
        
        // Array copy
        NSMutableArray *arrcopy = [arr copy];
        [arrcopy addObject:@4];  //这里会崩溃，因为返回的是不可变类型，他没有addObject方法
        
        NSLog(@"%@", mutableArr);
        NSLog(@"arrcopy %@", arrcopy);
    }
    return 0;
}
