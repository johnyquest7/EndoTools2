//
//  BMICalculatorViewController.h
//  endotools
//
//  Created by Johnson Thomas on 12/29/12.
//  Copyright (c) 2012 Johnson Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BMICalculatorViewController : UIViewController

@property (strong, nonatomic) IBOutlet UISegmentedControl *Units;

@property (strong, nonatomic) IBOutlet UITextField *Height1;
@property (strong, nonatomic) IBOutlet UITextField *Height2;
@property (strong, nonatomic) IBOutlet UITextField *Weight;
@property (strong, nonatomic) IBOutlet UITextField *Bmi;
@property (strong, nonatomic) IBOutlet UILabel *HeightLabel1;
@property (strong, nonatomic) IBOutlet UILabel *HeightLabel2;
@property (strong, nonatomic) IBOutlet UILabel *WeightLabel;

//@property (nonatomic, strong) IBOutlet UISegmentedControl *Units;
//@property (nonatomic, strong) IBOutlet UITextField *Height1;
//@property (nonatomic, strong) IBOutlet UITextField *Height2;
//@property (nonatomic, strong) IBOutlet UITextField *Weight;
//@property (nonatomic, strong) IBOutlet UITextField *Bmi;
//@property (weak, nonatomic) IBOutlet UILabel *HeightLabel1;
//@property (weak, nonatomic) IBOutlet UILabel *HeightLabel2;
//@property (weak, nonatomic) IBOutlet UILabel *WeightLabel;

-(IBAction)CalculateBMI :(id)sender;
-(IBAction)hidekeyboard:(id)sender;
-(IBAction)UnitsChanged:(id)sender;

-(IBAction)keyboardisappear:(id)sender;

@end
