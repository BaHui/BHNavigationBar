//
//  BHFirstViewController.m
//  BHDemo
//
//  Created by QBH on 2019/2/16.
//  Copyright © 2019 QiaoBaHui. All rights reserved.
//

#import "BHFirstViewController.h"

@interface BHFirstViewController ()

@end

@implementation BHFirstViewController

+ (instancetype)create {
	UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"DemoViews" bundle:nil];
	return [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
}

#pragma mark - ViewController LifeCycle

- (void)viewDidLoad {
	[super viewDidLoad];
	
	UINavigationBar *navigaitonBar = self.navigationController.navigationBar;
	[navigaitonBar setBackgroundImage:[UIImage imageNamed:@"bh_navigation_bg"] forBarMetrics:UIBarMetricsDefault];
}

@end
