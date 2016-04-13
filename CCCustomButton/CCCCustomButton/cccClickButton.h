//
//  cccClickButton.h
//  CCCCustomButton
//
//  Created by 楚晨晨 on 16/4/13.
//  Copyright © 2016年 楚晨晨. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol SelectBtnDelegate <NSObject>

-(void)clinicTitle:(NSString *)title withClinicChoose:(BOOL)isChoose;

@end
@interface cccClickButton : UIButton
@property (nonatomic,assign) BOOL isCLick;
@property (nonatomic,assign) id<SelectBtnDelegate> clinicDele;

@end
