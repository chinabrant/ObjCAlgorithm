//
//  BubbleSort.m
//  ObjcAlgorithm
//
//  Created by brant on 2018/4/12.
//  Copyright © 2018年 Brant. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort

/*
 array 里面传 number
 */
+ (void)sortArray:(NSMutableArray *)array {
    
    for (int i = 0; i < array.count; i++) {
        
        for (int j = 0; j < array.count - 1 - i; j++) {
            
            NSInteger temp = [array[j] integerValue];
            if (temp > [array[j+1] integerValue]) {
                // 交换
                array[j] = array[j+1];
                array[j + 1] = @(temp);
            }
        }
    }
    
    NSLog(@"Sorted Array: %@", array);
    
}

@end
