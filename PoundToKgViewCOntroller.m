//
//  PoundToKgViewCOntroller.m
//  endotools
//
//  Created by Johnson Thomas on 12/29/12.
//  Copyright (c) 2012 Johnson Thomas. All rights reserved.
//

#import "PoundToKgViewCOntroller.h"

@interface PoundToKgViewCOntroller ()

@end

@implementation PoundToKgViewCOntroller

@synthesize Pound;
@synthesize Kilogram;

float lb, kg;

-(IBAction)ConvertPoundToKG:(id)sender;{
    
    
    lb =[Pound.text floatValue];
    kg = lb / 2.2;
    Kilogram.text = [NSString stringWithFormat:@"%.2f", kg];
    
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
