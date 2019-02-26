//
//  BHFirstViewController.m
//  BHDemo
//
//  Created by QBH on 2019/2/26.
//  Copyright © 2019 QiaoBaHui. All rights reserved.
//

#import "BHFirstViewController.h"
#import "BHSecondViewController.h"
#import "UIViewController+BHNavigation.h"

@interface BHFirstViewController () <UIGestureRecognizerDelegate>

@end

@implementation BHFirstViewController

+ (instancetype)create {
	UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"DemoViews" bundle:nil];
	return [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
}

#pragma mark - ViewController LifeCycle

- (void)viewDidLoad {
	[super viewDidLoad];
	[self popGestureRecognizerEnable];
	
	[self configureNavTitle:@"First View Controller" color:[UIColor brownColor]];
	[self configureNavBackgroundColor:[UIColor blackColor]];
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	[self navigationBarShowHasAnimation:animated];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
	BHSecondViewController *secondViewController = [BHSecondViewController create];
	[self.navigationController pushViewController:secondViewController animated:YES];
}

#pragma mark - Private Methods

- (void)popGestureRecognizerEnable {
	self.navigationController.interactivePopGestureRecognizer.enabled = YES;
	self.navigationController.interactivePopGestureRecognizer.delegate = self;
}

@end
