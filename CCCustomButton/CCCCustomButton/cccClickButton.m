//
//  cccClickButton.m
//  CCCCustomButton
//
//  Created by 楚晨晨 on 16/4/13.
//  Copyright © 2016年 楚晨晨. All rights reserved.
//

#import "cccClickButton.h"

@implementation cccClickButton
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = 5;
        self.layer.borderWidth =  2;
        [self addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
        
//        [self addTapAction];
        self.isCLick = NO;
    }
    return self;
}



-(void)setIsCLick:(BOOL)isCLick
{
    _isCLick = isCLick;
    
    if(isCLick)
    {
        [self setHighlightedStatus];
    }
    else
    {
        [self setNormalStatus];
    }
    
}
-(void)setNormalStatus
{
    
    [self setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
//    self. =[UIColor lightGrayColor];
    
    self.layer.borderColor=  [[UIColor lightGrayColor] CGColor];
    
}
-(void)setHighlightedStatus
{
    
    [self setTitleColor:[UIColor cyanColor] forState:UIControlStateNormal];
    
    self.layer.borderColor=  [[UIColor cyanColor] CGColor];
    ;
    
    
}
- (void)buttonClick{



    
    //点击取消时
    if(self.isCLick == YES)
    {
        [self setNormalStatus];
    }
    
    //点击选中时
    else
    {
        [self setHighlightedStatus];
    }
    
    self.isCLick = !self.isCLick;
    
    [self.clinicDele clinicTitle:[NSString stringWithFormat:@"%ld",(long)self.tag] withClinicChoose:self.isCLick];

}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
