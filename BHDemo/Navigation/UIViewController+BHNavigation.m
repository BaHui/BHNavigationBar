//
//  UIViewController+BHNavigation.m
//  BHDemo
//
//  Created by QBH on 2019/2/19.
//  Copyright © 2019 QiaoBaHui. All rights reserved.
//

#import "UIViewController+BHNavigation.h"

#define BH_NAV_DEFAULT_COLOR [UIColor blackColor]
#define BH_NAV_DEFAULT_FONT_SIZE 18.f

@implementation UIViewController (BHNavigation)

- (void)configureNavTitle:(NSString *)title {
	[self configureNavTitle:title color:BH_NAV_DEFAULT_COLOR fontSize:BH_NAV_DEFAULT_FONT_SIZE];
}

- (void)configureNavTitle:(NSString *)title color:(UIColor *)color {
	[self configureNavTitle:title color:color fontSize:BH_NAV_DEFAULT_FONT_SIZE];
}

- (void)configureNavTitle:(NSString *)title color:(UIColor *)color fontSize:(CGFloat)fontSize {
	[self.navigationItem setTitle:title];
	
	NSDictionary *attributes = @{NSForegroundColorAttributeName : color,
															 NSFontAttributeName : [UIFont systemFontOfSize:fontSize]};
	[self.navigationController.navigationBar setTitleTextAttributes:attributes];
}

#pragma mark - Navigation Background

- (void)configureNavBackgroundColor:(UIColor *)color {
	self.navigationController.navigationBar.barTintColor = color;
}

- (void)configureNavBackgroundImage:(UIImage *)image {
	[self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
}

#pragma mark - Navigation Item

- (void)configureNavLeftItemTitle:(NSString *)title handler:(void(^)(void))handler {
	UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStylePlain target:self action:@selector(leftHandler:)];
	self.navigationItem.leftBarButtonItem = item;
}

- (void)configureNavRightItemTitle:(NSString *)title handler:(void(^)(void))handler {
	UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStylePlain target:self action:@selector(rightHandler:)];
	self.navigationItem.rightBarButtonItem = item;
}

#pragma mark - Private Methods

- (void)leftHandler:(void(^)(void))handler {
	handler();//https://www.jianshu.com/p/ba032dabcf4d
}

- (void)rightHandler:(void(^)(void))handler {
	handler();
}

@end
