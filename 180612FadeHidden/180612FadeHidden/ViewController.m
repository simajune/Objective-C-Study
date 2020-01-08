//
//  ViewController.m
//  180612FadeHidden
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
    
- (IBAction)hiddenAction:(id)sender {
    self.txtView.hidden = YES;
}
    
- (IBAction)appearAction:(id)sender {
    self.txtView.hidden = NO;
}
    
- (IBAction)fadeInAction:(id)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    
    self.txtView.alpha = 1.0;
    [UIView commitAnimations];
}
    
- (IBAction)fadeOutAction:(id)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    
    self.txtView.alpha = 0.0;
    [UIView commitAnimations];
}
    
- (IBAction)fadeAction:(UISlider *)sender {
    self.txtView.alpha = sender.value;
    self.alphaLabel.text = [NSString stringWithFormat:@"%.2f", sender.value];
}
    
    @end
