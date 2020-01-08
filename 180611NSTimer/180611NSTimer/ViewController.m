//
//  ViewController.m
//  180611NSTimer
//
//  Created by SIMA on 2018. 6. 11..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
  int time;
}
@property (weak, nonatomic) IBOutlet UIButton *startButton;

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
  if(time < 1) {
    self.label.text = @"타이머를 설정해주세요.";
  }else{
    [self.startButton setEnabled:NO];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    [self startTimerSound];
  }
}

-(void)updateTimer {
    countNum += 1;
    self.label.text = [NSString stringWithFormat: @"%i", countNum];
  if(countNum == time){
    [self.startButton setEnabled:YES];
    self.label.text = @"완료되었습니다.";
    countNum = 0;
    time = 0;
    [timer invalidate];
    
  }
}
- (void)startTimerSound {
  NSURL *url = [[NSBundle mainBundle] URLForResource:@"Timer" withExtension:@".mp3"];
  AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
  [player play];
}

-(void)startBombSound {
  
}

- (IBAction)pauseAction:(UIButton *)sender {
    [timer invalidate];
}

- (IBAction)restartAction:(UIButton *)sender {
    countNum = 0;
    self.label.text = [NSString stringWithFormat: @"0"];
}
- (IBAction)setTimeAction:(UIButton *)sender {
  time = arc4random() % 10 + 1;
  self.label.text = @"타이머 설정 완료!!";
//  self.label.text = [NSString stringWithFormat: @"%d", time];
}
@end
