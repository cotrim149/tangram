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
    CGRect rect = CGRectMake(97, 50, 50, 100);
    Paralelogramo* paralelogramo = [[Paralelogramo alloc]initWithFrame:rect];
    paralelogramo.backgroundColor = [UIColor clearColor];
    paralelogramo.red = 140;
    paralelogramo.blue = 200;
    paralelogramo.green = 60;
    [self.view addSubview:paralelogramo];
    
    
    CGRect rect2 = CGRectMake(238,109, 50, 100);
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
    CGRect rectTrianguloMenor4 = CGRectMake(185, 161.8, 50, 100);
    Triangle* trianguloMenor4 = [[Triangle alloc]initWithFrame:rectTrianguloMenor4];
    trianguloMenor4.red = 100;
    trianguloMenor4.green = 200;
    trianguloMenor4.blue = 0;
    trianguloMenor4.backgroundColor = [UIColor clearColor];
    [self.view addSubview:trianguloMenor4];
    trianguloMenor4.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(1.4, 1.4),CGAffineTransformMakeRotation(270*M_PI/180));

//    
//    //triangulo 1
//    CGRect rectTriangulo1 = CGRectMake(120, 120, 50, 100);
//    Triangle* triangulo1 = [[Triangle alloc]initWithFrame:rectTriangulo1];
//    triangulo1.red = 0;
//    triangulo1.green = 0;
//    triangulo1.blue = 225;
//    triangulo1.backgroundColor = [UIColor clearColor];
//    [self.view addSubview:triangulo1];
//    triangulo1.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(3,3),CGAffineTransformMakeRotation(M_PI/180));
//    
//
//    
//    //triangulo 2
//    CGRect rectTrianguloMaior2 = CGRectMake(185, 55, 50, 100);
//    Triangle* trianguloMaior2 = [[Triangle alloc]initWithFrame:rectTrianguloMaior2];
//    trianguloMaior2.red = 80;
//    trianguloMaior2.green = 200;
//    trianguloMaior2.blue = 100;
//    trianguloMaior2.backgroundColor = [UIColor clearColor];
//    [self.view addSubview:trianguloMaior2];
//    trianguloMaior2.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(3, 3),CGAffineTransformMakeRotation(90*M_PI/180));
//    
    
    

    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
