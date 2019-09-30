//
//  UIScrollView+YCBlankSlate.h
//  YCBlankSlateDemo
//
//  Created by xiayingying on 2018/8/31.
//  Copyright © 2018年 ejl. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YCBlankSlateHanlder;

@interface UIScrollView (YCBlankSlate)

/** 空白状态配置项 */
@property (nonatomic,strong) __kindof YCBlankSlateHanlder *yc_handler;

@end
