//
//  ViewController.m
//  TangramAnimation
//
//  Created by Victor de Lima on 21/10/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import "ViewController.h"
#import "VCLPolygon.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGFloat width = 50;
    CGFloat height = 100;
    CGRect triangleDraw = CGRectMake(50, 150, width, height);
    //CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
    
    VCLPolygon *triangle = [[VCLPolygon alloc] initWithFrame:triangleDraw];
    triangle.backgroundColor = [UIColor clearColor];
    triangle.transform = CGAffineTransformMakeRotation(45*M_PI/180);

    [self.view addSubview:triangle];
        
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
