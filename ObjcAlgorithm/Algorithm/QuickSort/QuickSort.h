//
//  QuickSort.h
//  ObjcAlgorithm
//
//  Created by brant on 12/04/2018.
//  Copyright © 2018 Brant. All rights reserved.
//

/*
 排序算法
 
 桶排序
 冒泡排序
 快速排序
 选择排序
 计数排序
 基数排序
 插入排序
 归并排序
 堆排序
 */

#import <Foundation/Foundation.h>

// 快速排序 
@interface QuickSort : NSObject

// array里面要传整数
+ (NSArray *)sortArray:(NSMutableArray *)array left:(NSInteger)left right:(NSInteger)right;

@end
