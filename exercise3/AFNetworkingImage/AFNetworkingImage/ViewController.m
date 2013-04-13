//
//  ViewController.m
//  AFNetworkingImage
//
//  Created by felixleong on 13年4月6日.
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
    
    //NSURL *imageURL = [NSURL URLWithString:@"http://placekitten.com/200/300"];
    NSURL *imageURL = [NSURL URLWithString:@"http://graph.facebook.com/felix.leong.90/picture?type=large"];
    [self.image setImageWithURL:imageURL];
    [self.image setX:0 andY:0];
    
    NSURL *url = [NSURL URLWithString:@"http://graph.facebook.com/felix.leong.90"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        NSLog(@"Result: %@", JSON);
        //self.nameLabel.text = [JSON objectForKey:@"name"]
        self.nameLabel.text = JSON[@"name"];
    } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
        //code
    }];
    
    [operation start];
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
