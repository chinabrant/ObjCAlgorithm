//
//  AlgorithmListCellViewModel.h
//  ObjcAlgorithm
//
//  Created by brant on 2018/4/12.
//  Copyright © 2018年 Brant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YTTableCellViewModelProtocol.h"
#import "AlgorithmListModel.h"

@interface AlgorithmListCellViewModel : NSObject <YTTableCellViewModelProtocol>

@property (nonatomic, strong) AlgorithmListModel *model;

@end
