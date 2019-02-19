//
//  UIViewController+BHNavigation.h
//  BHDemo
//
//  Created by QBH on 2019/2/19.
//  Copyright © 2019 QiaoBaHui. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (BHNavigation)

- (void)configureTitle:(NSString *)title;
- (void)configureTitle:(NSString *)title color:(UIColor *)color;
- (void)configureTitle:(NSString *)title color:(UIColor *)color fontSize:(CGFloat)fontSize;

@end

NS_ASSUME_NONNULL_END
