//
//  NetworkErrorViewController.m
//  NetworkControllerExample
//
//  Created by Muhammad Waris Ali on 26/09/2013.
//  Copyright (c) 2013 Muhammad Waris Ali. All rights reserved.
//

#import "NetworkErrorViewController.h"

@interface NetworkErrorViewController ()

@end

@implementation NetworkErrorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView
{
    CGRect applicationFrame = [[UIScreen mainScreen] applicationFrame];
    UIView *contentView = [[UIView alloc] initWithFrame:applicationFrame];
    contentView.backgroundColor = [UIColor whiteColor]; 
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 50, 320, 120)];
    label.text = @"No Internet Connection available";
    [contentView addSubview:label];
    self.view = contentView;
    self.navigationItem.hidesBackButton = YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
