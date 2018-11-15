//
//  ViewController.h
//  180612RollADice
//
//  Created by SIMA on 2018. 6. 12..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

    @property (weak, nonatomic) IBOutlet UILabel *titleLabel;
    @property (weak, nonatomic) IBOutlet UIImageView *diceImgView;
    @property (weak, nonatomic) IBOutlet UIButton *rolllButton;
- (IBAction)rollAction:(id)sender;
    
@end

