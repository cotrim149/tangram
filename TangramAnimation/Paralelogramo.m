//
//  Paralelogramo.m
//  desafioAnimationTangram_outubro21
//
//  Created by Lucas Andrade on 10/21/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "Paralelogramo.h"
#import "Triangle.h"

@implementation Paralelogramo

- (void)drawRect:(CGRect)rect {
    
    //primeiro triangulo da esquerda
    CGRect rectTriangulo = CGRectMake(rect.origin.x, rect.origin.y+rect.size.height*2, rect.size.width, rect.size.height);
    Triangle* triangulo = [[Triangle alloc]initWithFrame:rectTriangulo];
    triangulo.backgroundColor = [UIColor clearColor];
    triangulo.red = _red;
    triangulo.blue = _blue;
    triangulo.green = _green;
    [self addSubview:triangulo];
    triangulo.transform = CGAffineTransformMakeRotation(45*M_PI/180);

    //triangulo de cima do quadrado
    CGRect rectTriangulo2 = CGRectMake(rect.origin.x+rect.size.width*0.70, rect.origin.y+rect.size.height*1.65, rect.size.width, rect.size.height);
    Triangle* triangulo2 = [[Triangle alloc]initWithFrame:rectTriangulo2];
    triangulo2.backgroundColor = [UIColor clearColor];
    triangulo2.red = _red;
    triangulo2.green = _green;
    triangulo2.blue = _blue;
    [self addSubview:triangulo2];
    triangulo2.transform = CGAffineTransformMakeRotation(225*M_PI/180);

    //triangulo de baixo do quadrado
    CGRect rectTriangulo3 = CGRectMake(rect.origin.x+rect.size.width*1.4, rect.origin.y+rect.size.height*2, rect.size.width, rect.size.height);
    Triangle* triangulo3 = [[Triangle alloc]initWithFrame:rectTriangulo3];
    triangulo3.backgroundColor = [UIColor clearColor];
    [self addSubview:triangulo3];
    triangulo3.red = _red;
    triangulo3.green = _green;
    triangulo3.blue = _blue;
    triangulo3.transform = CGAffineTransformMakeRotation(45*M_PI/180);
    
    //triangulo de baixo do quadrado
    CGRect rectTriangulo4 = CGRectMake(rect.origin.x+rect.size.width*2.1, rect.origin.y+rect.size.height*1.65, rect.size.width, rect.size.height);
    Triangle* triangulo4 = [[Triangle alloc]initWithFrame:rectTriangulo4];
    triangulo4.backgroundColor = [UIColor clearColor];
    triangulo4.red = _red;
    triangulo4.green = _green;
    triangulo4.blue = _blue;
    [self addSubview:triangulo4];
    triangulo4.transform = CGAffineTransformMakeRotation(225*M_PI/180);


    
}
@end
