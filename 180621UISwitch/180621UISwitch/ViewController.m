//
//  ViewController.m
//  180621UISwitch
//
//  Created by SIMA on 2018. 6. 21..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.switcher addTarget:self action:@selector(switchAction:) forControlEvents:UIControlEventValueChanged];
}

- (void)switchAction: (UISwitch *)sender {
    if (sender.on == YES) {
        self.label.text = @"ON";
        self.button.enabled = YES;
    }else {
        self.label.text = @"OFF";
        self.button.enabled = NO;
    }
}
@end
