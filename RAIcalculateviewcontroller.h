//
//  RAIcalculateviewcontroller.h
//  endotools
//
//  Created by Johnson Thomas on 11/23/12.
//  Copyright (c) 2012 Johnson Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RAIcalculateviewcontroller : UIViewController


@property (nonatomic, strong) IBOutlet UITextField *grams;
@property (nonatomic, strong) IBOutlet UITextField *RAI;
@property(nonatomic, strong)  IBOutlet UIButton *calc;
@property(nonatomic, strong)  IBOutlet UITextField *dose;



-(IBAction)calculateRAIdose:(id)sender;
-(IBAction)hidekeyboard:(id)sender;
-(IBAction)keyboardisappear:(id)sender;



@end
