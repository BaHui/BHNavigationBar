//
//  BHFirstViewController.m
//  BHDemo
//
//  Created by QBH on 2019/2/16.
//  Copyright © 2019 QiaoBaHui. All rights reserved.
//

#import "BHFirstViewController.h"
#import "BHSecondViewController.h"
#import "UIViewController+BHNavigation.h"

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
	
	[self configureTitle:@"First View Controller"];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
	BHSecondViewController *secondViewController = [BHSecondViewController create];
	[self.navigationController pushViewController:secondViewController animated:YES];
}

@end
