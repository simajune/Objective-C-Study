//
//  ViewController.m
//  180612TapMeFast
//
//  Created by SIMA on 2018. 6. 12..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    timerNum = 10;
    tapNum = 0;
    gameState = 0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonAction:(UIButton *)sender {
    if (gameState == 0) {
        gameState = 1;
        self.timerLabel.text = @"10";
        self.tapLabel.text = @"0";
        timer =[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        [self.button setTitle:@"Tap" forState:UIControlStateNormal];
    }else {
        tapNum += 1;
        self.tapLabel.text = [NSString stringWithFormat:@"%i", tapNum];
        
    }
    
}
         
- (void)updateTimer {
    timerNum -= 1;
    self.timerLabel.text = [NSString stringWithFormat:@"%i", timerNum];
    
    if (timerNum == 0) {
        [timer invalidate];
        timerNum = 10;
        tapNum = 0;
        gameState = 0;
        self.button.enabled = YES;
        [self.button setTitle:@"Restart" forState:UIControlStateNormal];
    }
}
    @end
