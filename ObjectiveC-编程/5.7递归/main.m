//
//  main.m
//  5.7递归
//
//  Created by MAMIAN on 2016/11/27.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

/**
 这个函数的递归，最好画图来提示，

 */
#include <stdio.h>

void singTheSong(int numberOfBottles) {
    if (numberOfBottles == 0) {
        printf("There are simply no more bottles of beer on the wall.\n");
    } else {
        printf("%d bottles of beer on the wall. %d bottles of beer.\n",
               numberOfBottles, numberOfBottles);
        int oneFewer = numberOfBottles - 1;
        printf("Take one down, pass it around, %d bottles of beer one the wall.\n",
               oneFewer);
        singTheSong(oneFewer); // 函数调用自己
        
        // 在函数结束之前打印出一条信息
        printf("Put a bottle in the recycling, %d empty bottles in the bin.\n",
               numberOfBottles);
    }
}

int main(int argc, const char * argv[]) {
    singTheSong(4);
    return 0;
}
