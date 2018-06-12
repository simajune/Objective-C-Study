//
//  ViewController.h
//  180612TapMeFast
//
//  Created by SIMA on 2018. 6. 12..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    
    int timerNum;
    int tapNum;
    //게임상태: 0 = 게임 전, 1 = 게임 중
    int gameState;
}

    @property (weak, nonatomic) IBOutlet UILabel *timerLabel;
    @property (weak, nonatomic) IBOutlet UILabel *tapLabel;
    @property (weak, nonatomic) IBOutlet UIButton *button;
    
- (IBAction)buttonAction:(UIButton *)sender;
    
@end

