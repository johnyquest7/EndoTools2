//
//  SteroidConverterViewController.m
//  endotools
//
//  Created by Johnson Thomas on 12/13/12.
//  Copyright (c) 2012 Johnson Thomas. All rights reserved.
//

#import "SteroidConverterViewController.h"

@interface SteroidConverterViewController ()

@end

@implementation SteroidConverterViewController;
@synthesize thePickerView;
@synthesize firstSteroid;
@synthesize secondSteroid;
@synthesize oneColumnList;
@synthesize secondColumnList;
@synthesize dose;
@synthesize finaldose;

float potency1=4, potency2=4, SteroidDose, dosevalue=1;



- (void)viewDidLoad
{
       thePickerView.showsSelectionIndicator = TRUE;
    
        
    //self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:255/255 green:102/255 blue:102/255 alpha:1];
    
        //One column array example
    self.oneColumnList=[[NSArray alloc] initWithObjects:@"hydrocortisone",@"cortisone",@"prednisone",@"prednisolone",@"triamcinolone",@"methylprednisolone",@"dexamethasone",@"betamethasone", nil];
    
    //Two column array example
    self.secondColumnList=[[NSArray alloc] initWithObjects: @"hydrocortisone",@"cortisone",@"prednisone",@"prednisolone",@"triamcinolone",@"methylprednisolone",@"dexamethasone",@"betamethasone", nil];
    
    
    
   [super viewDidLoad];
  
   
    [self.thePickerView selectRow:2 inComponent:0 animated:NO];
    [self.thePickerView selectRow:2 inComponent:1 animated:NO];
}


- (void)viewDidUnload
{
    [self setThePickerView:nil];
    //[self setfirstSteroid:nil];
    // [self setsecondSteroid:nil];
        
    
    
    
    [super viewDidUnload];
    
}

- (IBAction)keyboardisappear:(id)sender {
    [dose resignFirstResponder];
    
    
}

-(IBAction)hidekeyboard:(id)sender;{
    [sender resignFirstResponder];
    
   // NSLog( @"%f", potency2);
    
    dosevalue = [dose.text floatValue];
    
    SteroidDose = dosevalue * (potency1 / potency2);
    
    //NSLog(@"Dose converted value");
    
    finaldose.text = [NSString stringWithFormat:@"%.2f", SteroidDose];
    
    //NSLog(@"%f",SteroidDose);

   // finaldose.text= @"it";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (component == 0) {
        return [oneColumnList count];
        
    }
    
    return [secondColumnList count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2; // or 2 or more
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row
            forComponent:(NSInteger)component
{
    
    if (component == 0) {
        return [oneColumnList objectAtIndex:row];
        
    }
    
    return [secondColumnList objectAtIndex:row];
    
}



- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (component == 0) {
        
        self.firstSteroid.text=[oneColumnList objectAtIndex:row];
        
        
        switch (row) {
            case 0:
                
            { potency1 = 1 ;}
                break;
                
            case 1:
                
            { potency1 = 0.8 ;}
                break;
                
            case 2:
                
            { potency1 = 4;}
                break;
                
            case 3:
                
            { potency1 = 4 ;}
                break;
                
            case 4:
                
            { potency1 = 5 ;}
                break;
                
            case 5:
                
            { potency1 = 5 ;}
                break;
                
            case 6:
                
            { potency1 = 25 ;}
                break;
                
            case 7:
                
            { potency1 = 30 ;}
                break;
                
            default:
                break;
        }
        
        //NSLog( @"%f", potency1);
        
        dosevalue = [dose.text floatValue];
        SteroidDose = dosevalue * (potency1 / potency2);
       // NSLog(@"Dose converted value");
       // NSLog(@"%f",SteroidDose);
        finaldose.text = [NSString stringWithFormat:@"%.2f", SteroidDose];
        return;
    }
    else
    {
        self.secondSteroid.text=[secondColumnList objectAtIndex:row];
        
        switch (row) {
            case 0:
                
            { potency2 = 1 ;}
                break;
                
            case 1:
                
            { potency2 = 0.8 ;}
                break;
                
            case 2:
                
            { potency2 = 4;}
                break;
                
            case 3:
                
            { potency2 = 4 ;}
                break;
                
            case 4:
                
            { potency2 = 5 ;}
                break;
                
            case 5:
                
            { potency2 = 5 ;}
                break;
                
            case 6:
                
            { potency2 = 25 ;}
                break;
                
            case 7:
                
            { potency2 = 30 ;}
                break;
                
            default:
                break;
        }
        
       // NSLog( @"%f", potency2);
        dosevalue = [dose.text floatValue];
        SteroidDose = dosevalue * (potency1 / potency2);
       // NSLog(@"Dose converted value");
        finaldose.text = [NSString stringWithFormat:@"%.2f", SteroidDose];
       // NSLog(@"%f",SteroidDose);
    }
    
}



@end

