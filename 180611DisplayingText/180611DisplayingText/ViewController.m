//
//  ViewController.m
//  180611DisplayingText
//
//  Created by SIMA on 2018. 6. 11..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.label.text = @"안녕하세요";
    self.txtView.text = @"저는 정태준입니다. 불라불ㄹ라ㅏㄹ랍라ㅏ";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)txtAction:(id)sender {
    self.label.text = self.txtField.text;
    [self resignFirstResponder];
}

- (IBAction)setColor:(UIButton *)sender {
    self.label.textColor = [UIColor redColor];
}

- (IBAction)setBackground:(UIButton *)sender {
    self.label.backgroundColor = [UIColor blackColor];
}

- (IBAction)changeFont:(UIButton *)sender {
    self.label.font = [UIFont fontWithName: @"Apple SD Gothic Neo" size: 30];
}

- (IBAction)setShadow:(UIButton *)sender {
    self.label.layer.shadowColor = [[UIColor blueColor] CGColor];
    self.label.layer.shadowOpacity = 0.5;
    self.label.layer.shadowRadius = 1.0f;
    self.label.layer.shadowOffset = CGSizeMake(2, 2);
}

- (IBAction)setShadowColor:(UIButton *)sender {
    self.label.layer.shadowColor = [[UIColor blackColor] CGColor];
}

- (IBAction)setCenter:(UIButton *)sender {
    self.label.textAlignment = NSTextAlignmentCenter;
}

- (IBAction)setLeft:(UIButton *)sender {
    self.label.textAlignment = NSTextAlignmentLeft;
}

- (IBAction)setRight:(UIButton *)sender {
    self.label.textAlignment = NSTextAlignmentRight;
}

- (IBAction)customFont:(UIButton *)sender {
    self.label.font = [UIFont fontWithName: @"Edgeracer" size: 60];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ([text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]].location == NSNotFound) {
        return YES;
    }
    
         
    [textView resignFirstResponder];
    
    return NO;
         
         
}

@end
