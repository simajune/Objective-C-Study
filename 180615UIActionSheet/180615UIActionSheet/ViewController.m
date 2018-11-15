//
//  ViewController.m
//  180615UIActionSheet
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
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)alertButtonAction:(UIButton *)sender {
    UIAlertController *alertSheet = [UIAlertController alertControllerWithTitle:@"경고" message:@"어떤걸 선택하시겠습니까?" preferredStyle: UIAlertControllerStyleActionSheet];
    UIAlertAction *button1 = [UIAlertAction actionWithTitle:@"버튼1" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
        self.label.text = @"버튼1";
    }];
    
    UIAlertAction *button2 = [UIAlertAction actionWithTitle:@"버튼2" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
        self.label.text = @"버튼2";
    }];
    
    
    [alertSheet addAction:button1];
    [alertSheet addAction:button2];
    
    [self presentViewController:alertSheet animated:YES completion:nil];
    
}
@end
