//
//  UIViewController+BHNavigation.m
//  BHDemo
//
//  Created by QBH on 2019/2/19.
//  Copyright © 2019 QiaoBaHui. All rights reserved.
//

#import "UIViewController+BHNavigation.h"

#define BH_NAV_DEFAULT_COLOR [UIColor redColor]
#define BH_NAV_DEFAULT_FONT_SIZE 18.f


@implementation UIViewController (BHNavigation)

- (void)configureTitle:(NSString *)title {
	[self configureTitle:title color:BH_NAV_DEFAULT_COLOR fontSize:BH_NAV_DEFAULT_FONT_SIZE];
}

- (void)configureTitle:(NSString *)title color:(UIColor *)color {
	[self configureTitle:title color:color fontSize:BH_NAV_DEFAULT_FONT_SIZE];
}

- (void)configureTitle:(NSString *)title color:(UIColor *)color fontSize:(CGFloat)fontSize {
	[self.navigationItem setTitle:title];
	
	NSDictionary *attributes = @{NSForegroundColorAttributeName : color,
															 NSFontAttributeName : [UIFont systemFontOfSize:fontSize]};
	[self.navigationController.navigationBar setTitleTextAttributes:attributes];
}

#pragma mark - Private Methods

@end
