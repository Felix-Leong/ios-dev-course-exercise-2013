//
//  ViewController.h
//  MapDemo
//
//  Created by felixleong on 13年4月13日.
//  Copyright (c) 2013年 FelixLeong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController<MKMapViewDelegate, CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
