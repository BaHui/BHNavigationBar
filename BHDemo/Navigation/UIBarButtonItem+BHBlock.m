//
//  UIBarButtonItem+BHBlock.m
//  BHDemo
//
//  Created by QiaoBaHui on 2019/2/25.
//  Copyright © 2019 QiaoBaHui. All rights reserved.
//

#import "UIBarButtonItem+BHBlock.h"
#import <objc/runtime.h>

static const void *BHBarButtonItemBlockKey = &BHBarButtonItemBlockKey;

@implementation UIBarButtonItem (BHBlock)

- (instancetype)bh_initWithImage:(UIImage *)image style:(UIBarButtonItemStyle)style handler:(void (^)(void))handler {
	self = [self initWithImage:image style:style target:self action:@selector(bh_handleAction)];
	if (!self) return nil;

	objc_setAssociatedObject(self, BHBarButtonItemBlockKey, handler, OBJC_ASSOCIATION_COPY_NONATOMIC);

	return self;
}

- (instancetype)bh_initWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style handler:(void (^)(void))handler {
	self = [self initWithTitle:title style:style target:self action:@selector(bh_handleAction)];
	if (!self) return nil;

	objc_setAssociatedObject(self, BHBarButtonItemBlockKey, handler, OBJC_ASSOCIATION_COPY_NONATOMIC);

	return self;
}

#pragma mark - Private Methods

- (void)bh_handleAction {
	void (^block)(void) = objc_getAssociatedObject(self, BHBarButtonItemBlockKey);

	if (block) {
		block();
	}
}

@end
