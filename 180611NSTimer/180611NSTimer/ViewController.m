//
//  ViewController.m
//  180611NSTimer
//
//  Created by SIMA on 2018. 6. 11..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    countNum = 0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startAction:(UIButton *)sender {
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
}

-(void)updateTimer {
    countNum += 1;
    self.label.text = [NSString stringWithFormat: @"%i", countNum];
}

- (IBAction)pauseAction:(UIButton *)sender {
    [timer invalidate];
}

- (IBAction)restartAction:(UIButton *)sender {
    countNum = 0;
    self.label.text = [NSString stringWithFormat: @"0"];
}
@end
