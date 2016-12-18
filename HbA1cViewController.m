//
//  HbA1cViewController.m
//  endotools
//
//  Created by Johnson Thomas on 12/26/12.
//  Copyright (c) 2012 Johnson Thomas. All rights reserved.
//

#import "HbA1cViewController.h"

@interface HbA1cViewController ()

@end



@implementation HbA1cViewController

@synthesize HbA1c;
@synthesize Fructosamine;
@synthesize Glucose;

float hba1c, fructosamine, glucose, newHbA1c, newFructosamine, newGlucose;

-(IBAction)HbA1cChanged:(id)sender;{
    
    hba1c= [HbA1c.text floatValue];
     fructosamine= [Fructosamine.text floatValue];
    glucose= [Glucose.text floatValue];
    
    newGlucose = ((hba1c * 28.7) - 46.7);
    newFructosamine =((hba1c -1.61) * 58.82);
    
    
    Glucose.text = [NSString stringWithFormat:@"%.0f", newGlucose];
    Fructosamine.text = [NSString stringWithFormat:@"%0.2f", newFructosamine];
    
   // NSLog(@" new glucose = %.0f", newGlucose);
    // NSLog(@" new fructosamine = %.2f", newFructosamine);
}



-(IBAction)FructosamineChanged:(id)sender;{
    
    hba1c= [HbA1c.text floatValue];
    fructosamine= [Fructosamine.text floatValue];
    glucose= [Glucose.text floatValue];
    
    
    newHbA1c = ((0.017 * fructosamine ) + 1.61);
    newGlucose = ((newHbA1c * 28.7) - 46.7);
    
    Glucose.text = [NSString stringWithFormat:@"%.0f", newGlucose];
   HbA1c.text = [NSString stringWithFormat:@"%.2f", newHbA1c];
    
    //NSLog(@" new glucose = %f", newGlucose);
    //NSLog(@" new hba1cc = %f", newHbA1c);

    
}

-(IBAction)GlucoseChanged:(id)sender;{
    
    hba1c= [HbA1c.text floatValue];
    fructosamine= [Fructosamine.text floatValue];
    glucose= [Glucose.text floatValue];
    
   
    
    newHbA1c = (( glucose + 46.7) / 28.7);
    newFructosamine = (( newHbA1c - 1.61) *58.82);
    
 
    
  Fructosamine.text = [NSString stringWithFormat:@"%.2f", newFructosamine];
    HbA1c.text = [NSString stringWithFormat:@"%.2f", newHbA1c];
    
    
    //NSLog(@" new frcutosamine = %f", newFructosamine);
   // NSLog(@" new hba1cc = %f", newHbA1c);
    
    
}

- (IBAction)keyboardisappear:(id)sender {
    [HbA1c resignFirstResponder];
    [Fructosamine resignFirstResponder];
    [Glucose resignFirstResponder];
    
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
