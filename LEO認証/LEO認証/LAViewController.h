//
//  LAViewController.h
//  LEO認証
//
//  Created by Ryota Moriwaki on 2013/03/11.
//  Copyright (c) 2013年 Ryota MORIWAKI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LAViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *account;
- (IBAction)authenticate:(id)sender;
-(BOOL)textFieldShouldReturn:(UITextField*)textField;
@end
