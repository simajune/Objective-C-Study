//
//  ViewController.m
//  180620UIView
//
//  Created by SIMA on 2018. 6. 20..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.theView.hidden = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)showBtnAction:(id)sender {
    
    self.theView.hidden = NO;
}

- (IBAction)hideBtnAction:(id)sender {
    
    self.theView.hidden = YES;
}
@end
