//
//  FeCaViewController.h
//  endotools
//
//  Created by Johnson Thomas on 1/7/13.
//  Copyright (c) 2013 Johnson Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeCaViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *UCalcium24;
@property (weak, nonatomic) IBOutlet UITextField *UCreatinine24;
@property (weak, nonatomic) IBOutlet UITextField *SerumCalcium;
@property (weak, nonatomic) IBOutlet UITextField *SerumCreatinine;
@property (weak, nonatomic) IBOutlet UITextField *FeCa;

- (IBAction)CalculateFeCa:(id)sender;
-(IBAction)hidekeyboard:(id)sender;
-(IBAction)keyboardisappear:(id)sender;
@end
