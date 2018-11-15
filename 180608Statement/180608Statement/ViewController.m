//
//  ViewController.m
//  180608Statement
//
//  Created by SIMA on 2018. 6. 8..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    BOOL state = true;
    
    if (state){
        self.label1.text = @"Allow Access";
    } else{
        self.label1.text = @"Denny Access";
    }
    
    /////////////////////////////////////////
    
    NSString *name1 = @"Dave";
    
    if ([name1 isEqualToString: @"Dave"]){
        self.label2.text = @"nick name";
    }else if ([name1 isEqualToString: @"Steve"]){
        self.label2.text = @"nice name";
    }else {
        self.label2.text = @"terribel name";
    }
    
    //////////////////////////////////////////
    
    int num1 = 1000;
    
    if (num1 > 1000){
        self.label3.text = @"1000 이상";
    }else if (num1 > 800){
        self.label3.text = @"800 이상";
    }else {
        self.label3.text = @"800 이하";
    }
    
    ///////////////////////////////////////////
    
    NSString *username = @"TJ";
    NSString *password = @"1234";
    
    if ([username isEqualToString: @"TJ"] && [password isEqualToString: @"1234"]) {
        self.label4.text = @"Right";
    }else {
        self.label4.text = @"Wooo";
    }
    
    ///////////////////////////////////////////
    
    NSString *color = @"Blue";
    
    if ([color isEqualToString: @"Green"] || [color isEqualToString: @"Blue"]) {
        self.label5.text = @"Color";
    }else {
        self.label5.text = @"Wrong Color";
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
