//
//  ViewController.m
//  Telefonowanie
//
//  Created by M0RT1M3R on 24/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController()
    -(void) makePhoneCallWithNumber:(NSString *)number;
    -(BOOL) canMakePhoneCalls;
@end

@implementation ViewController

@synthesize phoneNo = _phoneNo;

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _canMakePhoneCalls = [self canMakePhoneCalls];
}

-(IBAction) makePhoneCall:(id)sender {
    if (_canMakePhoneCalls) {
        [self makePhoneCallWithNumber:self.phoneNo.text];
    } else {
        NSLog(@"Cannot make phone calls... :(");
    }
}

-(IBAction) hideKeyboard:(id)sender {
    [(UITextField *)sender resignFirstResponder];
}

//private...
-(void) makePhoneCallWithNumber:(NSString *)number {
    
    NSString *phoneNoWithProtocol = [NSString stringWithFormat:@"tel:%@", [[number componentsSeparatedByCharactersInSet: [NSCharacterSet whitespaceCharacterSet]] componentsJoinedByString: @""]];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:phoneNoWithProtocol]];
}


-(BOOL) canMakePhoneCalls {
    return [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tel:123456789"]];
}


@end
