//
//  ViewController.h
//  180614UISlider
//
//  Created by SIMA on 2018. 6. 14..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

    @property (weak, nonatomic) IBOutlet UILabel *valueLabel;
- (IBAction)sliderAction:(UISlider *)sender;
    
@end

