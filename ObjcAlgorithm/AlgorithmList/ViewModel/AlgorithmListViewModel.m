//
//  AlgorithmListViewModel.m
//  ObjcAlgorithm
//
//  Created by brant on 2018/4/12.
//  Copyright © 2018年 Brant. All rights reserved.
//

#import "AlgorithmListViewModel.h"
#import "YTTableViewSection.h"

@implementation AlgorithmListViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupSections];
    }
    return self;
}

- (void)setupSections {
    AlgorithmListModel *m1 = [AlgorithmListModel new];
    m1.title = @"冒泡排序";
    AlgorithmListCellViewModel *vm1 = [[AlgorithmListCellViewModel alloc] init];
    vm1.model = m1;
    
    YTTableViewSection *section = [[YTTableViewSection alloc] initWithSectionKey:@"" viewModels:@[vm1]];
    
    self.sections = @[section];
}

@end
