//
//  ViewController.h
//  180612FadeHidden
//
//  Created by SIMA on 2018. 6. 12..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
    @property (weak, nonatomic) IBOutlet UITextView *txtView;
    @property (weak, nonatomic) IBOutlet UILabel *alphaLabel;
    
- (IBAction)hiddenAction:(id)sender;
- (IBAction)appearAction:(id)sender;
- (IBAction)fadeInAction:(id)sender;
- (IBAction)fadeOutAction:(id)sender;
    
- (IBAction)fadeAction:(UISlider *)sender;
    
@end

