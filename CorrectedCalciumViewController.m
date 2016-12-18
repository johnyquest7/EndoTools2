//
//  CorrectedCalciumViewController.m
//  endotools
//
//  Created by Johnson Thomas on 12/28/12.
//  Copyright (c) 2012 Johnson Thomas. All rights reserved.
//

#import "CorrectedCalciumViewController.h"

@interface CorrectedCalciumViewController ()

@end

@implementation CorrectedCalciumViewController
@synthesize Calcium;
@synthesize Albumin;
@synthesize CorrectedCalcium;

float calcium, albumin, correctedcalcium, firstcalc, secondcalc;


-(IBAction)CalculateCorrectedCalcium:(id)sender;{
    
    calcium = [Calcium.text floatValue];
    albumin = [Albumin.text floatValue];
    
    firstcalc = (4 - albumin);
    secondcalc = (.8 * firstcalc);
    correctedcalcium = secondcalc + calcium;
    
    CorrectedCalcium.text = [NSString stringWithFormat:@"%.2f", correctedcalcium];
    

}

- (IBAction)keyboardisappear:(id)sender {
    [Calcium resignFirstResponder];
    [Albumin resignFirstResponder];
    
}

-(IBAction)hidekeyboard:(id)sender;{
    [sender resignFirstResponder];
    
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
    //self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:255/255 green:102/255 blue:102/255 alpha:1];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
