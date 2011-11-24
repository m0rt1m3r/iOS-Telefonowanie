//
//  ViewController.h
//  Telefonowanie
//
//  Created by M0RT1M3R on 24/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    UITextField *_phoneNo;
    
@private
    BOOL _canMakePhoneCalls;
}

@property (nonatomic, retain) IBOutlet UITextField *phoneNo;

-(IBAction) makePhoneCall:(id)sender;
-(IBAction) hideKeyboard:(id)sender;


@end
