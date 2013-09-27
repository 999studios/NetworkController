//
//  BaseViewController.h
//  NetworkControllerExample
//
//  Created by Muhammad Waris Ali on 26/09/2013.
//  Copyright (c) 2013 Muhammad Waris Ali. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NetworkErrorViewController.h"

@interface BaseViewController : UIViewController<UIApplicationDelegate>
{
    NetworkErrorViewController *errorController;
}
- (void)networkStatusChanged:(BOOL)connection;
- (void)git;
@end
