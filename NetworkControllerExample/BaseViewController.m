//
//  BaseViewController.m
//  NetworkControllerExample
//
//  Created by Muhammad Waris Ali on 26/09/2013.
//  Copyright (c) 2013 Muhammad Waris Ali. All rights reserved.
//

#import "BaseViewController.h"
#import "AppDelegate.h"
#import "NetworkErrorViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated
{
    id delegate = [[UIApplication sharedApplication]delegate];
    [delegate setActiveViewController:self];
    [super viewDidAppear:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)networkStatusChanged:(BOOL)connection
{
    if(connection)
    {
        [self.navigationController popViewControllerAnimated:YES];
    }
    else
    {
    errorController=  [[NetworkErrorViewController alloc]init];
        [self.navigationController pushViewController:errorController animated:YES];
    }
}
@end
