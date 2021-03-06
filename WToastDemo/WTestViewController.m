//
//  WTestViewController.m
//  WToast
//
//  Created by Nik S Dyonin on 14.01.14.
//  Copyright (c) 2014 Nik S Dyonin. All rights reserved.
//

#import "WTestViewController.h"
#import "WToast.h"

@implementation WTestViewController

- (void)viewDidLoad {
	_textField.delegate = self;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	[textField resignFirstResponder];
	return NO;
}

- (IBAction)showShortMessage {
	[_textField resignFirstResponder];

	NSString *text = _textField.text;

	if (!text || ![text length]) {
		text = @"No text!";
	}

	[WToast showWithText:text];
}

- (IBAction)showLongMessage {
	[_textField resignFirstResponder];

	NSString *text = _textField.text;

	if (!text || ![text length]) {
		text = @"No text!";
	}

	[WToast showWithText:text duration:5];
}

- (IBAction)showClickableMessage {
	[_textField resignFirstResponder];
  
	NSString *text = _textField.text;
  
	if (!text || ![text length]) {
		text = @"No text!";
	}
  
	WToast *toast = [WToast showWithText:text duration:3];
  [toast addTarget:self action:@selector(showAlert) forControlEvents:UIControlEventTouchUpInside];
}

- (void)showAlert
{
  [[[UIAlertView alloc] initWithTitle:@"Alert" message:nil delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil] show];
}

- (IBAction)showShortImage {
	[WToast showWithImage:[UIImage imageNamed:@"test.png"]];
}

- (IBAction)showLongImage {
	[WToast showWithImage:[UIImage imageNamed:@"test.png"] duration:5];
}

@end
