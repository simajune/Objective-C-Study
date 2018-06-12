//
//  ViewController.m
//  180612RollADice
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


- (IBAction)rollAction:(id)sender {
    int min = 1;
    int max = 7;
    
    int randomNum = arc4random_uniform(max - min) + min;
    
    self.titleLabel.text = [NSString stringWithFormat: @"Rolled A %i", randomNum];
    self.diceImgView.image = [UIImage imageNamed: [NSString stringWithFormat: @"Dice%i", randomNum]];
}
    @end
