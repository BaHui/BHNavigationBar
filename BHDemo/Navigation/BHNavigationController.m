//
//  BHNavigationController.m
//  BHDemo
//
//  Created by QBH on 2019/2/16.
//  Copyright © 2019 QiaoBaHui. All rights reserved.
//

#import "BHNavigationController.h"

@interface BHNavigationController ()

@end

@implementation BHNavigationController

+ (instancetype)wrappingWithRootViewController:(UIViewController *)viewController {
	BHNavigationController *navigationViewController = [[BHNavigationController alloc] initWithRootViewController:viewController];
	return navigationViewController;
}

#pragma mark - ViewController LifeCycle

- (void)viewDidLoad {
	[super viewDidLoad];
}

@end
