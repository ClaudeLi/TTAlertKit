//
//  TTAlert.h
//  TTPromptKit
//
//  Created by ClaudeLi on 2018/9/18.
//

#import <Foundation/Foundation.h>

@interface TTAlert : NSObject


/**
 if has alert view, hide alert
 */
+ (void)ifHasAlertHide;


/**
 alert view

 @param view super view
 @param title title
 @param message message
 @param completeHelper completeHelper
 @param cancelTitle cancelTitle
 @param otherTitles otherTitles
 */
+ (void)alertInView:(nullable UIView *)view
              title:(nullable NSString *)title
            message:(nullable NSString *)message
     completeHelper:(nullable void(^)(NSInteger clickIndex))completeHelper
        cancelTitle:(nullable NSString *)cancelTitle
        otherTitles:(nullable NSString *)otherTitles, ...;

/**
 alert sheet
 
 @param view super view
 @param title title
 @param message message
 @param completeHelper completeHelper
 @param destructiveTitle destructiveTitle
 @param cancelTitle cancelTitle
 @param otherTitles otherTitles
 */
+ (void)sheetInView:(nonnull UIView *)view
              title:(nullable NSString *)title
            message:(nullable NSString *)message
     completeHelper:(nullable void(^)(NSInteger clickIndex))completeHelper
        cancelTitle:(nullable NSString *)cancelTitle
   destructiveTitle:(nullable NSString *)destructiveTitle
        otherTitles:(nullable NSString *)otherTitles, ...;

@end
