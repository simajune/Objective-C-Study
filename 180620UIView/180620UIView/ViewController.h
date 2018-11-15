//
//  ViewController.h
//  180620UIView
//
//  Created by SIMA on 2018. 6. 20..
//  Copyright © 2018년 devtejay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIView *theView;

- (IBAction)showBtnAction:(id)sender;
- (IBAction)hideBtnAction:(id)sender;


@end

