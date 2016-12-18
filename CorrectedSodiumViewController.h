//
//  CorrectedSodiumViewController.h
//  Endo Tools
//
//  Created by Johnson Thomas on 7/14/13.
//  Copyright (c) 2013 Johnson Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CorrectedSodiumViewController : UIViewController


@property (strong, nonatomic) IBOutlet UITextField *SodiumValue;
@property (strong, nonatomic) IBOutlet UITextField *CorrectedSodium;

@property (strong, nonatomic) IBOutlet UITextField *GlucoseValue;

-(IBAction)CalculateCorrectedSodium :(id)sender;
-(IBAction)hidekeyboard:(id)sender;
-(IBAction)keyboardisappear:(id)sender;


@end
