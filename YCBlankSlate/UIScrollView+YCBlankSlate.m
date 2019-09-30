//
//  UIScrollView+YCBlankSlate.m
//  YCBlankSlateDemo
//
//  Created by xiayingying on 2018/8/31.
//  Copyright © 2018年 ejl. All rights reserved.
//

#import "UIScrollView+YCBlankSlate.h"
#import "YCBlankSlateHanlder.h"
#import <objc/runtime.h>

@implementation UIScrollView (YCBlankSlate)

#pragma mark - handler
- (void)setYc_handler:(YCBlankSlateHanlder *)yc_handler {
    if (yc_handler != self.yc_handler) {
        [self willChangeValueForKey:NSStringFromSelector(@selector(yc_handler))]; // KVO
        objc_setAssociatedObject(self, @selector(yc_handler), yc_handler, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        yc_handler.scrollView = self;
        [self didChangeValueForKey:NSStringFromSelector(@selector(yc_handler))]; // KVO
    }
}

- (YCBlankSlateHanlder *)yc_handler {
    return objc_getAssociatedObject(self, @selector(yc_handler));
}

@end
