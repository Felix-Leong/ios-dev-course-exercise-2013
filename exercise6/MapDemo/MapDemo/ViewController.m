//
//  ViewController.m
//  MapDemo
//
//  Created by felixleong on 13年4月13日.
//  Copyright (c) 2013年 FelixLeong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) CLLocationManager *locationManager;
//@property (nonatomic, strong) NSMutableArray *array;
@property (nonatomic, strong) MKPointAnnotation *locationPin;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //self.array = [[NSMutableArray alloc] initWithCapacity:3];
    
    
    CLLocationCoordinate2D location = CLLocationCoordinate2DMake(22.198154,113.547113);
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, 500.0f, 500.0f);
    
    self.mapView.region = region;
    
    
        self.locationPin = [[MKPointAnnotation alloc] init];
        //pin.coordinate = CLLocationCoordinate2DMake(22.198400,113.547400);
        self.locationPin.title = @"Current Position";
        self.locationPin.subtitle = @"this is your current position";
    
    
    //self.mapView.mapType = MKMapTypeHybrid;
    
    /*
    
    {
        MKPointAnnotation *pin = [[MKPointAnnotation alloc] init];
        pin.coordinate = CLLocationCoordinate2DMake(22.198154,113.547113);
        pin.title = @"Pin1";
        pin.subtitle = @"This is pin1";
        [self.array addObject:pin];
    }
    
    {
        MKPointAnnotation *pin = [[MKPointAnnotation alloc] init];
        pin.coordinate = CLLocationCoordinate2DMake(22.198400,113.547400);
        pin.title = @"Pin2";
        pin.subtitle = @"This is pin2";
        [self.array addObject:pin];
    }
    

    
    NSArray *array2 = @[@"1",@"2"];
    NSLog(@"%@", array2[0]);
    */
    
   // [self.mapView addAnnotations:self.array];
    
    
    self.locationManager = [[CLLocationManager alloc]init];
    self.locationManager.delegate = self;
    [self.locationManager startUpdatingLocation];
    
    [self.mapView addAnnotation:self.locationPin];
    
}

- (void)locationManager:(CLLocationManager *)manager
	 didUpdateLocations:(NSArray *)locations {
    CLLocation *location = [locations lastObject];
    self.locationPin.coordinate = location.coordinate;
    
    //MKPointAnnotation *pin = [[MKPointAnnotation alloc] init];
    //pin.coordinate = location.coordinate;
   // pin.title = @"Current Position";
   // pin.subtitle = @"your current position";
   // [self.array addObject:pin];
   // [self.mapView addAnnotation:pin];
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation {
    MKPinAnnotationView *pinView = (MKPinAnnotationView*)[mapView dequeueReusableAnnotationViewWithIdentifier:@"PPC"];
    //[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"PPC"];
    
    if (pinView == nil)
        pinView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"PPC"];

    pinView.annotation = annotation;
    pinView.pinColor = MKPinAnnotationColorGreen;
    pinView.canShowCallout = TRUE;
    pinView.image = [UIImage imageNamed:@"sunny.png"];
    
    pinView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    
    return pinView;
}

- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control {
    NSLog(@"Disclosur button clicked: %@", view.annotation.title);
}

- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view {
    NSLog(@"Tapped: %@", view.annotation.title);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
