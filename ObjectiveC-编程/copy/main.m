//
//  main.m
//  copy
//
//  Created by MAMIAN on 2016/12/7.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

/**
 测试，用copy修饰NSString后，子类是NSString赋值时地址是否一样

 */
#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1 = [[Person alloc] init];
        Person *p2 = [[Person alloc] init];
        NSString *steve = @"steve";
        p2.name = steve;
        NSLog(@"p2.name = %p", p2.name);
        NSLog(@"steve = %p", steve);
        // 内存相同，没有创建新的
        NSMutableString *mutableSteve = [NSMutableString
                                         stringWithString:@"mutableSteve"] ;
        
        p1.name = mutableSteve;
        NSLog(@"p1.name = %p", p1.name);
        NSLog(@"mutableSteve = %p", mutableSteve);
        // 内存不同，说明返回了一个不可变的对象
        
        // 结论，如果NSString来接收copy修饰过的NSString，那么性能上不会有什么变化，
        // 我们可以大胆的使用copy
        
        
        
        
        
    }
    return 0;
}
