//
//  ViewController.m
//  180610Loop
//
//  Created by SIMA on 2018. 6. 10..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    int number = 10;
    
    for (number = 10; number > 0; number -= 1) {
        NSLog(@"%i", number);
    }
    
    for (number = 10; number > 0; --number) {
        NSLog(@"%i", number);
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
