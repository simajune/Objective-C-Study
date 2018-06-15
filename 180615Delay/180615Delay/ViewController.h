//
//  ViewController.h
//  180615Delay
//
//  Created by SIMA on 2018. 6. 15..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *delayButton;
@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)delayBtnAction:(UIButton *)sender;

@end

