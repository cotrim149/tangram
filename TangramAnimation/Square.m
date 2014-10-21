//
//  Square.m
//  Core_Animation
//
//  Created by Thiago-Bernardes on 10/21/14.
//  Copyright (c) 2014 TMB. All rights reserved.
//

#import "Square.h"
#import "Triangle.h"
@implementation Square


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    // Drawing code
    CGFloat red=150;
    CGFloat green=0;
    CGFloat blue=120;
        
    CGRect squareOne = CGRectMake(rect.origin.x,rect.origin.y,rect.size.width,rect.size.height);
    Triangle *triangleOne = [[Triangle alloc] initWithFrame:squareOne];
    triangleOne.red = red;
    triangleOne.green = green;
    triangleOne.blue = blue;
    triangleOne.backgroundColor = [UIColor clearColor];
    triangleOne.transform = CGAffineTransformMakeRotation(45*M_PI/180);
    [self addSubview:triangleOne];
    
    CGRect squareTwo = CGRectMake(rect.origin.x+rect.size.width-0.30*rect.size.width,rect.origin.y,rect.size.width,rect.size.height);
    Triangle *triangleTwo = [[Triangle alloc] initWithFrame:squareTwo];
    triangleTwo.red = red;
    triangleTwo.green = green;
    triangleTwo.blue = blue;
    triangleTwo.backgroundColor = [UIColor clearColor];
    triangleTwo.transform = CGAffineTransformMakeRotation(135*M_PI/180);
    [self addSubview:triangleTwo];
    
    CGRect squareThree= CGRectMake(rect.origin.x+rect.size.width-0.30*rect.size.width,rect.origin.y+rect.size.height/2-0.15*rect.size.height,rect.size.width,rect.size.height);
    Triangle *triangleThree = [[Triangle alloc] initWithFrame:squareThree];
    triangleThree.red = red;
    triangleThree.green = green;
    triangleThree.blue = blue;
    triangleThree.backgroundColor = [UIColor clearColor];
    triangleThree.transform = CGAffineTransformMakeRotation(225*M_PI/180);
    [self addSubview:triangleThree];
    
    CGRect squareFour= CGRectMake(rect.origin.x,rect.origin.y+rect.size.height/2-0.15*rect.size.height,rect.size.width,rect.size.height);
    Triangle *triangleFour = [[Triangle alloc] initWithFrame:squareFour];
    triangleFour.red = red;
    triangleFour.green = green;
    triangleFour.blue = blue;
    triangleFour.backgroundColor = [UIColor clearColor];
    triangleFour.transform = CGAffineTransformMakeRotation(315*M_PI/180);
    [self addSubview:triangleFour];
    
    
}


@end
