//
//  BHNavigationController.h
//  BHDemo
//
//  Created by QBH on 2019/2/16.
//  Copyright © 2019 QiaoBaHui. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BHNavigationController : UINavigationController

+ (instancetype)wrappingWithRootViewController:(UIViewController *)viewController;

@end

NS_ASSUME_NONNULL_END
