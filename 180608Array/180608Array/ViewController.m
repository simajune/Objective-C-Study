//
//  ViewController.m
//  180608Array
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
    
    NSArray * array = @[@"태준", @"티제이", @"ㅁㅁㅁㅁ"];
    self.label.text = array[2];
//    self.label.text = [NSString stringWithFormat: @"%@", array[0]];
    NSMutableArray *array2 = [[NSMutableArray alloc] initWithObjects:@"apple", @"Banana", @"Orange", nil];
    [array2 addObject:@"Melon"];
    [array2 insertObject:@"Strawberry" atIndex: 2];
    NSLog(@"%@", array2);
    self.label.text = [NSString stringWithFormat:@"%@", array2[0]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
