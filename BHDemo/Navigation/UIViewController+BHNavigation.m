//
//  UIViewController+BHNavigation.m
//  BHDemo
//
//  Created by QBH on 2019/2/26.
//  Copyright © 2019 QiaoBaHui. All rights reserved.
//

#import "UIViewController+BHNavigation.h"
#import "UIBarButtonItem+BHBlock.h"

// Defaults
#define BH_NAV_DEFAULT_COLOR [UIColor blackColor]
#define BH_NAV_DEFAULT_FONT_SIZE 18.f

#define BH_NAV_DEFAULT_LEFT_TITLE_COLOR [UIColor whiteColor]
#define BH_NAV_DEFAULT_RIGHT_TITLE_COLOR [UIColor whiteColor]

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
	[self configureNavLeftItemTitle:title color:BH_NAV_DEFAULT_LEFT_TITLE_COLOR handler:handler];
}

- (void)configureNavRightItemTitle:(NSString *)title handler:(void(^)(void))handler {
	[self configureNavRightItemTitle:title color:BH_NAV_DEFAULT_RIGHT_TITLE_COLOR handler:handler];
}

- (void)configureNavLeftItemTitle:(NSString *)title color:(UIColor *)color handler:(void(^)(void))handler {
	self.navigationController.navigationBar.tintColor = color;
	
	UIBarButtonItem *item = [[UIBarButtonItem alloc] bh_initWithTitle:title style:UIBarButtonItemStylePlain handler:handler];
	self.navigationItem.leftBarButtonItem = item;
}

- (void)configureNavRightItemTitle:(NSString *)title color:(UIColor *)color handler:(void(^)(void))handler {
	self.navigationController.navigationBar.tintColor = color;
	
	UIBarButtonItem *item = [[UIBarButtonItem alloc] bh_initWithTitle:title style:UIBarButtonItemStylePlain handler:handler];
	self.navigationItem.rightBarButtonItem = item;
}

- (void)configureNavLeftItemImage:(UIImage *)image handler:(void(^)(void))handler {
	UIBarButtonItem *item = [[UIBarButtonItem alloc] bh_initWithImage:image style:UIBarButtonItemStylePlain handler:handler];
	[item setImage:[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
	
	self.navigationItem.leftBarButtonItem = item;
}

- (void)configureNavRightItemImage:(UIImage *)image handler:(void(^)(void))handler {
	UIBarButtonItem *item = [[UIBarButtonItem alloc] bh_initWithImage:image style:UIBarButtonItemStylePlain handler:handler];
	[item setImage:[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
	
	self.navigationItem.rightBarButtonItem = item;
}

#pragma mark - Navigation Show & Hidden Animation

- (void)navigationBarShowHasAnimation:(BOOL)animation {
	[self.navigationController setNavigationBarHidden:NO animated:animation];
}

- (void)navigationBarHiddenHasAnimation:(BOOL)animation {
	[self.navigationController setNavigationBarHidden:YES animated:animation];
}

@end
