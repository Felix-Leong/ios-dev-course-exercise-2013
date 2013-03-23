//
//  ViewController.h
//  RGBSlider
//
//  Created by felixleong on 13年3月23日.
//  Copyright (c) 2013年 FelixLeong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelR;
- (IBAction)sliderRChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *labelG;
@property (weak, nonatomic) IBOutlet UILabel *labelB;
@property (weak, nonatomic) IBOutlet UIView *colorBoxView;
@property (weak, nonatomic) IBOutlet UILabel *hexLabel;

@end
