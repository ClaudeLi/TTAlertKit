//
//  TTAlertController.h
//  TTAlertKit
//
//  Created by ClaudeLi on 2017/7/6.
//  Copyright © 2017年 ClaudeLi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TTAlertController : NSObject

// AlertView
- (nullable instancetype)initAlertWithTitle:(nullable NSString *)title
                                    message:(nullable NSString *)message
                          cancelButtonTitle:(nullable NSString *)cancelButtonTitle
                          otherButtonTitles:(nullable NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION;

- (nullable instancetype)initAlertWithTitle:(nullable NSString *)title
                                    message:(nullable NSString *)message
                          cancelButtonTitle:(nullable NSString *)cancelButtonTitle
                           otherButtonTitle:(nullable NSString *)otherButtonTitle
                                       args:(va_list)args;

// ActionSheet
- (nullable instancetype)initSheetWithTitle:(nullable NSString *)title
                                    message:(nullable NSString *)message
                          cancelButtonTitle:(nullable NSString *)cancelButtonTitle
                     destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
                          otherButtonTitles:(nullable NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION;

- (nullable instancetype)initSheetWithTitle:(nullable NSString *)title
                                    message:(nullable NSString *)message
                          cancelButtonTitle:(nullable NSString *)cancelButtonTitle
                         destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle
                           otherButtonTitle:(nullable NSString *)otherButtonTitle
                                       args:(va_list)args;
/**
 点击回调 index
 */
@property (nonatomic, copy) void(^ _Nullable didClickIndexBlock)(NSInteger index);

/**
 显示alert，如果view为nil，默认调用UIAlertView
 */
- (void)show;

/**
 显示alert
 
 @param view 唤起alert的视图。view为nil，默认调用UIAlertView
 */
- (void)showInView:(nullable UIView *)view;

/**
 显示alert

 @param viewController 唤起alert的控制器
 */
- (void)showInViewController:(nullable UIViewController *)viewController;

@end
