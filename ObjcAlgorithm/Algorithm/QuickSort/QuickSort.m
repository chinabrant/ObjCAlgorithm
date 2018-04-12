//
//  QuickSort.m
//  ObjcAlgorithm
//
//  Created by brant on 12/04/2018.
//  Copyright © 2018 Brant. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort

// array里面要传整数
+ (NSArray *)sortArray:(NSMutableArray *)array left:(NSInteger)left right:(NSInteger)right {
    
    if (left >= right) {
        return array;
    }
    
    NSInteger i = left;
    NSInteger j = right;
    // 定义基准点
    NSInteger base = [array[left] integerValue];
    
    while (i != j) {
        // 从右向左查找 小于基准数的数
        while (base < [array[j] integerValue] && j > i) {
            j--;
        }
        
        // 从左向右查找 大于基准数的数
        while (base >= [array[i] integerValue] && i < j) {
            i++;
        }
        
        if (i < j) {
            // 交换两个数在数组中的位置
            id temp = array[i];
            array[i] = array[j];
            array[j] = temp;
        }
    }
    
    // i == j 后，交换基准数
    array[left] = array[i];
    array[i] = @(base);
    
    // 递归 处理查找完成后，两边的数列
    [QuickSort sortArray:array left:left right:i-1];
    [QuickSort sortArray:array left:i+1 right:right];
    
    return array;
}

@end
