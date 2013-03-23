//
//  ViewController.m
//  RGBSlider
//
//  Created by felixleong on 13年3月23日.
//  Copyright (c) 2013年 FelixLeong. All rights reserved.
//

#import "ViewController.h"

#define SLIDER_R 1000
#define SLIDER_G 1001
#define SLIDER_B 1002

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *labels;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /*
    self.labels = [NSMutableArray arrayWithCapacity:1004];
    for (int i=0; i<=1004; i++)
        [self.labels addObject:[NSNull null]];
    self.labels[SLIDER_R] = self.labelR;
    self.labels[SLIDER_G ] = self.labelG;
    self.labels[SLIDER_B] = self.labelB;
     */
[self sliderRChanged:nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderRChanged:(UISlider*)sender {
    
    /*
    for (int i=SLIDER_R; i<=SLIDER_B; i++)
        if (sender.tag==i) {
            UILabel *label = self.labels[i];
            label.text = [NSString stringWithFormat:@"%.0f", sender.value];
        }
     */
    
    if (sender.tag == SLIDER_R) {
        self.labelR.text = [NSString stringWithFormat:@"%.0f", sender.value];
    }
    else if(sender.tag == SLIDER_G) {
        self.labelG.text = [NSString stringWithFormat:@"%.0f", sender.value];
    }
    else if(sender.tag == SLIDER_B) {
        self.labelB.text = [NSString stringWithFormat:@"%.0f", sender.value];
    }
    
    int r = self.labelR.text.intValue;
        int g = self.labelG.text.intValue;
        int b = self.labelB.text.intValue;
    
    
    self.colorBoxView.backgroundColor = [UIColor colorWithRed:r/255.0f
                                                        green:g/255.0f
                                                         blue:b/255.0f
                                                        alpha:1];
    
    self.hexLabel.text = [NSString stringWithFormat:@"#%02X%02X%02X", r, g, b];
    if (r+g+b < 255*3/2)
        self.hexLabel.textColor = [UIColor whiteColor];
    else
        self.hexLabel.textColor = [UIColor blackColor];

}
@end
