//
//  cccButtonCell.h
//  CCCCustomButton
//
//  Created by 楚晨晨 on 16/4/13.
//  Copyright © 2016年 楚晨晨. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "cccClickButton.h"

@interface cccButtonCell : UITableViewCell<SelectBtnDelegate>
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
- (void)updateData;
@end
