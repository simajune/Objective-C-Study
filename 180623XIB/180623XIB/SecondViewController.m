//
//  SecondViewController.m
//  180623XIB
//
//  Created by SIMA on 2018. 6. 23..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goHomeView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
