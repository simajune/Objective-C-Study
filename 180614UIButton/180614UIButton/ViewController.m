//
//  ViewController.m
//  180614UIButton
//
//  Created by SIMA on 2018. 6. 14..
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


- (IBAction)btn1Action:(UIButton *)sender {
    self.label.text = sender.titleLabel.text;
}
    
- (IBAction)btn2Action:(UIButton *)sender {
    self.label.text = sender.titleLabel.text;
}
    
- (IBAction)btn3Action:(UIButton *)sender {
    self.label.text = sender.titleLabel.text;
}
    @end
