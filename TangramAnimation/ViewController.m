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

@interface ViewController ()<UIGestureRecognizerDelegate>

@property (nonatomic) Paralelogramo* parallelogram;
@property (nonatomic) Square* square;
@property (nonatomic) Triangle* lessTriangleOne;
@property (nonatomic) Triangle* lessTriangleTwo;
@property (nonatomic) Triangle* midTriangle;
@property (nonatomic) Triangle* biggerTriangleOne;
@property (nonatomic) Triangle* biggerTriangleTwo;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    

    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(createLetterP)];
    singleTap.numberOfTouchesRequired = 1;
    singleTap.numberOfTapsRequired =1;
    singleTap.delegate=self;
    [self.view addGestureRecognizer:singleTap];
    
    UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(createLetterN)];
    doubleTap.numberOfTouchesRequired = 1;
    doubleTap.numberOfTapsRequired =2;
    doubleTap.delegate=self;
    [self.view addGestureRecognizer:doubleTap];
    
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(createBigSquare)];
    longPress.numberOfTouchesRequired = 2;
    longPress.numberOfTapsRequired =1;
    longPress.delegate = self;
    longPress.minimumPressDuration = 0.3;
    longPress.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:longPress];

    
    [UIView animateWithDuration:2.0 animations:^{
        
        [self setupPolygons];
        
    }completion:nil];
    
}





-(void)setupPolygons{
    
    //Paralelogram 3
    CGRect rectParallelogram = CGRectMake(937, 5023, 50, 100);
    self.parallelogram = [[Paralelogramo alloc] initWithFrame:rectParallelogram];
    self.parallelogram.backgroundColor = [UIColor clearColor];
    self.parallelogram.red = 153;
    self.parallelogram.blue = 255;
    self.parallelogram.green = 77;
    [self.view addSubview:self.parallelogram];
    
    
    //Quadrado 5
    CGRect rectSquare = CGRectMake(3,4, 50, 100);
    self.square = [[Square alloc]initWithFrame:rectSquare];
    self.square.backgroundColor = [UIColor clearColor];
    self.square.red = 255;
    self.square.blue = 77;
    self.square.green = 255;
    [self.view addSubview:self.square];
    //    [UIView animateWithDuration:2.0 animations:^{
    //        self.parallelogram.transform = CGAffineTransformMakeScale(5, 5);
    //    }];
    
    
    
    //triangulo 4
    CGRect rectLessTriangleOne = CGRectMake(32, 423, 50, 100);
    self.lessTriangleOne = [[Triangle alloc]initWithFrame:rectLessTriangleOne];
    self.lessTriangleOne.red = 255;
    self.lessTriangleOne.green = 77;
    self.lessTriangleOne.blue = 255;
    self.lessTriangleOne.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.lessTriangleOne];

    
    
    
    //Triangulo 7
    CGRect rectMidTriangle = CGRectMake(22+rectSquare.size.width, 1132+rectSquare.size.height, 50, 100);
    self.midTriangle = [[Triangle alloc] initWithFrame:rectMidTriangle];
    self.midTriangle.red = 0;
    self.midTriangle.green = 255;
    self.midTriangle.blue = 255;
    self.midTriangle.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.midTriangle];

    
    //triangulo 1
    CGRect rectBiggerTriangleOne = CGRectMake(122, 52, 50, 100);
    self.biggerTriangleOne = [[Triangle alloc]initWithFrame:rectBiggerTriangleOne];
    self.biggerTriangleOne.red = 0;
    self.biggerTriangleOne.green = 0;
    self.biggerTriangleOne.blue = 225;
    self.biggerTriangleOne.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.biggerTriangleOne];

    
    //triangulo 2
    CGRect rectBiggerTriangleTwo = CGRectMake(18326, 56, 50, 100);
    self.biggerTriangleTwo = [[Triangle alloc]initWithFrame:rectBiggerTriangleTwo];
    self.biggerTriangleTwo.red = 80;
    self.biggerTriangleTwo.green = 200;
    self.biggerTriangleTwo.blue = 100;
    self.biggerTriangleTwo.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.biggerTriangleTwo];

    
    //triangulo 6
    CGRect rectLessTriangleTwo = CGRectMake(292, 5732, 50, 100);
    self.lessTriangleTwo = [[Triangle alloc]initWithFrame:rectLessTriangleTwo];
    self.lessTriangleTwo.red = 255;
    self.lessTriangleTwo.green = 204;
    self.lessTriangleTwo.blue = 153;
    self.lessTriangleTwo.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.lessTriangleTwo];
    
    
    
    
}


-(void)createBigSquare{
    
    
    [UIView animateWithDuration:2.0 animations:^{

    
    CGRect rectParallelogram = CGRectMake(97, 50, 50, 100);
    [self.parallelogram setFrame:rectParallelogram];
    
    CGRect rectSquare = CGRectMake(238,109, 50, 100);
    [self.square setFrame:rectSquare];
    
    CGRect rectLessTriangleOne = CGRectMake(185, 161.8, 50, 100);
    [self.lessTriangleOne setFrame:rectLessTriangleOne];
    self.lessTriangleOne.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(1.4, 1.4),CGAffineTransformMakeRotation(270*M_PI/180));
    
    CGRect rectMidTriangle = CGRectMake(241+rectSquare.size.width, 132+rectSquare.size.height, 50, 100);
    [self.midTriangle setFrame:rectMidTriangle];
    CGAffineTransform scale = CGAffineTransformMakeScale(2, 2);
    CGAffineTransform rotate = CGAffineTransformMakeRotation((90-45)*M_PI/180);
    self.midTriangle.transform = CGAffineTransformConcat(scale,rotate);

    CGRect rectBiggerTriangleOne = CGRectMake(115, 126, 50, 100);
    [self.biggerTriangleOne setFrame:rectBiggerTriangleOne];
    self.biggerTriangleOne.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(2.82,2.82),CGAffineTransformMakeRotation(360*M_PI/180));

    CGRect rectBiggerTriangleTwo = CGRectMake(186, 56, 50, 100);
    [self.biggerTriangleTwo setFrame:rectBiggerTriangleTwo];
    self.biggerTriangleTwo.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(2.82, 2.82),CGAffineTransformMakeRotation(90*M_PI/180));
    
    CGRect rectLessTriangleTwo = CGRectMake(292, 57, 50, 100);
    [self.lessTriangleTwo setFrame:rectLessTriangleTwo];
    self.lessTriangleTwo.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(1.4, 1.4),CGAffineTransformMakeRotation(180*M_PI/180));
    
    }completion:nil];


}


-(void)createLetterN{


}

-(void)createLetterP{
    

    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
