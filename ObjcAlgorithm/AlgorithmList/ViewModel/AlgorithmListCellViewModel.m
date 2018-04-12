//
//  AlgorithmListCellViewModel.m
//  ObjcAlgorithm
//
//  Created by brant on 2018/4/12.
//  Copyright © 2018年 Brant. All rights reserved.
//

#import "AlgorithmListCellViewModel.h"

@implementation AlgorithmListCellViewModel

- (CGFloat)cellHeight {
    return 50;
}


/**
 返回cell的复用id
 
 @return cell的复用id
 */
+ (NSString *)identifier {
    return @"AlgorithmListCell";
}


/**
 注册cell
 
 @param table 要注册到的table view
 */
+ (void)registerFor:(UITableView *)table {
    [table registerNib:[UINib nibWithNibName:@"AlgorithmListCell" bundle:nil] forCellReuseIdentifier:[AlgorithmListCellViewModel identifier]];
}

@end
