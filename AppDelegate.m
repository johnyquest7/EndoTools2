//
//  AppDelegate.m
//  endotools
//
//  Created by Johnson Thomas on 11/22/12.
//  Copyright (c) 2012 Johnson Thomas. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)customizeAppearance
{
    UIColor *primaryColor;
    UIColor *accentColor;
    UIColor *backgroundColor;
    UIColor *tableBackgroundColor;
    UIColor *cellBackgroundColor;
    UIColor *separatorColor;

    if (@available(iOS 13.0, *)) {
        primaryColor = [UIColor systemIndigoColor];
        accentColor = [UIColor systemTealColor];
        backgroundColor = [UIColor systemBackgroundColor];
        tableBackgroundColor = [UIColor systemGroupedBackgroundColor];
        cellBackgroundColor = [UIColor secondarySystemGroupedBackgroundColor];
        separatorColor = [UIColor separatorColor];
    } else {
        primaryColor = [UIColor colorWithRed:0.16f green:0.2f blue:0.39f alpha:1.0f];
        accentColor = [UIColor colorWithRed:0.02f green:0.47f blue:0.60f alpha:1.0f];
        backgroundColor = [UIColor whiteColor];
        tableBackgroundColor = [UIColor colorWithWhite:0.96f alpha:1.0f];
        cellBackgroundColor = [UIColor whiteColor];
        separatorColor = [UIColor colorWithWhite:0.8f alpha:1.0f];
    }

    UINavigationBar *navigationBarAppearance = [UINavigationBar appearance];
    if (@available(iOS 13.0, *)) {
        UINavigationBarAppearance *appearance = [[UINavigationBarAppearance alloc] init];
        [appearance configureWithOpaqueBackground];
        appearance.backgroundColor = primaryColor;
        appearance.titleTextAttributes = @{ NSForegroundColorAttributeName : UIColor.whiteColor };
        appearance.largeTitleTextAttributes = @{ NSForegroundColorAttributeName : UIColor.whiteColor };

        navigationBarAppearance.tintColor = UIColor.whiteColor;
        navigationBarAppearance.standardAppearance = appearance;
        navigationBarAppearance.compactAppearance = appearance;
        navigationBarAppearance.scrollEdgeAppearance = appearance;
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 150000
        if (@available(iOS 15.0, *)) {
            navigationBarAppearance.compactScrollEdgeAppearance = appearance;
        }
#endif
    } else {
        [navigationBarAppearance setBarTintColor:primaryColor];
        [navigationBarAppearance setTintColor:[UIColor whiteColor]];
        [navigationBarAppearance setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
        navigationBarAppearance.translucent = NO;
    }

    [[UIView appearance] setTintColor:accentColor];
    [[UITableView appearance] setBackgroundColor:tableBackgroundColor];
    [[UITableView appearance] setSeparatorColor:separatorColor];
    [[UITableViewCell appearance] setBackgroundColor:cellBackgroundColor];

#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 150000
    if (@available(iOS 15.0, *)) {
        [[UITableView appearance] setSectionHeaderTopPadding:0.0f];
    }
#endif

    if (self.window != nil) {
        self.window.backgroundColor = backgroundColor;
        self.window.tintColor = accentColor;
    }
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
   
    [self customizeAppearance];
    // Override point for customization after application launch.
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
