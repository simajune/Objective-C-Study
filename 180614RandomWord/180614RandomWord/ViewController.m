//
//  ViewController.m
//  180614RandomWord
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


- (IBAction)randomBtnAction:(id)sender {
    
    NSArray *words = @[@"Red", @"Blue", @"Green", @"Yellow", @"Orange"];
    
    int randomNum = arc4random() % words.count;
    
    self.label.text = words[randomNum];
    
}
    @end
