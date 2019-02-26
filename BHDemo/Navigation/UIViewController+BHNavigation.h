//
//  UIViewController+BHNavigation.h
//  BHDemo
//
//  Created by QBH on 2019/2/26.
//  Copyright © 2019 QiaoBaHui. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (BHNavigation)

#pragma mark - Navigation Title

- (void)configureNavTitle:(NSString *)title;
- (void)configureNavTitle:(NSString *)title color:(UIColor *)color;
- (void)configureNavTitle:(NSString *)title color:(UIColor *)color fontSize:(CGFloat)fontSize;

#pragma mark - Navigation Background

- (void)configureNavBackgroundColor:(UIColor *)color;
- (void)configureNavBackgroundImage:(UIImage *)image;

#pragma mark - Navigation Left & Right Item

- (void)configureNavLeftItemTitle:(NSString *)title handler:(void(^)(void))handler;
- (void)configureNavRightItemTitle:(NSString *)title handler:(void(^)(void))handler;

- (void)configureNavLeftItemTitle:(NSString *)title color:(UIColor *)color handler:(void(^)(void))handler;
- (void)configureNavRightItemTitle:(NSString *)title color:(UIColor *)color handler:(void(^)(void))handler;

- (void)configureNavLeftItemImage:(UIImage *)image handler:(void(^)(void))handler;
- (void)configureNavRightItemImage:(UIImage *)image handler:(void(^)(void))handler;

#pragma mark - Navigation Show & Hidden Animation

- (void)navigationBarShowHasAnimation:(BOOL)animation;
- (void)navigationBarHiddenHasAnimation:(BOOL)animation;

@end

NS_ASSUME_NONNULL_END
