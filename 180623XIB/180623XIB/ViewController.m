//
//  ViewController.m
//  180623XIB
//
//  Created by SIMA on 2018. 6. 23..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

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


- (IBAction)switchView:(id)sender {
    
    SecondViewController *second = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
    second.modalPresentationStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:second animated:YES completion:nil];
    
    
}
@end
