//
//  ViewController.m
//  180614UISwitch
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


- (IBAction)switchAction:(UISwitch *)sender {
    if (sender.on) {
        self.label.text = @"OFF";
        self.button.enabled = NO;
        sender.on = NO;
    }else {
        self.label.text = @"ON";
        self.button.enabled = YES;
        sender.on = YES;
    }
    
}
    @end
