//
//  HbA1cViewController.h
//  endotools
//
//  Created by Johnson Thomas on 12/26/12.
//  Copyright (c) 2012 Johnson Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HbA1cViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *HbA1c;

@property (strong, nonatomic) IBOutlet UITextField *Fructosamine;

@property (strong, nonatomic) IBOutlet UITextField *Glucose;


- (IBAction)HbA1cChanged:(id)sender;

- (IBAction)FructosamineChanged:(id)sender;
- (IBAction)GlucoseChanged:(id)sender;


//@property (nonatomic, strong) IBOutlet UITextField *HbA1c;
//@property (nonatomic, strong) IBOutlet UITextField *Fructosamine;
//@property (nonatomic, strong) IBOutlet UITextField *Glucose;

//-(IBAction)HbA1cChanged :(id)sender;
//-(IBAction)FructosamineChanged :(id)sender;
//-(IBAction)GlucoseChanged :(id)sender;
-(IBAction)keyboardisappear:(id)sender;

@end
