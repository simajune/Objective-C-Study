//
//  ViewController.h
//  180614UIButton
//
//  Created by SIMA on 2018. 6. 14..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
    @property (weak, nonatomic) IBOutlet UILabel *label;
    
- (IBAction)btn1Action:(UIButton *)sender;
- (IBAction)btn2Action:(UIButton *)sender;
- (IBAction)btn3Action:(UIButton *)sender;
    
@end

