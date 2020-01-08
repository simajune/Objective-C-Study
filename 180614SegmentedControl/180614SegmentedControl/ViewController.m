//
//  ViewController.m
//  180614SegmentedControl
//
//  Created by SIMA on 2018. 6. 14..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.segCtr.selectedSegmentIndex = 0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)segCtrAction:(UISegmentedControl *)sender {
    if (self.segCtr.selectedSegmentIndex == 0) {
        self.label.text = @"1번 눌림";
    }else if (self.segCtr.selectedSegmentIndex == 1) {
        self.label.text = @"2번 눌림";
    }else {
        self.label.text = @"3번 눌림";
    }
}
    @end
