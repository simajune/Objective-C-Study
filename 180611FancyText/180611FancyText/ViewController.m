//
//  ViewController.m
//  180611FancyText
//
//  Created by SIMA on 2018. 6. 11..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    BOOL state;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.label.text = @"Enter Text Blow";
    state = false;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)editTextAction:(UITextField *)sender {
    self.label.text = sender.text;
    [self resignFirstResponder];
}

- (IBAction)changeRedColorAction:(UIButton *)sender {
    self.label.textColor = [UIColor redColor];
}

- (IBAction)changeBlueColorAction:(UIButton *)sender {
    self.label.textColor = [UIColor blueColor];
}

- (IBAction)changeGreenColorAction:(UIButton *)sender {
    self.label.textColor = [UIColor greenColor];
}

- (IBAction)changeFont1Action:(UIButton *)sender {
    self.label.font = [UIFont fontWithName: @"LemonMilk" size: 24];
}

- (IBAction)changeFont2Action:(UIButton *)sender {
    self.label.font = [UIFont fontWithName: @"Moon Flower" size: 24];
}

- (IBAction)changeFont3Action:(UIButton *)sender {
    self.label.font = [UIFont fontWithName: @"SugarstyleMillenial-Regular" size: 24];
}

- (IBAction)changeFont4Action:(UIButton *)sender {
    self.label.font = [UIFont fontWithName: @"Apple SD Gothic Neo" size: 24];
}

- (IBAction)EditShadowAction:(UIButton *)sender {
    if(state) {
        self.label.layer.shadowOpacity = 0;
        state = false;
    }else {
        self.label.layer.shadowColor = [[UIColor blackColor] CGColor];
        self.label.layer.shadowOpacity = 0.5;
        self.label.layer.shadowRadius = 1.0f;
        self.label.layer.shadowOffset = CGSizeMake(2, 2);
        state = true;
    }
}

- (IBAction)changeSmallTextAction:(UIButton *)sender {
    self.label.font = [self.label.font fontWithSize: 10];
}

- (IBAction)changeMediumTextAction:(UIButton *)sender {
    self.label.font = [self.label.font fontWithSize: 24];
}

- (IBAction)changeLargeTextAction:(UIButton *)sender {
    self.label.font = [self.label.font fontWithSize: 40];
}
@end
