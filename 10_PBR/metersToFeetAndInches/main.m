//
//  main.m
//  metersToFeetAndInches
//
//  Created by MAMIAN on 2016/12/11.
//  Copyright © 2016年 Gaofei Ma. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters, unsigned int *ftPtr, double *inPtr) {
    // 这个函数假定meters的值是非负数
    // 将meters变量的值转化为feet的值，类型为浮点数
    
    double rawFeet = meters * 3.281; // e.g. 2.4536
    
    // 计算类型为无符号的整型 feet 变量的值
    unsigned int feet = (unsigned int)floor(rawFeet);
    
    // 将feet变量的值保存在传入的地址上
    if (ftPtr) {   // 用if判断避免了对NULL取值
        printf("Storing %u to the address %p \n", feet, ftPtr);
        *ftPtr = feet;
    }
    
    
    // 计算英寸
    double fractionalFoot = rawFeet - feet;
    double inches = fractionalFoot * 12.0;
    
    // 将inches 变量的值保存到传入的地址
    if (inPtr) {
        printf("Storing %.2f to the address %p\n", inches, inPtr);
        *inPtr = inches;

    }
    
    
}

int main(int argc, const char *argv[]) {
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInches(meters, &feet, &inches);
    printf("%.1f meters is equal to %d feet and %.1f inches.\n", meters, feet, inches);
    return 0;
}
