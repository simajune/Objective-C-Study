//
//  ViewController.m
//  180615ShakeMeSilly
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
    self.timeLabel.text = @"10";
    self.scoreLabel.text = @"0";
    mode = 0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (mode == 1) {
        score += 1;
        self.scoreLabel.text = [NSString stringWithFormat:@"%i", score];
    }
    
}

- (IBAction)buttonAction:(UIButton *)sender {
    if (mode == 0) {
        score = 0;
        time = 10;
        self.scoreLabel.text = @"0";
        self.timeLabel.text = @"10";
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
        mode = 1;
        [sender setTitle:@"Gaming..." forState:(UIControlStateNormal)];
        sender.enabled = false;
    }
}

-(void)updateTime {
    time -= 1;
    self.timeLabel.text = [NSString stringWithFormat: @"%i", time];
    if (time == 0) {
        [self.button setTitle:@"ReStart" forState:(UIControlStateNormal)];
        mode = 0;
        self.button.enabled = true;
        [timer invalidate];
        
    }
}
@end
