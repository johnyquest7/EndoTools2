//
//  RatiosPumpViewController.m
//  
//
//  Created by Johnson Thomas on 2/8/16.
//
//

#import "RatiosPumpViewController.h"

//@implementation RatiosPumpViewController

//@end


@implementation RatiosPumpViewController
@synthesize TotalInsulin;
@synthesize ICRatio;
@synthesize ISF;

float totalinsulin, icratio, isf, firstcalc, secondcalc;


-(IBAction)CalculateRatios:(id)sender;{
    
    totalinsulin = [TotalInsulin.text floatValue];
    
    icratio = (500 / totalinsulin);
    isf= (1800 / totalinsulin);
    
    //firstcalc = (4 - albumin);
   // secondcalc = (.8 * firstcalc);
    //correctedcalcium = secondcalc + calcium;
    
    ICRatio.text = [NSString stringWithFormat:@"%.2f", icratio];
    ISF.text = [NSString stringWithFormat:@"%.2f", isf];
    [TotalInsulin resignFirstResponder];
}

- (IBAction)keyboardisappear:(id)sender {
    [TotalInsulin resignFirstResponder];
    // [Albumin resignFirstResponder];
    
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
