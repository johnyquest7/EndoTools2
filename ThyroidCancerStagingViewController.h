//
//  ThyroidCancerStagingViewController.h
//  endotools
//
//  Created by Johnson Thomas on 1/1/13.
//  Copyright (c) 2013 Johnson Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThyroidCancerStagingViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *TNMImage;

- (IBAction)ClickToZoom:(UIGestureRecognizer *)sender;

@end
