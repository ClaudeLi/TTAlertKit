//
//  TTAlert.m
//  TTAlertKit
//
//  Created by ClaudeLi on 2018/9/18.
//

#import "TTAlert.h"
#import "TTAlertController.h"

static TTAlertController *alertView;
static TTAlertController *sheetView;

@implementation TTAlert

+ (void)ifHasAlertHide{
    if (alertView) {
        alertView = nil;
    }
    if (sheetView) {
        sheetView = nil;
    }
}

+ (void)alertInView:(UIView *)view
              title:(NSString *)title
            message:(NSString *)message
     completeHelper:(void(^)(NSInteger clickIndex))completeHelper
        cancelTitle:(NSString *)cancelTitle
        otherTitles:(NSString *)otherTitles, ...{
    va_list args;
    va_start(args, otherTitles);
    alertView = [[TTAlertController alloc] initAlertWithTitle:title
                                                  message:message
                                        cancelButtonTitle:cancelTitle
                                        otherButtonTitle:otherTitles
                                                     args:args];
    va_end(args);
    [alertView setDidClickIndexBlock:^(NSInteger index) {
        if (completeHelper) {
            completeHelper(index);
        }
        alertView = nil;
    }];
    if (view) {
        [alertView showInView:view];
    }else{
        [alertView show];
    }
}

+ (void)sheetInView:(UIView *)view
              title:(NSString *)title
            message:(NSString *)message
     completeHelper:(void(^)(NSInteger clickIndex))completeHelper
        cancelTitle:(NSString *)cancelTitle
   destructiveTitle:(NSString *)destructiveTitle
         otherTitles:(NSString *)otherTitles, ...{
    va_list args;
    va_start(args, otherTitles);
    sheetView = [[TTAlertController alloc] initSheetWithTitle:title
                                                  message:message
                                        cancelButtonTitle:cancelTitle
                                   destructiveButtonTitle:destructiveTitle
                                        otherButtonTitle:otherTitles
                                                     args:args];
    va_end(args);
    [sheetView setDidClickIndexBlock:^(NSInteger index) {
        if (completeHelper) {
            completeHelper(index);
        }
        sheetView = nil;
    }];
    [sheetView showInView:view];
}

@end
