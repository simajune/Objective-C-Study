//
//  ViewController.h
//  180612TrafficLight
//
//  Created by SIMA on 2018. 6. 12..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    NSTimer *scoreTimer;
    
    int timerInt;
    int scoreInt;
}

    @property (weak, nonatomic) IBOutlet UIImageView *trafficImgView;
    @property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
    @property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)buttonAction:(UIButton *)sender;
    
@end

