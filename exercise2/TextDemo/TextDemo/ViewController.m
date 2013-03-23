//
//  ViewController.m
//  TextDemo
//
//  Created by felixleong on 13年3月23日.
//  Copyright (c) 2013年 FelixLeong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect frame = self.view.frame;
    frame.origin.y=-30;
    [UIView animateWithDuration:.25 animations:^{
        self.view.frame=frame;
    } completion:^(BOOL finished) {        
        [self.textView becomeFirstResponder];
    }];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}

- (void)textViewDidBeginEditing:(UITextField *)textField{
    CGRect frame = self.view.frame;
    frame.origin.y=-30;
    [UIView animateWithDuration:.25 animations:^{
        self.view.frame=frame;
    }];
}

- (void)textViewDidEndEditing:(UITextField *)textField{
    CGRect frame = self.view.frame;
    frame.origin.y=20;
    [UIView animateWithDuration:.25 animations:^{
        self.view.frame=frame;
    }];
}


@end
