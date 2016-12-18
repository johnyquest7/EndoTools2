//
//  NoduleVolumeViewController.m
//  endotools
//
//  Created by Johnson Thomas on 11/27/12.
//  Copyright (c) 2012 Johnson Thomas. All rights reserved.
//

#import "NoduleVolumeViewController.h"

@interface NoduleVolumeViewController ()

@end

@implementation NoduleVolumeViewController

@synthesize BaselineLength;
@synthesize BaselineWidth;
@synthesize BaselineDepth;
@synthesize BaselineVolume;
@synthesize LatestLength;
@synthesize LatestWidth;
@synthesize LatestDepth;
@synthesize LatestVolume;
@synthesize ChangeInVolume;

float blength, bwidth, bdepth, llength, lwidth, ldepth, bvolume, lvolume , volumechange;




- (IBAction)keyboardisappear:(id)sender {
    [BaselineLength resignFirstResponder];
    [BaselineWidth resignFirstResponder];
    [BaselineDepth resignFirstResponder];
    [LatestLength resignFirstResponder];
    [LatestWidth resignFirstResponder];
    [LatestDepth resignFirstResponder];
    
    
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

-(IBAction)hidekeyboard:(id)sender;{
    [sender resignFirstResponder];
}

-(IBAction)CalculateChangeInVolume:(id)sender{
    
    blength= [BaselineLength.text floatValue];
    bwidth= [BaselineWidth.text floatValue];
    bdepth= [BaselineDepth.text floatValue];
    llength= [LatestLength.text floatValue];
    lwidth = [LatestWidth.text floatValue];
    ldepth = [LatestDepth.text floatValue];
    
    bvolume= 0.52 *(blength * bwidth * bdepth);
    lvolume = 0.52 * (llength * lwidth * ldepth);
    volumechange = (lvolume / bvolume) * 100 ;
    
    BaselineVolume.text = [NSString stringWithFormat:@"%f", bvolume];
    LatestVolume.text = [NSString stringWithFormat:@"%f", lvolume];
    ChangeInVolume.text = [NSString stringWithFormat:@"%.2f", volumechange];

    
    // for debugging
    
    //NSLog(@"blength %f", blength);
    //NSLog(@"bwidth %f", bwidth);
   // NSLog(@"bdepth %f", bdepth);
    
    //NSLog(@"Lvolume : %.2f", lvolume);
   // NSLog(@"bvolume : %.2f", bvolume);
    //NSLog( @" Change in volume: %.2f", volumechange);
    
}



@end
