//
//  FeCaViewController.m
//  endotools
//
//  Created by Johnson Thomas on 1/7/13.
//  Copyright (c) 2013 Johnson Thomas. All rights reserved.
//

#import "FeCaViewController.h"

@interface FeCaViewController ()

@end

@implementation FeCaViewController
@synthesize UCalcium24;
@synthesize UCreatinine24;
@synthesize SerumCalcium;
@synthesize SerumCreatinine;
@synthesize FeCa;

float ucalcium, ucreatinine, scalcium, screatine, FeCaResult;

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
    //self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:255/255 green:102/255 blue:102/255 alpha:1];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

    // Dispose of any resources that can be recreated.
}

- (IBAction)CalculateFeCa:(id)sender {
    
    ucalcium = [UCalcium24.text floatValue];
     ucreatinine = [UCreatinine24.text floatValue];
     scalcium= [SerumCalcium.text floatValue];
     screatine = [SerumCreatinine.text floatValue];
    
    FeCaResult= (ucalcium / scalcium) / (ucreatinine / screatine);
    FeCa.text = [NSString stringWithFormat:@"%.4f",FeCaResult];
    
}

-(IBAction)hidekeyboard:(id)sender;{
    [sender resignFirstResponder];
}

- (IBAction)keyboardisappear:(id)sender {
    
    [UCalcium24 resignFirstResponder];
    [UCreatinine24 resignFirstResponder];
    [SerumCalcium resignFirstResponder];
    [SerumCreatinine resignFirstResponder];
    
    }
@end
