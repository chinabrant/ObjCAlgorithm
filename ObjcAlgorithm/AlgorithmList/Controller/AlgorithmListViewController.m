//
//  AlgorithmListViewController.m
//  ObjcAlgorithm
//
//  Created by brant on 2018/4/12.
//  Copyright © 2018年 Brant. All rights reserved.
//

#import "AlgorithmListViewController.h"
#import "YTTableView.h"
#import "AlgorithmListViewModel.h"

@interface AlgorithmListViewController ()

@property (nonatomic, strong) YTTableView *tableView;

@property (nonatomic, strong) AlgorithmListViewModel *viewModel;

@end

@implementation AlgorithmListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"算法列表";
    
    [self.view addSubview:self.tableView];
    self.tableView.frame = self.view.bounds;
    
    self.tableView.sections = self.viewModel.sections;
}


#pragma mark - getters/setters
- (YTTableView *)tableView {
    if (!_tableView) {
        _tableView = [[YTTableView alloc] init];
        _tableView.tableFooterView = [UIView new];
    }
    
    return _tableView;
}

- (AlgorithmListViewModel *)viewModel {
    if (!_viewModel) {
        _viewModel = [AlgorithmListViewModel new];
    }
    
    return _viewModel;
}

@end
