//
//  ViewController.h
//  180611DisplayingText
//
//  Created by SIMA on 2018. 6. 11..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextView *txtView;
@property (weak, nonatomic) IBOutlet UITextField *txtField;
- (IBAction)txtAction:(id)sender;
- (IBAction)setColor:(UIButton *)sender;
- (IBAction)setBackground:(UIButton *)sender;
- (IBAction)changeFont:(UIButton *)sender;
- (IBAction)setShadow:(UIButton *)sender;
- (IBAction)setShadowColor:(UIButton *)sender;
- (IBAction)setCenter:(UIButton *)sender;
- (IBAction)setLeft:(UIButton *)sender;
- (IBAction)setRight:(UIButton *)sender;

- (IBAction)customFont:(UIButton *)sender;

@end

