//
//  main.c
//  tm
//
//  Created by MAMIAN on 2016/12/11.
//  Copyright © 2016年 Gaofei Ma. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    long secondsSince1970 = time(NULL);
    printf("%ld seconds since 1970\n", secondsSince1970);
    
    long longTimes = 4000000;
    secondsSince1970 = secondsSince1970 + longTimes; // 从当前时间到400万秒之后
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The time is %d-%d-%d\n", now.tm_year + 1900, now.tm_mon + 1, now.tm_mday);
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);

    return 0;
}
