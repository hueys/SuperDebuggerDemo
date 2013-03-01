//
//  AAppDelegate.h
//  SampleApp
//
//  Created by Steven Huey on 3/1/13.
//  Copyright (c) 2013 Art & Logic. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SuperInterpreterService;
@interface AAppDelegate : UIResponder <UIApplicationDelegate>
{
   SuperInterpreterService* fInterpreterService;
}

@property (strong, nonatomic) UIWindow *window;

@end
