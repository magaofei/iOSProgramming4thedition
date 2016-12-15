//
//  main.c
//  8_CountDown
//
//  Created by MAMIAN on 2016/12/11.
//  Copyright © 2016年 Gaofei Ma. All rights reserved.
//

#include <stdio.h>
#include <pthread.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    
    for (int i = 99; i >= 0; i-=3) {
        if (i % 5 == 0) {
            printf("Found one!\n");
        } else {
            printf("%d\n", i);
        }
        
    }
    
    
    return 0;
}
