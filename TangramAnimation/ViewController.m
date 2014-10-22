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
    
    
    
//    [self createBigSquare];
    [self createLetterP];
//    [self createLetterN];
}

-(void)createLetterN{
    
    //Paralelogram 3
    CGRect rect = CGRectMake(97, 50, 50, 100);
    Paralelogramo* paralelogramo = [[Paralelogramo alloc]initWithFrame:rect];
    paralelogramo.backgroundColor = [UIColor clearColor];
    paralelogramo.red = 153;
    paralelogramo.blue = 255;
    paralelogramo.green = 77;
    [self.view addSubview:paralelogramo];
    
    
    CGRect rect2 = CGRectMake(238,109, 50, 100);
    //Quadrado 5
    Square* quadrado = [[Square alloc]initWithFrame:rect2];
    quadrado.backgroundColor = [UIColor clearColor];
    quadrado.red = 255;
    quadrado.blue = 77;
    quadrado.green = 255;
    [self.view addSubview:quadrado];
    //    [UIView animateWithDuration:2.0 animations:^{
    //        paralelogramo.transform = CGAffineTransformMakeScale(5, 5);
    //    }];
    
    
    
    //triangulo 4
    CGRect rectTrianguloMenor4 = CGRectMake(185, 161.8, 50, 100);
    Triangle* trianguloMenor4 = [[Triangle alloc]initWithFrame:rectTrianguloMenor4];
    trianguloMenor4.red = 255;
    trianguloMenor4.green = 77;
    trianguloMenor4.blue = 255;
    trianguloMenor4.backgroundColor = [UIColor clearColor];
    [self.view addSubview:trianguloMenor4];
    trianguloMenor4.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(1.4, 1.4),CGAffineTransformMakeRotation(270*M_PI/180));
    
    
    
    //Triangulo 7
    CGRect rectTriangulo7 = CGRectMake(241+rect2.size.width, 132+rect2.size.height, 50, 100);
    Triangle *triangle7 = [[Triangle alloc] initWithFrame:rectTriangulo7];
    triangle7.red = 0;
    triangle7.green = 255;
    triangle7.blue = 255;
    triangle7.backgroundColor = [UIColor clearColor];
    [self.view addSubview:triangle7];
    CGAffineTransform scale = CGAffineTransformMakeScale(2, 2);
    CGAffineTransform rotate = CGAffineTransformMakeRotation((90-45)*M_PI/180);
    triangle7.transform = CGAffineTransformConcat(scale,rotate);
    
    //triangulo 1
    CGRect rectTriangulo1 = CGRectMake(115, 126, 50, 100);
    Triangle* triangulo1 = [[Triangle alloc]initWithFrame:rectTriangulo1];
    triangulo1.red = 0;
    triangulo1.green = 0;
    triangulo1.blue = 225;
    triangulo1.backgroundColor = [UIColor clearColor];
    [self.view addSubview:triangulo1];
    triangulo1.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(2.82,2.82),CGAffineTransformMakeRotation(360*M_PI/180));
    
    //triangulo 2
    CGRect rectTrianguloMaior2 = CGRectMake(186, 56, 50, 100);
    Triangle* trianguloMaior2 = [[Triangle alloc]initWithFrame:rectTrianguloMaior2];
    trianguloMaior2.red = 80;
    trianguloMaior2.green = 200;
    trianguloMaior2.blue = 100;
    trianguloMaior2.backgroundColor = [UIColor clearColor];
    [self.view addSubview:trianguloMaior2];
    trianguloMaior2.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(2.82, 2.82),CGAffineTransformMakeRotation(90*M_PI/180));
    
    
    //triangulo 6
    CGRect rectTrianguloMenor6 = CGRectMake(292, 57, 50, 100);
    Triangle* trianguloMenor6 = [[Triangle alloc]initWithFrame:rectTrianguloMenor6];
    trianguloMenor6.red = 255;
    trianguloMenor6.green = 204;
    trianguloMenor6.blue = 153;
    trianguloMenor6.backgroundColor = [UIColor clearColor];
    [self.view addSubview:trianguloMenor6];
    trianguloMenor6.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(1.4, 1.4),CGAffineTransformMakeRotation(180*M_PI/180));
    

    
    
}

-(void)createLetterP{
    
    //Paralelogram 3
    CGRect rect = CGRectMake(-52, 466, 50, 100);
    Paralelogramo* paralelogramo = [[Paralelogramo alloc]initWithFrame:rect];
    paralelogramo.backgroundColor = [UIColor clearColor];
    paralelogramo.red = 153;
    paralelogramo.blue = 255;
    paralelogramo.green = 77;
    [self.view addSubview:paralelogramo];
    paralelogramo.transform = CGAffineTransformConcat(CGAffineTransformMakeRotation(135*M_PI/180),CGAffineTransformMakeScale(-1, 1));
    
    CGRect rect2 = CGRectMake(215,280, 50, 100);
    //Quadrado 5
    Square* quadrado = [[Square alloc]initWithFrame:rect2];
    quadrado.backgroundColor = [UIColor clearColor];
    quadrado.red = 255;
    quadrado.blue = 77;
    quadrado.green = 255;
    quadrado.transform = CGAffineTransformMakeRotation(45*M_PI/180);
    [self.view addSubview:quadrado];
    
    
    
    
    
//        [UIView animateWithDuration:2.0 animations:^{
//            paralelogramo.transform = CGAffineTransformMakeScale(5, 5);
//        }];
//
//    
//    
    //triangulo 4
    CGRect rectTrianguloMenor4 = CGRectMake(89, 448, 50, 100);
    Triangle* trianguloMenor4 = [[Triangle alloc]initWithFrame:rectTrianguloMenor4];
    trianguloMenor4.red = 255;
    trianguloMenor4.green = 77;
    trianguloMenor4.blue = 255;
    trianguloMenor4.backgroundColor = [UIColor clearColor];
    [self.view addSubview:trianguloMenor4];
    trianguloMenor4.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(1.4, 1.4),CGAffineTransformMakeRotation(135*M_PI/180));
    
    
    
    //Triangulo 7
    CGRect rectTriangulo7 = CGRectMake(65+rect2.size.width, 175+rect2.size.height, 50, 100);
    Triangle *triangle7 = [[Triangle alloc] initWithFrame:rectTriangulo7];
    triangle7.red = 0;
    triangle7.green = 255;
    triangle7.blue = 255;
    triangle7.backgroundColor = [UIColor clearColor];
    [self.view addSubview:triangle7];
    CGAffineTransform scale = CGAffineTransformMakeScale(2, 2);
    CGAffineTransform rotate = CGAffineTransformMakeRotation(180*M_PI/180);
    triangle7.transform = CGAffineTransformConcat(scale,rotate);
    
    //triangulo 1
    CGRect rectTriangulo1 = CGRectMake(115, 126, 50, 100);
    Triangle* triangulo1 = [[Triangle alloc]initWithFrame:rectTriangulo1];
    triangulo1.red = 0;
    triangulo1.green = 0;
    triangulo1.blue = 225;
    triangulo1.backgroundColor = [UIColor clearColor];
    [self.view addSubview:triangulo1];
    triangulo1.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(2.82,2.82),CGAffineTransformMakeRotation(225*M_PI/180));
    
    //triangulo 2
    CGRect rectTrianguloMaior2 = CGRectMake(335, 215, 50, 100);
    Triangle* trianguloMaior2 = [[Triangle alloc]initWithFrame:rectTrianguloMaior2];
    trianguloMaior2.red = 80;
    trianguloMaior2.green = 200;
    trianguloMaior2.blue = 100;
    trianguloMaior2.backgroundColor = [UIColor clearColor];
    [self.view addSubview:trianguloMaior2];
    trianguloMaior2.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(2.82, 2.82),CGAffineTransformMakeRotation(360*M_PI/180));
    
    
    //triangulo 6
    CGRect rectTrianguloMenor6 = CGRectMake(230, 145, 50, 100);
    Triangle* trianguloMenor6 = [[Triangle alloc]initWithFrame:rectTrianguloMenor6];
    trianguloMenor6.red = 255;
    trianguloMenor6.green = 204;
    trianguloMenor6.blue = 153;
    trianguloMenor6.backgroundColor = [UIColor clearColor];
    [self.view addSubview:trianguloMenor6];
    trianguloMenor6.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(1.4, 1.4),CGAffineTransformMakeRotation(180*M_PI/180));
    

}

-(void)createBigSquare{
    
    //Paralelogram 3
    CGRect rect = CGRectMake(97, 50, 50, 100);
    Paralelogramo* paralelogramo = [[Paralelogramo alloc]initWithFrame:rect];
    paralelogramo.backgroundColor = [UIColor clearColor];
    paralelogramo.red = 153;
    paralelogramo.blue = 255;
    paralelogramo.green = 77;
    [self.view addSubview:paralelogramo];
    
    
    CGRect rect2 = CGRectMake(238,109, 50, 100);
    //Quadrado 5
    Square* quadrado = [[Square alloc]initWithFrame:rect2];
    quadrado.backgroundColor = [UIColor clearColor];
    quadrado.red = 255;
    quadrado.blue = 77;
    quadrado.green = 255;
    [self.view addSubview:quadrado];
    //    [UIView animateWithDuration:2.0 animations:^{
    //        paralelogramo.transform = CGAffineTransformMakeScale(5, 5);
    //    }];
    
    
    
    //triangulo 4
    CGRect rectTrianguloMenor4 = CGRectMake(185, 161.8, 50, 100);
    Triangle* trianguloMenor4 = [[Triangle alloc]initWithFrame:rectTrianguloMenor4];
    trianguloMenor4.red = 255;
    trianguloMenor4.green = 77;
    trianguloMenor4.blue = 255;
    trianguloMenor4.backgroundColor = [UIColor clearColor];
    [self.view addSubview:trianguloMenor4];
    trianguloMenor4.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(1.4, 1.4),CGAffineTransformMakeRotation(270*M_PI/180));
    
    
    
    //Triangulo 7
    CGRect rectTriangulo7 = CGRectMake(241+rect2.size.width, 132+rect2.size.height, 50, 100);
    Triangle *triangle7 = [[Triangle alloc] initWithFrame:rectTriangulo7];
    triangle7.red = 0;
    triangle7.green = 255;
    triangle7.blue = 255;
    triangle7.backgroundColor = [UIColor clearColor];
    [self.view addSubview:triangle7];
    CGAffineTransform scale = CGAffineTransformMakeScale(2, 2);
    CGAffineTransform rotate = CGAffineTransformMakeRotation((90-45)*M_PI/180);
    triangle7.transform = CGAffineTransformConcat(scale,rotate);
    
    //triangulo 1
    CGRect rectTriangulo1 = CGRectMake(115, 126, 50, 100);
    Triangle* triangulo1 = [[Triangle alloc]initWithFrame:rectTriangulo1];
    triangulo1.red = 0;
    triangulo1.green = 0;
    triangulo1.blue = 225;
    triangulo1.backgroundColor = [UIColor clearColor];
    [self.view addSubview:triangulo1];
    triangulo1.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(2.82,2.82),CGAffineTransformMakeRotation(360*M_PI/180));
    
    //triangulo 2
    CGRect rectTrianguloMaior2 = CGRectMake(186, 56, 50, 100);
    Triangle* trianguloMaior2 = [[Triangle alloc]initWithFrame:rectTrianguloMaior2];
    trianguloMaior2.red = 80;
    trianguloMaior2.green = 200;
    trianguloMaior2.blue = 100;
    trianguloMaior2.backgroundColor = [UIColor clearColor];
    [self.view addSubview:trianguloMaior2];
    trianguloMaior2.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(2.82, 2.82),CGAffineTransformMakeRotation(90*M_PI/180));
    
    
    //triangulo 6
    CGRect rectTrianguloMenor6 = CGRectMake(292, 57, 50, 100);
    Triangle* trianguloMenor6 = [[Triangle alloc]initWithFrame:rectTrianguloMenor6];
    trianguloMenor6.red = 255;
    trianguloMenor6.green = 204;
    trianguloMenor6.blue = 153;
    trianguloMenor6.backgroundColor = [UIColor clearColor];
    [self.view addSubview:trianguloMenor6];
    trianguloMenor6.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(1.4, 1.4),CGAffineTransformMakeRotation(180*M_PI/180));
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
