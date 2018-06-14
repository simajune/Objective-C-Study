//
//  ViewController.m
//  180614TempCalc
//
//  Created by SIMA on 2018. 6. 14..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    float fahrenheit;
    float celsius;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)changeControlAction:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        self.enterLabel.text = @"Enter Fahrenheit";
        self.txtField.text = @"";
        self.resultLabel.text = @"0 Celsius";
        self.tempImgView.image = [UIImage imageNamed: @"Temp1"];
//        if (self.txtField != nil) {
//
//            fahrenheit = [self.txtField.text floatValue];
//            celsius = (fahrenheit - 32) / 1.8;
//            self.resultLabel.text = [NSString stringWithFormat: @"%.2f Fahrenheit", celsius];
//        }
    }else {
        self.enterLabel.text = @"Enter Celsius";
        self.txtField.text = @"";
        self.resultLabel.text = @"0 Fahrenheit";
        self.tempImgView.image = [UIImage imageNamed: @"Temp1"];
//        if (self.txtField != nil) {
//
//            celsius = [self.txtField.text floatValue];
//            fahrenheit = (celsius * 1.8) + 32;
//            self.resultLabel.text = [NSString stringWithFormat: @"%.2f Fahrenheit", fahrenheit];
//        }
    }
    
}
    
- (IBAction)enterTempAction:(UITextField *)sender {
    if (self.segCtrl.selectedSegmentIndex == 0) {
        fahrenheit = [self.txtField.text floatValue];
        celsius = (fahrenheit - 32) / 1.8;
        self.resultLabel.text = [NSString stringWithFormat: @"%.2f Fahrenheit", celsius];
        
        if (celsius > 120) {
            self.tempImgView.image = [UIImage imageNamed: @"Temp9"];
        }else if (celsius > 100) {
            self.tempImgView.image = [UIImage imageNamed: @"Temp8"];
        }else if (celsius > 80) {
            self.tempImgView.image = [UIImage imageNamed: @"Temp7"];
        }else if (celsius > 60) {
            self.tempImgView.image = [UIImage imageNamed: @"Temp6"];
        }else if (celsius > 40) {
            self.tempImgView.image = [UIImage imageNamed: @"Temp5"];
        }else if (celsius > 20) {
            self.tempImgView.image = [UIImage imageNamed: @"Temp4"];
        }else if (celsius > 0) {
            self.tempImgView.image = [UIImage imageNamed: @"Temp3"];
        }else if (celsius > -20) {
            self.tempImgView.image = [UIImage imageNamed: @"Temp2"];
        }else {
            self.tempImgView.image = [UIImage imageNamed: @"Temp1"];
        }
    }else {
        celsius = [self.txtField.text floatValue];
        fahrenheit = (celsius * 1.8) + 32;
        self.resultLabel.text = [NSString stringWithFormat: @"%.2f Fahrenheit", fahrenheit];
        
        if (fahrenheit > 120) {
            self.tempImgView.image = [UIImage imageNamed: @"Temp9"];
        }else if (fahrenheit > 100) {
            self.tempImgView.image = [UIImage imageNamed: @"Temp8"];
        }else if (fahrenheit > 80) {
            self.tempImgView.image = [UIImage imageNamed: @"Temp7"];
        }else if (fahrenheit > 60) {
            self.tempImgView.image = [UIImage imageNamed: @"Temp6"];
        }else if (fahrenheit > 40) {
            self.tempImgView.image = [UIImage imageNamed: @"Temp5"];
        }else if (fahrenheit > 20) {
            self.tempImgView.image = [UIImage imageNamed: @"Temp4"];
        }else if (fahrenheit > 0) {
            self.tempImgView.image = [UIImage imageNamed: @"Temp3"];
        }else if (fahrenheit > -20) {
            self.tempImgView.image = [UIImage imageNamed: @"Temp2"];
        }else {
            self.tempImgView.image = [UIImage imageNamed: @"Temp1"];
        }
    }
}
    
@end
