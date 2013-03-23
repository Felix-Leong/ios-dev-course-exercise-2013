//
//  ViewController.h
//  TextDemo
//
//  Created by felixleong on 13年3月23日.
//  Copyright (c) 2013年 FelixLeong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end
