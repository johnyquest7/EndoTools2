//
//  CorrectedSodiumViewController.m
//  Endo Tools
//
//  Created by Johnson Thomas on 7/14/13.
//  Copyright (c) 2013 Johnson Thomas. All rights reserved.
//

#import "CorrectedSodiumViewController.h"

@interface CorrectedSodiumViewController ()

@end

@implementation CorrectedSodiumViewController

@synthesize GlucoseValue;
@synthesize SodiumValue;
@synthesize CorrectedSodium;

float glucose, sodium, sodiumcorrected;

-(IBAction)CalculateCorrectedSodium:(id)sender{
    
    glucose = [GlucoseValue.text floatValue];
    sodium = [SodiumValue.text floatValue];
    
    sodiumcorrected = sodium + 0.016 * (glucose -100);
    CorrectedSodium.text = [NSString stringWithFormat:@"%.2f", sodiumcorrected];
    
    
}

- (IBAction)keyboardisappear:(id)sender {
  [SodiumValue resignFirstResponder];
  [GlucoseValue resignFirstResponder];

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
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
