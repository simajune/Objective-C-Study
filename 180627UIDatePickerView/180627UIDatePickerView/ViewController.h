//
//  ViewController.h
//  180627UIDatePickerView
//
//  Created by SIMA on 2018. 6. 27..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
- (IBAction)selectDate:(id)sender;

@end

