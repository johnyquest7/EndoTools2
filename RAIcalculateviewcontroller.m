//
//  RAIcalculateviewcontroller.m
//  endotools
//
//  Created by Johnson Thomas on 11/23/12.
//  Copyright (c) 2012 Johnson Thomas. All rights reserved.
//

#import "RAIcalculateviewcontroller.h"

@interface RAIcalculateviewcontroller ()

@end

@implementation RAIcalculateviewcontroller

// connection variables to text fields
@synthesize grams;
@synthesize RAI;
@synthesize calc;
@synthesize dose;
//@synthesize textField;


// declaring variables

float gramvalue = 1;
float raivalue = 1;
float result;
NSString *dosetext;
float uCiretained;

// Action to hide the keypad when return key is pressed

-(IBAction)hidekeyboard:(id)sender;{
    [sender resignFirstResponder];
}

- (IBAction)keyboardisappear:(id)sender {
      [grams resignFirstResponder];
    [RAI resignFirstResponder];
    
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
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


// When calculate button is pressed, following method gets activated

- (IBAction)calculateRAIdose:(id)sender
{
    
    gramvalue =[grams.text intValue];   // extracts the intiger value from the string stored in the textfiled. 
    
    raivalue=[RAI.text intValue];       // extracts the intiger value from the string stored in the textfiled.
   
    
    /// picking the amout of radiation retained s per moderate dosage schedule for I131 therapy : adopted from thyroid manager .org
    
    if (gramvalue <21 && gramvalue>9)
        
        uCiretained = 80;
   
    else if (gramvalue <31 && gramvalue >20)
        
        uCiretained =90;
    
    else if (gramvalue <41 && gramvalue >30)
        
        uCiretained = 100;
    
    else if (gramvalue <51 && gramvalue >40)
        
        uCiretained = 120;
    
    else if (gramvalue <61 && gramvalue >50)
        
        uCiretained = 140;
    
    else if (gramvalue <71 && gramvalue >60)
        
        uCiretained = 150;
    
    else if (gramvalue <81 && gramvalue >70)
        
        uCiretained = 160;
    
    else if (gramvalue <91 && gramvalue >80)
        
        uCiretained = 170;
    
    else if (gramvalue <101 && gramvalue >90)
        
        uCiretained = 180;

    else if (gramvalue > 100)
        
        uCiretained = 200;
    else 
        
        uCiretained = 100;


    
    
    
    
    // debug subroutine - if user didn't enter any value in the textfileds and hit enter we will have 0/0. This routine is to prevent that from happening

    
            if (gramvalue > 0 || raivalue >0) {
                    result= (((gramvalue * uCiretained * 100)/raivalue) / 1000);
                } else {
                    result=0;
                }
    
    ///result = 6.6666;
    
    //NSLog(@ "ramvalue = %f", gramvalue);
   // NSLog(@"uCiretained = %f", uCiretained);
   // NSLog(@" raivalue = %f", raivalue);
   // NSLog(@"result %.2f", result);
    
    // writing result to the textfield
    
    dosetext = [NSString stringWithFormat:@"%.2f", result];
    dose.text= dosetext;
    
    
    
}
@end
