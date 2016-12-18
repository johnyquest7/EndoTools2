//
//  ThyroidCancerStagingViewController.m
//  endotools
//
//  Created by Johnson Thomas on 1/1/13.
//  Copyright (c) 2013 Johnson Thomas. All rights reserved.
//

#import "ThyroidCancerStagingViewController.h"

@interface ThyroidCancerStagingViewController ()

@end



@implementation ThyroidCancerStagingViewController
@synthesize TNMImage;



- (IBAction)ClickToZoom:(UIGestureRecognizer *)sender {
    
  
    
    if (sender.view.contentMode == UIViewContentModeScaleAspectFit)
        
        sender.view.contentMode=UIViewContentModeScaleToFill;
    else
        sender.view.contentMode =UIViewContentModeScaleAspectFit;
        
        
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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
