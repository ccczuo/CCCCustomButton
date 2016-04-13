//
//  cccButtonCell.m
//  CCCCustomButton
//
//  Created by 楚晨晨 on 16/4/13.
//  Copyright © 2016年 楚晨晨. All rights reserved.
//

#import "cccButtonCell.h"

@interface cccButtonCell ()

@property (nonatomic,strong)NSMutableArray *arr;
@end
@implementation cccButtonCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)updateData{
    self.arr = [NSMutableArray array];
    
    cccClickButton *ccbutton = [[cccClickButton alloc]init];
    ccbutton.tag = 1;
    [ccbutton setTitle:@"可以" forState:UIControlStateNormal];
    
    ccbutton.clinicDele = self;
    [self addSubview:ccbutton];

    [self.arr addObject:ccbutton];

    ccbutton = [[cccClickButton alloc]init];
    [ccbutton setTitle:@"不可以" forState:UIControlStateNormal];
    ccbutton.tag = 2;

    ccbutton.clinicDele = self;


    [self addSubview:ccbutton];
    [self.arr addObject:ccbutton];

    [self refresh];

}

-(void)clinicTitle:(NSString *)title withClinicChoose:(BOOL)isChoose{
    cccClickButton *cc = [self viewWithTag:2];
    cccClickButton *cc1 = [self viewWithTag:1];
    if ([title isEqualToString:@"1"]) {
        cc.isCLick = NO;
        cc1.isCLick = YES;

        NSLog(@"传到后台的结果%@",title);

    }else {
    
        cc.isCLick = YES;
        cc1.isCLick = NO;
        NSLog(@"传到后台的结果%@",title);

    }
}
- (void)refresh{


    cccClickButton *button = (cccClickButton*)self.arr[0];
    CGRect r1 = self.titleLabel.frame;
    r1.origin.x = r1.origin.x+10;
    r1.origin.y =CGRectGetMaxY(r1)+20;
    r1.size.width = 100;
    r1.size.height = 30;
    button.frame = r1;
    
    button = (cccClickButton *)self.arr[1];
    CGRect r2 = button.frame;
    r2.origin.x = CGRectGetMaxX(r1)+50;
    r2.origin.y = r1.origin.y;
    r2.size.width = 100;
    r2.size.height = 30;
    button.frame = r2;
    
    

}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


    

@end
