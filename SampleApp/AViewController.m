//
//  AViewController.m
//  SampleApp
//
//  Created by Steven Huey on 3/1/13.
//  Copyright (c) 2013 Art & Logic. All rights reserved.
//

#import "AViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad
{
   [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://artlogic.com"]]];
}

@end
