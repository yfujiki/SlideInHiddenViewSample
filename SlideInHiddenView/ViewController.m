//
//  ViewController.m
//  SlideInHiddenView
//
//  Created by Yuichi Fujiki on 1/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize leftVC = _leftVC, rightVC = _rightVC, slideInVC = _slideInVC;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.rightVC = [[UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil] instantiateViewControllerWithIdentifier:@"rightVC"];
    self.rightVC.view.frame = CGRectMake(384, 0, 640, 748);        
    self.rightVC.view.backgroundColor = [UIColor redColor];
    [self addChildViewController:self.rightVC];
    [self.view addSubview:self.rightVC.view];
    [self.rightVC didMoveToParentViewController:self];

    self.slideInVC = [[UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil] instantiateViewControllerWithIdentifier:@"slideInVC"];
    self.slideInVC.view.frame = CGRectMake(0, 0, 404, 748);
    self.slideInVC.view.backgroundColor = [UIColor greenColor];    
    [self addChildViewController:self.slideInVC];
    [self.view addSubview:self.slideInVC.view];
    [self.slideInVC didMoveToParentViewController:self];

    self.leftVC = [[UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil] instantiateViewControllerWithIdentifier:@"leftVC"];
    self.leftVC.view.frame = CGRectMake(0, 0, 384, 748);
    self.leftVC.view.backgroundColor = [UIColor blueColor];        
    [self addChildViewController:self.leftVC];
    [self.view addSubview:self.leftVC.view];
    [self.leftVC didMoveToParentViewController:self];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
