//
//  AlgorithmListCell.m
//  ObjcAlgorithm
//
//  Created by brant on 2018/4/12.
//  Copyright © 2018年 Brant. All rights reserved.
//

#import "AlgorithmListCell.h"
#import "AlgorithmListCellViewModel.h"

@interface AlgorithmListCell ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


@end

@implementation AlgorithmListCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configCellWithViewModel:(id)viewModel {
    AlgorithmListCellViewModel *vm = viewModel;
    self.titleLabel.text = vm.model.title;
}

@end
