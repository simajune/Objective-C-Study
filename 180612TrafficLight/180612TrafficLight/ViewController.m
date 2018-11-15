//
//  ViewController.m
//  180612TrafficLight
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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonAction:(UIButton *)sender {
    if (scoreInt == 0){
        timerInt = 3;
        self.scoreLabel.text = @"0";
        [self.button setTitle:@"" forState:UIControlStateNormal];
        self.trafficImgView.image = [UIImage imageNamed: @"trafficLight"];
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        self.button.enabled = NO;
    } else{
        [scoreTimer invalidate];
    }
    
    if (timerInt == 0) {
        scoreInt = 0;
        timerInt = 3;
        [self.button setTitle:@"Restart" forState:UIControlStateNormal];
    }
}
    

-(void)updateTimer {
    timerInt -= 1;
    if (timerInt == 2) {
        self.trafficImgView.image = [UIImage imageNamed:@"trafficLight3"];
    }else if (timerInt == 1) {
        self.trafficImgView.image = [UIImage imageNamed:@"trafficLight2"];
    }else {
        self.trafficImgView.image = [UIImage imageNamed:@"trafficLight1"];
        self.button.enabled = YES;
        [timer invalidate];
        [self.button setTitle:@"Stop" forState:UIControlStateNormal];
//        self.button.titleLabel.text = @"Stop";
        scoreTimer = [NSTimer scheduledTimerWithTimeInterval:0.0001 target:self selector:@selector(updateScore) userInfo:nil repeats:YES];
    }
}
    
-(void)updateScore {
    scoreInt += 1;
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
}
    

    
@end
