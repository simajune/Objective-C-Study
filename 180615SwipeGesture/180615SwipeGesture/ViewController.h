//
//  ViewController.h
//  180615SwipeGesture
//
//  Created by SIMA on 2018. 6. 15..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic, strong)UISwipeGestureRecognizer *upSwipe;
@property (nonatomic, strong)UISwipeGestureRecognizer *downSwipe;
@property (nonatomic, strong)UISwipeGestureRecognizer *leftSwipe;
@property (nonatomic, strong)UISwipeGestureRecognizer *rightSwipe;

@end

