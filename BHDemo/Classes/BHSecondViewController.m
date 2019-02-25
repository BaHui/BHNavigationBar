//
//  BHSecondViewController.m
//  BHDemo
//
//  Created by QBH on 2019/2/16.
//  Copyright © 2019 QiaoBaHui. All rights reserved.
//

#import "BHSecondViewController.h"
#import "UIViewController+BHNavigation.h"

@interface BHSecondViewController ()

@end

@implementation BHSecondViewController

+ (instancetype)create {
	UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"DemoViews" bundle:nil];
	return [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
}

#pragma mark - ViewController LifeCycle

- (void)viewDidLoad {
	[super viewDidLoad];
	[self configureNavBackgroundImage:[UIImage imageNamed:@"bh_navigation_bg"]];
	
	[self configureNavLeftItemTitle:@"Back" handler:^{
		[self.navigationController popViewControllerAnimated:YES];
	}];
}

@end
