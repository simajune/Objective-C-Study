//
//  ViewController.m
//  180615Calculator
//
//  Created by SIMA on 2018. 6. 15..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    operation = 4;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)digitBtnAction:(id)sender {
    currentDigit = currentDigit * 10 + (float)[sender tag];
    self.label.text = [NSString stringWithFormat: @"%6.0f", currentDigit];
}

- (IBAction)calcBtnAction:(id)sender {
    if (operation == 4) result = currentDigit;
    else {
        switch (operation) {
            case 0:
                result = result / currentDigit;
                break;
            case 1:
                result = result * currentDigit;
                break;
            case 2:
                result = result - currentDigit;
                break;
            case 3:
                result = result + currentDigit;
                break;
            case 5:
                result = 0;
                currentDigit = 0;
                break;
            default:
                break;
        }
    }
    currentDigit = 0;
    self.label.text = [NSString stringWithFormat: @"%6.0f", result];
    NSLog(@"%f",result);
    
    if ([sender tag] == 4) result = 0; {
        operation = (int)[sender tag];
    
        
    }
    
}
@end
