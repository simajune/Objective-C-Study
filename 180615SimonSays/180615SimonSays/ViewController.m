//
//  ViewController.m
//  180615SimonSays
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
    self.leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeHandler:)];
    self.rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeHandler:)];
    self.upSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeHandler:)];
    self.downSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeHandler:)];
    
    self.leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    self.rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    self.upSwipe.direction = UISwipeGestureRecognizerDirectionUp;
    self.downSwipe.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer:self.leftSwipe];
    [self.view addGestureRecognizer:self.rightSwipe];
    [self.view addGestureRecognizer:self.upSwipe];
    [self.view addGestureRecognizer:self.downSwipe];
    
    // Do any additional setup after loading the view, typically from a nib.
    self.label.layer.cornerRadius = 20;
    self.label.clipsToBounds = YES;
    
    time = 20;
    score = 0;
    mode = 0;
    
    self.timeLabel.text = [NSString stringWithFormat:@"Time : %i", time];
    self.scoreLabel.text = [NSString stringWithFormat:@"Score : %i", score];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) swipeHandler: (UISwipeGestureRecognizer *) sender {
    if (mode == 1) {
        if (sender.direction == UISwipeGestureRecognizerDirectionLeft) {
            [simonTimer invalidate];
            
            if ([self.label.text isEqualToString:@"Simon Says Swipe Left"]) {
                score += 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score : %i", score];
                
                [self simonSays];
            } else {
                score -= 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score : %i", score];
                
                [self simonSays];
            }
        }
        
        if (sender.direction == UISwipeGestureRecognizerDirectionRight) {
            [simonTimer invalidate];
            
            if ([self.label.text isEqualToString:@"Simon Says Swipe Right"]) {
                score += 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score : %i", score];
                
                [self simonSays];
            } else {
                score -= 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score : %i", score];
                
                [self simonSays];
            }
        }
        
        if (sender.direction == UISwipeGestureRecognizerDirectionUp) {
            [simonTimer invalidate];
            
            if ([self.label.text isEqualToString:@"Simon Says Swipe Up"]) {
                score += 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score : %i", score];
                
                [self simonSays];
            } else {
                score -= 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score : %i", score];
                
                [self simonSays];
            }
        }
        
        if (sender.direction == UISwipeGestureRecognizerDirectionDown) {
            [simonTimer invalidate];
            
            if ([self.label.text isEqualToString:@"Simon Says Swipe Down"]) {
                score += 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score : %i", score];
                
                [self simonSays];
            } else {
                score -= 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score : %i", score];
                
                [self simonSays];
            }
        }
        
    }
}


- (IBAction)startBtnAction:(id)sender {
    if (time == 20) {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        self.startButton.enabled = NO;
        self.startButton.alpha = 0.5f;
        
        [self simonSays];
        mode = 1;
    }
    
    if (time == 0) {
        time = 20;
        score = 0;
        
        self.timeLabel.text = [NSString stringWithFormat:@"Time : %i", time];
        self.scoreLabel.text = [NSString stringWithFormat:@"Score : %i", score];
        
        [self.startButton setTitle:@"Start Game" forState:UIControlStateNormal];
        self.label.text = @"Simon Says";
    }
}

-(void)simonSays {
    NSArray *array = @[@"Simon Says Swipe Right",
                       @"Simon Says Swipe Left",
                       @"Simon Says Swipe Up",
                       @"Simon Says Swipe Down",
                       @"Swipe Right",
                       @"Swipe Left",
                       @"Swipe Up",
                       @"Swipe Down"];
    int randomWord = arc4random() % array.count;
    self.label.text = array[randomWord];
    
    simonTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(simonSays) userInfo:nil repeats:NO];
}

- (void)updateTimer {
    time -= 1;
    
    self.timeLabel.text = [NSString stringWithFormat:@"Time : %i", time];
    
    if (time == 0) {
        [timer invalidate];
        [simonTimer invalidate];
        mode = 0;
        self.startButton.enabled = YES;
        self.startButton.alpha = 1.0;
        [self.startButton setTitle:@"Restart" forState:UIControlStateNormal];
    }
}
@end
