//
//  ChloridePhosphorusRatioViewController.m
//  Endo Tools
//
//  Created by Johnson Thomas on 7/19/13.
//  Copyright (c) 2013 Johnson Thomas. All rights reserved.
//

#import "ChloridePhosphorusRatioViewController.h"

@interface ChloridePhosphorusRatioViewController ()

@end


@implementation ChloridePhosphorusRatioViewController

@synthesize ChlorideValue;
@synthesize PhosValue;
@synthesize ChlorPhosRatio;

float chlor, phos, chlorphos;

-(IBAction)CalculateChlorPhosRatio:(id)sender{
    
    chlor = [ChlorideValue.text floatValue];
    phos = [PhosValue.text floatValue];
    
    chlorphos = chlor / phos;
    ChlorPhosRatio.text = [NSString stringWithFormat:@"%.2f", chlorphos];
    [ChlorPhosRatio resignFirstResponder];
    [sender resignFirstResponder];
    
    
}

- (IBAction)keyboardisappear:(id)sender {
    [ChlorideValue resignFirstResponder];
    [PhosValue resignFirstResponder];
    
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
   // self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:255/255 green:102/255 blue:102/255 alpha:1];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
