//
//  main.c
//  BinarySearch
//
//  Created by MAMIAN on 2016/12/11.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

#include <stdio.h>

// 传入数组和要查的数，返回key值
int binarySearch(int arr[], int num, int start, int end) {
    
    unsigned int mid;
    
    while (start <= end) {
        mid = start + (end - start) / 2;
        
        if (arr[mid] < num) {
            start = mid + 1;
        } else if(arr[mid] > num) {
            end = mid - 1;
        } else {
            return mid;
        }
    }
    return -1;
    

}

int main(int argc, const char * argv[]) {
    // insert code here...
    
    int arr[] = {1, 2, 32, 43, 56 , 66, 67, 88, 90, 111, 112, 113};
    int key = binarySearch(arr, 43, 0, 12);
    printf("key = %d \n", key);
    
    
    
    return 0;
}
