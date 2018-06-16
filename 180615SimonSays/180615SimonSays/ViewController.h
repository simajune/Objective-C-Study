//
//  ViewController.h
//  180615SimonSays
//
//  Created by SIMA on 2018. 6. 15..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    
    int time;
    int score;
    
    int mode;
}
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButton;

- (IBAction)startBtnAction:(id)sender;

@end

