//
//  BHForthViewController.m
//  BHDemo
//
//  Created by QBH on 2019/2/26.
//  Copyright © 2019 QiaoBaHui. All rights reserved.
//

#import "BHForthViewController.h"

@interface BHForthViewController ()

@end

@implementation BHForthViewController

+ (instancetype)create {
	UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"DemoViews" bundle:nil];
	return [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
}

#pragma mark - ViewController LifeCycle

- (void)viewDidLoad {
	[super viewDidLoad];
}

@end
