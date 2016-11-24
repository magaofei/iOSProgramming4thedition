//
//  main.m
//  Strong Reference Cycles
//
//  Created by MAMIAN on 2016/11/24.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    
    NSMutableArray *items = [[NSMutableArray alloc] init];
    // insert code here...
    
    


    for (Person *p in items) {
        NSLog(@"%@", p);
    }
    
 
    
    
        
        
        
        
        
    
    return 0;
}


