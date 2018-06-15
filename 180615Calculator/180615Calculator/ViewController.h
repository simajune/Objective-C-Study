//
//  ViewController.h
//  180615Calculator
//
//  Created by SIMA on 2018. 6. 15..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    float prevDigit;
    float currentDigit;
    float result;
    int operation;
}

@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)digitBtnAction:(id)sender;
- (IBAction)calcBtnAction:(id)sender;


@end

