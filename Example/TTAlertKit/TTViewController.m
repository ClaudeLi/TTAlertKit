//
//  TTViewController.m
//  TTAlertKit
//
//  Created by claudeli@yeah.net on 09/18/2018.
//  Copyright (c) 2018 claudeli@yeah.net. All rights reserved.
//

#import "TTViewController.h"
#import <TTAlertKit/TTAlert.h>

@interface TTViewController ()

@end

@implementation TTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)alert1:(id)sender {
    // view = nil 时调用UIAlertView
    [TTAlert alertInView:nil
                   title:@"你好"
                 message:@"message"
          completeHelper:^(NSInteger clickIndex) {
              NSLog(@"%ld", clickIndex);
          }
             cancelTitle:@"cancel"
             otherTitles:@"other1", nil];
}

- (IBAction)alert2:(id)sender {
    [TTAlert alertInView:self.view
                   title:@"你好"
                 message:@"message"
          completeHelper:^(NSInteger clickIndex) {
              NSLog(@"%ld", clickIndex);
          }
             cancelTitle:@"cancel"
             otherTitles:@"other1",@"other2",@"other3", nil];
}

- (IBAction)sheet1:(id)sender {
    [TTAlert sheetInView:self.view
                   title:@"Hello sheet"
                 message:@"message"
          completeHelper:^(NSInteger clickIndex) {
              NSLog(@"%ld", clickIndex);
          }
             cancelTitle:@"cancel"
        destructiveTitle:nil
             otherTitles:@"other1",@"other2",@"other3", nil];
}

- (IBAction)sheet2:(id)sender {
    [TTAlert sheetInView:self.view
                   title:@"Hello sheet"
                 message:nil
          completeHelper:^(NSInteger clickIndex) {
              NSLog(@"%ld", clickIndex);
          }
             cancelTitle:@"cancel"
        destructiveTitle:@"destructiveTitle"
             otherTitles:@"other1",@"other2",@"other3", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
