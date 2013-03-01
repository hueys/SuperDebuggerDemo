//
//  AAppDelegate.m
//  SampleApp
//
//  Created by Steven Huey on 3/1/13.
//  Copyright (c) 2013 Art & Logic. All rights reserved.
//

#import "AAppDelegate.h"

#import <SuperDBCore/SuperDBCore.h>

@implementation AAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
   [self initSuperDebugger];
   
   return YES;
}

- (void)initSuperDebugger
{
   fInterpreterService = [SuperInterpreterService new];
   if ([fInterpreterService startServer]) {
      [fInterpreterService publishServiceWithCallback:^(id success, NSDictionary *errorDictionary) {
         if (errorDictionary) {
            NSLog(@"There was a problem starting the SuperDebugger service: %@", errorDictionary);
            return;
         }
         
         // The service is now on the network, ready to run interpreter events.
      }];
   }
   
   __weak typeof(self) bself = self;
   [fInterpreterService setCurrentSelfPointerBlock:^id {
      return bself.window.rootViewController;
   }];
}


@end
