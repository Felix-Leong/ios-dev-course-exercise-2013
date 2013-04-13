//
//  UIView+UIView_Position.m
//  AFNetworkingImage
//
//  Created by felixleong on 13年4月6日.
//  Copyright (c) 2013年 FelixLeong. All rights reserved.
//

#import "UIView+UIView_Position.h"

@implementation UIView (UIView_Position)
- (void)setX:(float)x andY:(float)y {
    CGRect frame = self.frame;
    frame.origin.x = x;
    frame.origin.y = y;
    self.frame = frame;
}
@end
