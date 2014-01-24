/**
 * @class WToastTestViewController
 * @author Nik S Dyonin <wolf.step@gmail.com>
 */

#import "WToastTestViewController.h"
#import "WToast.h"

@implementation WToastTestViewController

@synthesize textField = _textField;

- (void)viewDidLoad {
	[super viewDidLoad];
	self.textField.delegate = self;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	[textField resignFirstResponder];
	return NO;
}

- (IBAction)showShortMessage {
	[self.textField resignFirstResponder];
	NSString *text = self.textField.text;
	if (!text || ![text length]) {
		text = @"No text!";
	}
	[WToast showWithText:text];
}

- (IBAction)showLongMessage {
	[self.textField resignFirstResponder];
	NSString *text = self.textField.text;
	if (!text || ![text length]) {
		text = @"No text!";
	}
	[WToast showWithText:text length:5];
}

- (IBAction)showClickableMessage {
	[self.textField resignFirstResponder];
	NSString *text = self.textField.text;
	if (!text || ![text length]) {
		text = @"No text!";
	}
	WToast *toast = [WToast showWithText:text length:3];
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
	[WToast showWithImage:[UIImage imageNamed:@"test.png"] length:5];
}

- (void)dealloc {
	self.textField = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
	return YES;
}

@end
