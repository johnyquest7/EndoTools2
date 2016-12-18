//
//  PoundToKgViewCOntroller.h
//  endotools
//
//  Created by Johnson Thomas on 12/29/12.
//  Copyright (c) 2012 Johnson Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PoundToKgViewCOntroller : UIViewController

@property (nonatomic, strong) IBOutlet UITextField *Pound;
@property (nonatomic, strong) IBOutlet UITextField *Kilogram;


-(IBAction)ConvertPoundToKG :(id)sender;
-(IBAction)hidekeyboard:(id)sender;


-(IBAction)keyboardisappear:(id)sender;

@end
