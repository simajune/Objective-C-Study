//
//  ViewController.m
//  180615Delay
//
//  Created by SIMA on 2018. 6. 15..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)delayBtnAction:(UIButton *)sender {
    [self performSelector:@selector(delay) withObject:nil afterDelay:1.0];
    
}

- (void)delay {
    self.label.text = @"delay OK";
}
@end
