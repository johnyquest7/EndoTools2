//
//  SteroidConverterViewController.h
//  endotools
//
//  Created by Johnson Thomas on 12/13/12.
//  Copyright (c) 2012 Johnson Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SteroidConverterViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIPickerView *thePickerView;
@property (weak, nonatomic) IBOutlet UITextField *firstSteroid;
@property (weak, nonatomic) IBOutlet UITextField *secondSteroid;
@property (weak, nonatomic) IBOutlet UITextField *dose;
@property (weak, nonatomic) IBOutlet UITextField *finaldose;


@property (strong, nonatomic) NSArray *oneColumnList;

@property (strong, nonatomic) NSArray *secondColumnList;

-(IBAction)hidekeyboard:(id)sender;
-(IBAction)keyboardisappear:(id)sender;

@end
