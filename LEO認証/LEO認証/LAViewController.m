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
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)authenticate:(id)sender {
    UIAlertView* av = [[UIAlertView alloc] initWithTitle:@"タイトル" message:@"メッセージ" delegate:self cancelButtonTitle:@"キャンセ〜る"otherButtonTitles:@"おっけ〜", nil];
    [av show];
}
@end
