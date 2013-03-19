//
//  LAViewController.m
//  LEO認証
//
//  Created by Ryota Moriwaki on 2013/03/11.
//  Copyright (c) 2013年 Ryota MORIWAKI. All rights reserved.
//

#import "LAViewController.h"

@interface LAViewController ()

@end

@implementation LAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.account.delegate = self;
    self.password.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)authenticate:(id)sender {
    NSLog(@"sender");
    // fixme accountのTextFieldを入力すると何故かこのメソッドが
    // コールされる。なぜ？？？？
    if(sender != self.account)
    {
        UIAlertView* av = [[UIAlertView alloc] initWithTitle:self.account.text
            message:self.password.text
            delegate:self
            cancelButtonTitle:@"キャンセ〜る"
            otherButtonTitles:@"おっけ〜",
            nil];
    [av show];
    }
}

-(BOOL)textFieldShouldReturn:(UITextField*)textField
{
    UITextField* target = NULL;
    if(textField == self.account)
    {
        NSLog(@"account return");
        target = self.account;
    }
    else
    {
        NSLog(@"password return");
        target = self.password;
    }
    if(target != NULL)
    {
        [target resignFirstResponder];
    }
    return YES;
}


@end
