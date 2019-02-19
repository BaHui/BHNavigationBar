//
//  BHAppDelegate.m
//  BHDemo
//
//  Created by QiaoBaHui on 2018/9/18.
//  Copyright © 2018年 QiaoBaHui. All rights reserved.
//

#import "BHAppDelegate.h"
#import "BHFirstViewController.h"

@interface BHAppDelegate ()

@end

@implementation BHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	self.window.rootViewController = [self wrapperRootNavigationController];
  [self.window makeKeyAndVisible];

  return YES;
}

#pragma mark - Private Methods

- (UINavigationController *)wrapperRootNavigationController {
	BHFirstViewController *firstViewController = [BHFirstViewController create];
	UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:firstViewController];
	navigationController.navigationBarHidden = NO;
	
	return navigationController;
}

@end
