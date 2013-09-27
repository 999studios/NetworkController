//
//  AppDelegate.m
//  NetworkControllerExample
//
//  Created by Muhammad Waris Ali on 26/09/2013.
//  Copyright (c) 2013 Muhammad Waris Ali. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize activeViewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(checkNetworkStatus:) name:kReachabilityChangedNotification object:nil];
    internetReachability = [Reachability reachabilityForInternetConnection];
    [internetReachability startNotifier];

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

- (void)checkNetworkStatus:(NSNotification *)notification
{
    NetworkStatus networkStatus = [internetReachability currentReachabilityStatus];
    switch (networkStatus) {
        case NotReachable:
        {
            NSLog(@"The internet is down.");
            [activeViewController networkStatusChanged:NO];
            break;
        }
        case ReachableViaWiFi:
        {
            NSLog(@"The internet is working via WIFI.");
            [activeViewController networkStatusChanged:YES];
            break;
        }
        case ReachableViaWWAN:
        {
            NSLog(@"The internet is working via WWAN.");
            [activeViewController networkStatusChanged:YES];
            break;
        }
        default:
            break;
    }
}
@end
