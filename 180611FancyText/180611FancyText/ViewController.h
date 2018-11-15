//
//  ViewController.h
//  180611FancyText
//
//  Created by SIMA on 2018. 6. 11..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;



- (IBAction)editTextAction:(UITextField *)sender;
- (IBAction)changeRedColorAction:(UIButton *)sender;
- (IBAction)changeBlueColorAction:(UIButton *)sender;
- (IBAction)changeGreenColorAction:(UIButton *)sender;
- (IBAction)changeFont1Action:(UIButton *)sender;
- (IBAction)changeFont2Action:(UIButton *)sender;
- (IBAction)changeFont3Action:(UIButton *)sender;
- (IBAction)changeFont4Action:(UIButton *)sender;
- (IBAction)EditShadowAction:(UIButton *)sender;
- (IBAction)changeSmallTextAction:(UIButton *)sender;
- (IBAction)changeMediumTextAction:(UIButton *)sender;
- (IBAction)changeLargeTextAction:(UIButton *)sender;

@end

