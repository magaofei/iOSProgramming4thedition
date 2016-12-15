//
//  main.c
//  12_heap
//
//  Created by MAMIAN on 2016/12/11.
//  Copyright © 2016年 Gaofei Ma. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person *p) {  //结构体指针
    return p->weightInKilos / (p->heightInMeters * p->heightInMeters);
}

int main(int argc, const char * argv[]) {
    // insert code here...
    Person *mikey = (Person *)malloc(sizeof(Person));
    
    // 为一个Person结构分配内存
    mikey->weightInKilos = 96;
    mikey->heightInMeters = 1.7;
    
    float mikeyBMI = bodyMassIndex(mikey);
    printf("mikey has a BMI of %f \n", mikeyBMI);
    free(mikey);
    mikey = NULL;

    
    return 0;
}
