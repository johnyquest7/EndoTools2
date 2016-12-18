//
//  RatiosPumpViewController.h
//  
//
//  Created by Johnson Thomas on 2/8/16.
//
//

#import <UIKit/UIKit.h>

@interface RatiosPumpViewController : UIViewController



@property (nonatomic, strong) IBOutlet UITextField *TotalInsulin;
@property (nonatomic, strong) IBOutlet UITextField *ICRatio;
@property (nonatomic, strong) IBOutlet UITextField *ISF;


-(IBAction)CalculateRatios :(id)sender;
-(IBAction)hidekeyboard:(id)sender;
-(IBAction)keyboardisappear:(id)sender;

@end
