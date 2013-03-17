//
//  ViewController.h
//  Test
//
//  Created by felixleong on 13年3月17日.
//  Copyright (c) 2013年 Felix-Leong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelLabel;
@property (weak, nonatomic) IBOutlet UIButton *buttonButton;
- (IBAction)clickAction:(id)sender;

@end
