//
//  main.m
//  copy
//
//  Created by MAMIAN on 2016/11/24.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSMutableString *mutableString = [[NSMutableString alloc] init];
        mutableString = [NSMutableString stringWithString:@"1234"];
        Person *p1 = [[Person alloc] init];
        
        p1.name = mutableString;
        NSLog(@"p1.name = %@ --> %p", p1.name, p1.name);
        NSLog(@"mutableString = %@ --> %p", mutableString, mutableString);
        
        NSLog(@"appendString之后");
        [mutableString appendString:@"5"];
        NSLog(@"p1.name = %@", p1.name);
        NSLog(@"mutableString = %@", mutableString);
        
    }
    return 0;
}
