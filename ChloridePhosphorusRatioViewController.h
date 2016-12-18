//
//  ChloridePhosphorusRatioViewController.h
//  Endo Tools
//
//  Created by Johnson Thomas on 7/19/13.
//  Copyright (c) 2013 Johnson Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChloridePhosphorusRatioViewController : UIViewController


//@property (nonatomic, strong) IBOutlet UITextField *ChlorideValue;
//@property (nonatomic, strong) IBOutlet UITextField *PhosValue;
//@property (nonatomic, strong) IBOutlet UITextField *ChlorPhosRatio;
@property (strong, nonatomic) IBOutlet UITextField *ChlorideValue;
@property (strong, nonatomic) IBOutlet UITextField *PhosValue;

@property (strong, nonatomic) IBOutlet UITextField *ChlorPhosRatio;

-(IBAction)CalculateChlorPhosRatio :(id)sender;
-(IBAction)hidekeyboard:(id)sender;
-(IBAction)keyboardisappear:(id)sender;

@end
