//
//  ViewController.h
//  180614SegmentedControl
//
//  Created by SIMA on 2018. 6. 14..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

    @property (strong, nonatomic) IBOutlet UILabel *label;
    @property (weak, nonatomic) IBOutlet UISegmentedControl *segCtr;
- (IBAction)segCtrAction:(UISegmentedControl *)sender;
    
@end

