//
//  ViewController.h
//  AFNetworkingImage
//
//  Created by felixleong on 13年4月6日.
//  Copyright (c) 2013年 FelixLeong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImageView+AFNetworking.h"
#import "UIView+UIView_Position.h"
#import "AFJSONRequestOperation.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end
