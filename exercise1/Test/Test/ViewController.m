//
//  ViewController.m
//  Test
//
//  Created by felixleong on 13年3月17日.
//  Copyright (c) 2013年 Felix-Leong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickAction:(id)sender {
    self.labelLabel.text = @"Hello World!";
}
@end
