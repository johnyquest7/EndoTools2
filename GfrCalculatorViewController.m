//
//  GfrCalculatorViewController.m
//  endotools
//
//  Created by Johnson Thomas on 12/29/12.
//  Copyright (c) 2012 Johnson Thomas. All rights reserved.
//

#import "GfrCalculatorViewController.h"

@interface GfrCalculatorViewController ()

@end

@implementation GfrCalculatorViewController

@synthesize AfricanAmerican;
@synthesize Sex;
@synthesize Age;
@synthesize Screatinine;
@synthesize Gfr;

float age, creatinine, egfr, powercr, powerage;
float aavalue =1.212;
float sexvalue =0.742;


-(IBAction)CalculateGFR:(id)sender;{
    
    creatinine =[ Screatinine.text floatValue];
       
    powercr = pow(creatinine, -1.154);
    
    
    
    age = [ Age.text floatValue];

    
    powerage = pow(age, -0.203);
  
    
    egfr = 175 * powercr * powerage * aavalue * sexvalue;
    
   // GFR = 175 x SerumCr-1.154 * age-0.203 * 1.212 (if patient is black) * 0.742 (if female)
    
   Gfr.text = [NSString stringWithFormat:@"%.2f", egfr];
   
}

-(IBAction)hidekeyboard:(id)sender;{
    [sender resignFirstResponder];
    
}


-(IBAction)AAChnaged:(id)sender;{
   
    switch (self.AfricanAmerican.selectedSegmentIndex) {
        case 0:
        {
           
            aavalue = 1.212;
        }
            break;
        case 1:
            
        {
            aavalue = 1;
        }
            break;
            
        default:
            break;
    }
    
    
}


-(IBAction)Sexchanged:(id)sender;{
    
    switch (self.Sex.selectedSegmentIndex) {
        case 0:
        {
            sexvalue = 0.742;
        }
            break;
        case 1:
            
        {
            
            sexvalue =1;
        }
            break;
            
        default:
            break;
    }
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
   // self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:255/255 green:102/255 blue:102/255 alpha:1];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)keyboardisappear:(id)sender {
    [Age resignFirstResponder];
    [Screatinine resignFirstResponder];
    
}


@end
