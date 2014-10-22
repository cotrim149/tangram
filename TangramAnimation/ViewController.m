//
//  ViewController.m
//  TangramAnimation
//
//  Created by Victor de Lima on 21/10/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import "ViewController.h"
#import "Paralelogramo.h"
#import "Triangle.h"
#import "Square.h"
@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    CGRect rect = CGRectMake(100, 50, 50, 100);
    Paralelogramo* paralelogramo = [[Paralelogramo alloc]initWithFrame:rect];
    paralelogramo.backgroundColor = [UIColor clearColor];
    paralelogramo.red = 140;
    paralelogramo.blue = 200;
    paralelogramo.green = 60;
    [self.view addSubview:paralelogramo];
    
    
    CGRect rect2 = CGRectMake(240,110, 50, 100);
    //"quadrado"
    Square* quadrado = [[Square alloc]initWithFrame:rect2];
    quadrado.backgroundColor = [UIColor clearColor];
    quadrado.red = 150;
    quadrado.blue = 0;
    quadrado.green = 20;
    [self.view addSubview:quadrado];
    //    [UIView animateWithDuration:2.0 animations:^{
    //        paralelogramo.transform = CGAffineTransformMakeScale(5, 5);
    //    }];
    
    
    
    //triangulo numero 4
    CGRect rectTriangulo = CGRectMake(186.5, 161.8, 50, 100);
    Triangle* triangulo = [[Triangle alloc]initWithFrame:rectTriangulo];
    triangulo.red = 100;
    triangulo.green = 200;
    triangulo.blue = 0;
    triangulo.backgroundColor = [UIColor clearColor];
    [self.view addSubview:triangulo];
    triangulo.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(1.4, 1.4),CGAffineTransformMakeRotation(270*M_PI/180));

    
    //Triangulo 7
    CGRect rectTriangulo7 = CGRectMake(243+rectTriangulo.size.width, 133+rectTriangulo.size.height, 50, 100);
    Triangle *triangle7 = [[Triangle alloc] initWithFrame:rectTriangulo7];
    triangle7.red = 20;
    triangle7.green = 40;
    triangle7.blue = 200;
    triangle7.backgroundColor = [UIColor clearColor];
    [self.view addSubview:triangle7];
    CGAffineTransform scale = CGAffineTransformMakeScale(2, 2);
    CGAffineTransform rotate = CGAffineTransformMakeRotation((90-45)*M_PI/180);
    triangle7.transform = CGAffineTransformConcat(scale,rotate);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
