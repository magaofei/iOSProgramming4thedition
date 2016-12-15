//
//  main.m
//  17.6练习2-有趣的名字
//
//  Created by MAMIAN on 2016/12/7.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 从File获取NSString
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        
        // 将字符串按\n进行分割，并保存在数组中
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        for (NSString *n in names) {
            // 查找字符串aa 忽略大小写
            NSRange r = [n rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
            
            // 是否找到？
            if (r.location != NSNotFound) {
                NSLog(@"%@", n);
            }
        }
        
        
        
    }
    return 0;
}
