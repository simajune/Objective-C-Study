//
//  ViewController.h
//  180615ShakeMeSilly
//
//  Created by SIMA on 2018. 6. 15..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    
    int score;
    int time;
    //mode: 0 = 준비 상태, 1 = 게임 중
    int mode;
    int imgNum;
}

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UIButton *button;

- (IBAction)buttonAction:(UIButton *)sender;

@end

