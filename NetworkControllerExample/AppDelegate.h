//
//  AppDelegate.h
//  NetworkControllerExample
//
//  Created by Muhammad Waris Ali on 26/09/2013.
//  Copyright (c) 2013 Muhammad Waris Ali. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reachability.h"
#import "BaseViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    Reachability *internetReachability;
}
@property (strong, nonatomic) UIWindow *window;
@property (strong,nonatomic)  BaseViewController *activeViewController;

- (void)checkNetworkStatus:(NSNotification *)notification;

@end
