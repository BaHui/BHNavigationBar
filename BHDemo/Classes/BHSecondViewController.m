//
//  BHSecondViewController.m
//  BHDemo
//
//  Created by QBH on 2019/2/26.
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
	
//	[self configureNavLeftItemTitle:@"Back" color:[UIColor brownColor] handler:^{
//		[self.navigationController popViewControllerAnimated:YES];
//	}];
	
	__weak typeof(self) weakSelf = self;
	[self configureNavLeftItemImage:[UIImage imageNamed:@"bh_navigation_back_white"] handler:^{
		[weakSelf.navigationController popViewControllerAnimated:YES];
	}];
}

- (void)dealloc {
	NSLog(@"BHSecondViewController Dealloc !!!");
}

@end
