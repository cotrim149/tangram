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

    //Paralelogram 3
    CGRect rect = CGRectMake(100, 50, 50, 100);
    Paralelogramo* paralelogramo = [[Paralelogramo alloc]initWithFrame:rect];
    paralelogramo.backgroundColor = [UIColor clearColor];
    paralelogramo.red = 140;
    paralelogramo.blue = 200;
    paralelogramo.green = 60;
    [self.view addSubview:paralelogramo];
    
    
    CGRect rect2 = CGRectMake(240,110, 50, 100);
    //Quadrado 5
    Square* quadrado = [[Square alloc]initWithFrame:rect2];
    quadrado.backgroundColor = [UIColor clearColor];
    quadrado.red = 150;
    quadrado.blue = 0;
    quadrado.green = 20;
    [self.view addSubview:quadrado];
    //    [UIView animateWithDuration:2.0 animations:^{
    //        paralelogramo.transform = CGAffineTransformMakeScale(5, 5);
    //    }];
    
    
    
    //triangulo 4
    CGRect rectTrianguloMenor4 = CGRectMake(186.5, 161.8, 50, 100);
    Triangle* trianguloMenor4 = [[Triangle alloc]initWithFrame:rectTrianguloMenor4];
    trianguloMenor4.red = 100;
    trianguloMenor4.green = 200;
    trianguloMenor4.blue = 0;
    trianguloMenor4.backgroundColor = [UIColor clearColor];
    [self.view addSubview:trianguloMenor4];
    trianguloMenor4.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(1.4, 1.4),CGAffineTransformMakeRotation(270*M_PI/180));

    
    

    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
