//
//  BMICalculatorViewController.m
//  endotools
//
//  Created by Johnson Thomas on 12/29/12.
//  Copyright (c) 2012 Johnson Thomas. All rights reserved.
//

#import "BMICalculatorViewController.h"

@interface BMICalculatorViewController ()

@end


@implementation BMICalculatorViewController

@synthesize Units;
@synthesize Height1;
@synthesize Height2;
@synthesize Weight;
@synthesize Bmi;
@synthesize HeightLabel1;
@synthesize HeightLabel2;
@synthesize WeightLabel;

float lb, kg, feet, inch, meter1, meter2, totalmeter, bmivalue;
 NSInteger  metricvalue= 0;



-(IBAction)CalculateBMI:(id)sender;{
    
    
    switch (metricvalue) {
        case 0:
        {
            feet = [Height1.text floatValue];
            inch = [Height2.text floatValue];
            meter1 = feet * 0.3048;
            meter2 = inch * 0.0254;
            totalmeter = meter1 + meter2;
            
            lb =[Weight.text floatValue];
            kg = lb / 2.2;
            bmivalue = kg / (totalmeter * totalmeter);
            Bmi.text = [NSString stringWithFormat:@"%.2f",bmivalue];
            
          
            
        }
            break;
            
        case 1:
        {
            totalmeter = [Height1.text floatValue];
            kg = [Weight.text floatValue];
            bmivalue = kg / (totalmeter * totalmeter);
            Bmi.text = [NSString stringWithFormat:@"%.2f",bmivalue];
            
            //NSLog(@" Metric");
            
            
        }
            break;
            
        default:
            break;
    }
    
       
}

-(IBAction)hidekeyboard:(id)sender;{
    [sender resignFirstResponder];
    
}

-(IBAction)UnitsChanged:(id)sender;{
    switch (self.Units.selectedSegmentIndex) {
        case 0:
        {
           Bmi.text = @"";
            HeightLabel1.text = @"Feet";
            Height1.text =@"";
            Height2.text =@"";
           [HeightLabel1 setHidden:NO];
            [Height2 setHidden:NO];
            [HeightLabel2 setHidden:NO];
           HeightLabel2.text = @"Inches";
           WeightLabel.text = @"Pounds";
            Weight.text =@"";
            metricvalue=0;
        }
            break;
        case 1:
            
        {
           Height1.text  = @"";
            Height2.text = @"";
            Weight.text  = @"";
            Bmi.text = @"";
            
            HeightLabel1.text = @"Meters";
            [HeightLabel2 setHidden:YES];
            [Height2 setHidden:YES];
            WeightLabel.text = @"Kilogram";
            metricvalue = 1;
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
   //self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:255/255 green:102/255 blue:102/255 alpha:1];
    //self.navigationController.navigationBar.tintColor = [UIColor redColor];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)keyboardisappear:(id)sender {
    [Height1 resignFirstResponder];
    [Height2  resignFirstResponder];
    [Weight  resignFirstResponder];

    
}


@end
