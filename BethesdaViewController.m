//
//  BethesdaViewController.m
//  Endo Tools
//
//  Created by Johnson Thomas on 7/15/13.
//  Copyright (c) 2013 Johnson Thomas. All rights reserved.
//

#import "BethesdaViewController.h"

@interface BethesdaViewController ()

@end

@implementation BethesdaViewController
@synthesize webview;


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
    NSString *path = [[ NSBundle mainBundle] pathForResource:@"table" ofType:@"html" ];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webview loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
