//
//  ViewController.h
//  180614DigitalClock
//
//  Created by SIMA on 2018. 6. 14..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    
}
    @property (weak, nonatomic) IBOutlet UILabel *timeLabel;
    
@end

