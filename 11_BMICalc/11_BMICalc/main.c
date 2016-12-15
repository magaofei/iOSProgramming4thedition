//
//  main.c
//  11_BMICalc
//
//  Created by MAMIAN on 2016/12/11.
//  Copyright © 2016年 Gaofei Ma. All rights reserved.
//

#include <stdio.h>

//struct Person {
//    float heightInMeters;
//    int weightInKilos;
//};

typedef struct  {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p) {
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[]) {
    // insert code here...
//    struct Person mikey;
    Person mikey;
    mikey.heightInMeters = 1.7;
    mikey.weightInKilos = 96;
    
//    struct Person aaron;
    Person aaron;
    aaron.heightInMeters = 1.97;
    aaron.weightInKilos = 84;
    
//    printf("mikey is %.2f meters tall\n", mikey.heightInMeters);
//    printf("mikey weighs %d kilograms\n", mikey.weightInKilos);
//    printf("aaron is %.2f meters tall\n", aaron.heightInMeters);
//    printf("aaron weighs %d kilograms\n", aaron.weightInKilos);
    
    float bmi;
    bmi = bodyMassIndex(mikey);
    printf("mikey has a BMI of %.2f\n", bmi);
    
    bmi = bodyMassIndex(aaron);
    printf("aaron has a BMI of %.2f\n", bmi);
    
    return 0;
}
