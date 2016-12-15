//
//  main.m
//  10_PBR
//
//  Created by MAMIAN on 2016/12/11.
//  Copyright © 2016年 Gaofei Ma. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main (int argc, const char * argv[]){
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    // 将integerPart的地址作为实参传入
    fractionPart = modf(pi, &integerPart);
    
    // 获取integer地址上的值
    printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart, fractionPart);
}
