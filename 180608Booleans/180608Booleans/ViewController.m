//
//  ViewController.m
//  180608Booleans
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
    bool1 = YES;
    bool2 = NO;
    
    self.myswitch.enabled = bool1;
//    self.myswitch.on = bool2;
    
    self.button.enabled = bool2;
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
