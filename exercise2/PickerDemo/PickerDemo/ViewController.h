//
//  ViewController.h
//  PickerDemo
//
//  Created by felixleong on 13年4月6日.
//  Copyright (c) 2013年 FelixLeong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *numLeftLabel;
@property (weak, nonatomic) IBOutlet UILabel *numRightLabel;
@property (weak, nonatomic) IBOutlet UILabel *msgLeftLabel;
@property (weak, nonatomic) IBOutlet UILabel *msgRightLabel;

@end
