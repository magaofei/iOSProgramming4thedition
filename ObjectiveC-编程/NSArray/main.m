//
//  main.m
//  NSArray
//
//  Created by MAMIAN on 2016/12/7.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

/**
 结论，retainCount不可靠，不能使用

 */
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建三个NSData对象
        NSDate *now = [NSDate date];
        NSDate *nowinit = [[NSDate alloc] init];
        NSLog(@"now = %@, retain count = %ld", now,
              CFGetRetainCount((__bridge CFTypeRef)(now)));
        NSLog(@"nowinit = %@, retain count = %ld", nowinit,
              CFGetRetainCount((__bridge CFTypeRef)(nowinit)));
        
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        
        NSLog(@"now = %@, retain count = %ld", now,
              CFGetRetainCount((__bridge CFTypeRef)(now)));
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60 * 60.0];
        
        NSLog(@"now = %@, retain count = %ld", now,
              CFGetRetainCount((__bridge CFTypeRef)(now)));
        
        // 创建一个数组包含这三个NSDate对象
        NSArray *dateList = @[now, tomorrow, yesterday];
        
        
        NSLog(@"now = %@, retain count = %ld", now,
              CFGetRetainCount((__bridge CFTypeRef)(now)));
        // retain count = 3
        
        NSLog(@"tomorrow = %@, retain count = %ld", tomorrow,
              CFGetRetainCount((__bridge CFTypeRef)(tomorrow)));
        // retain count = 2
        
        NSLog(@"yesterday = %@, retain count = %ld", yesterday,
              CFGetRetainCount((__bridge CFTypeRef)(yesterday)));
        // retain count = 2
        
        NSLog(@"dateList = %@, retain count = %ld", dateList,
              CFGetRetainCount((__bridge CFTypeRef)(dateList)));
        // retain count = 1
        
        
    }
    return 0;
}
