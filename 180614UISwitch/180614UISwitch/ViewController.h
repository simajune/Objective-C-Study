//
//  ViewController.h
//  180614UISwitch
//
//  Created by SIMA on 2018. 6. 14..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

    @property (weak, nonatomic) IBOutlet UILabel *label;
    @property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)switchAction:(UISwitch *)sender;
    
@end

