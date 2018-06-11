//
//  ViewController.h
//  180611NSTimer
//
//  Created by SIMA on 2018. 6. 11..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    int countNum;
}

@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)startAction:(UIButton *)sender;
- (IBAction)pauseAction:(UIButton *)sender;
- (IBAction)restartAction:(UIButton *)sender;

@end

