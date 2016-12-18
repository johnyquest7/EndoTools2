//
//  NoduleVolumeViewController.h
//  endotools
//
//  Created by Johnson Thomas on 11/27/12.
//  Copyright (c) 2012 Johnson Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoduleVolumeViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITextField *BaselineLength;
@property (nonatomic, strong) IBOutlet UITextField *BaselineWidth;
@property (nonatomic, strong) IBOutlet UITextField *BaselineDepth;
@property (nonatomic, strong) IBOutlet UITextField *LatestLength;
@property (nonatomic, strong) IBOutlet UITextField *LatestWidth;
@property (nonatomic, strong) IBOutlet UITextField *LatestDepth;
@property (nonatomic, strong) IBOutlet UITextField *BaselineVolume;
@property (nonatomic, strong) IBOutlet UITextField *LatestVolume;
@property (nonatomic, strong) IBOutlet UITextField *ChangeInVolume;

-(IBAction)CalculateChangeInVolume:(id)sender;
-(IBAction)hidekeyboard:(id)sender;
-(IBAction)keyboardisappear:(id)sender;

@end
