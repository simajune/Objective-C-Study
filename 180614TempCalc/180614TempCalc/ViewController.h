//
//  ViewController.h
//  180614TempCalc
//
//  Created by SIMA on 2018. 6. 14..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
    @property (weak, nonatomic) IBOutlet UILabel *titleLabel;
    @property (weak, nonatomic) IBOutlet UILabel *enterLabel;
    @property (weak, nonatomic) IBOutlet UITextField *txtField;
    @property (weak, nonatomic) IBOutlet UIImageView *tempImgView;
    @property (weak, nonatomic) IBOutlet UILabel *resultLabel;
    @property (weak, nonatomic) IBOutlet UISegmentedControl *segCtrl;
    
- (IBAction)changeControlAction:(UISegmentedControl *)sender;
- (IBAction)enterTempAction:(UITextField *)sender;
    
@end

