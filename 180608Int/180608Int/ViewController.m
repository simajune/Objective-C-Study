//
//  ViewController.m
//  180608Int
//
//  Created by SIMA on 2018. 6. 8..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int1 = 100;
    int2 = 10124;
    
    int score = int1 + int2;
    
    self.label.text = [NSString stringWithFormat: @"%d", score];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
