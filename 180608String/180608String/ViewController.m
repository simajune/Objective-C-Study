//
//  ViewController.m
//  180608String
//
//  Created by SIMA on 2018. 6. 8..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    name = @"Aaron";
    
    NSString *word = @"안녕하세요.";
    
//    self.label.text = @"태준";
    
    self.label.text = [NSString stringWithFormat: @"%@", name];
    self.label.text = [NSString stringWithFormat: @"%@ %@", name, word];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
