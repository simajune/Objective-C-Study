//
//  ViewController.h
//  180614RandomWord
//
//  Created by SIMA on 2018. 6. 14..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
    @property (weak, nonatomic) IBOutlet UILabel *label;
    @property (weak, nonatomic) IBOutlet UIButton *randomBtn;
    
- (IBAction)randomBtnAction:(id)sender;
    
@end

