//
//  GfrCalculatorViewController.h
//  endotools
//
//  Created by Johnson Thomas on 12/29/12.
//  Copyright (c) 2012 Johnson Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>
#include <math.h>

@interface GfrCalculatorViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *Age;
@property (strong, nonatomic) IBOutlet UITextField *Screatinine;
@property (strong, nonatomic) IBOutlet UISegmentedControl *AfricanAmerican;
@property (strong, nonatomic) IBOutlet UISegmentedControl *Sex;
@property (strong, nonatomic) IBOutlet UITextField *Gfr;



//@property (nonatomic, strong) IBOutlet UISegmentedControl *AfricanAmerican;
//@property (nonatomic, strong) IBOutlet UISegmentedControl *Sex;

//@property (nonatomic, strong) IBOutlet UITextField *Age;

//@property (nonatomic, strong) IBOutlet UITextField *Screatinine;
//@property (nonatomic, strong) IBOutlet UITextField *Gfr;


-(IBAction)CalculateGFR :(id)sender;
-(IBAction)hidekeyboard:(id)sender;
-(IBAction)AAChnaged :(id)sender;
-(IBAction)Sexchanged :(id)sender;
-(IBAction)keyboardisappear:(id)sender;


@end
