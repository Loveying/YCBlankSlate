//
//  MainViewController.h
//  YCBlankSlateDemo
//
//  Created by xiayingying on 2018/8/31.
//  Copyright © 2018年 ejl. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, YCDisplayMode) {
    YCDisplayModeLoading,
    YCDisplayModeEmpty,
    YCDisplayModeFail,
    YCDisplayModeSuccess
};

@interface MainViewController : UITableViewController

@end
