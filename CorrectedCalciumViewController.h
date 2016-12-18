//
//  CorrectedCalciumViewController.h
//  endotools
//
//  Created by Johnson Thomas on 12/28/12.
//  Copyright (c) 2012 Johnson Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CorrectedCalciumViewController : UIViewController

//@property (nonatomic, strong) IBOutlet UITextField *Calcium;
@property (nonatomic, strong) IBOutlet UITextField *Albumin;
//@property (nonatomic, strong) IBOutlet UITextField *CorrectedCalcium;

@property (strong, nonatomic) IBOutlet UITextField *Calcium;
@property (strong, nonatomic) IBOutlet UITextField *CorrectedCalcium;


-(IBAction)CalculateCorrectedCalcium :(id)sender;
-(IBAction)hidekeyboard:(id)sender;
-(IBAction)keyboardisappear:(id)sender;

@end
