//
//  ThyroxineDoseViewController.m
//  endotools
//
//  Created by Johnson Thomas on 12/29/12.
//  Copyright (c) 2012 Johnson Thomas. All rights reserved.
//

#import "ThyroxineDoseViewController.h"

@interface ThyroxineDoseViewController ()

@end

@implementation ThyroxineDoseViewController
@synthesize Pound;
@synthesize ThyroxineDose;

float lb, kg, dose;


-(IBAction)CalculateThyroxineDose:(id)sender;{
    
    
    lb =[Pound.text floatValue];
    kg = lb / 2.2;
    dose = kg * 1.6;
    ThyroxineDose.text = [NSString stringWithFormat:@"%.2f", dose];
    
}

-(IBAction)hidekeyboard:(id)sender;{
    [sender resignFirstResponder];
    
}

- (IBAction)keyboardisappear:(id)sender {
    [Pound resignFirstResponder];
       
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
