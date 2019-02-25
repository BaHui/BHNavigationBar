//
//  UIBarButtonItem+BHBlock.h
//  BHDemo
//
//  Created by QiaoBaHui on 2019/2/25.
//  Copyright © 2019 QiaoBaHui. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#if !defined(BH_INITIALIZER)

# if __has_attribute(objc_method_family)
#  define BH_INITIALIZER __attribute__((objc_method_family(init)))
# else
#  define BH_INITIALIZER
# endif

#endif

@interface UIBarButtonItem (BHBlock)

- (instancetype)bh_initWithImage:(UIImage *)image style:(UIBarButtonItemStyle)style handler:(void (^)(void))handler BH_INITIALIZER;
- (instancetype)bh_initWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style handler:(void (^)(void))handler BH_INITIALIZER;

@end

NS_ASSUME_NONNULL_END
