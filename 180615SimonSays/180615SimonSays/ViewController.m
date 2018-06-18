//
//  ViewController.m
//  180615SimonSays
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
    self.leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeHandler:)];
    self.rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeHandler:)];
    self.upSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeHandler:)];
    self.downSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeHandler:)];
    
    self.leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    self.rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    self.upSwipe.direction = UISwipeGestureRecognizerDirectionUp;
    self.downSwipe.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer:self.leftSwipe];
    [self.view addGestureRecognizer:self.rightSwipe];
    [self.view addGestureRecognizer:self.upSwipe];
    [self.view addGestureRecognizer:self.downSwipe];
    
    // Do any additional setup after loading the view, typically from a nib.
    self.label.layer.cornerRadius = 20;
    self.label.clipsToBounds = YES;
    
    time = 20;
    score = 0;
    mode = 0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) swipeHandler: (UISwipeGestureRecognizer *) sender {
    
}


- (IBAction)startBtnAction:(id)sender {
}
@end
