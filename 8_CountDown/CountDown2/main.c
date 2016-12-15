//
//  main.c
//  CountDown2
//
//  Created by MAMIAN on 2016/12/11.
//  Copyright © 2016年 Gaofei Ma. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    
    printf("Who is cool?");
    const char *name = readLine(NULL);
    printf("%s is cool!\n\n", name);
    
    return 0;
}
