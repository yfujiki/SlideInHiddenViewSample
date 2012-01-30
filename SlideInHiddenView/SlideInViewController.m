//
//  SlideInViewController.m
//  SlideInHiddenView
//
//  Created by Yuichi Fujiki on 1/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SlideInViewController.h"

@implementation SlideInViewController {
    BOOL slidedOut;
}
@synthesize upSwipeGR;
@synthesize downSwipeGR;

@synthesize leftSwipeGR;
@synthesize rightSwipeGR;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addGestureRecognizer:leftSwipeGR];
    [self.view addGestureRecognizer:rightSwipeGR]; 
    [self.view addGestureRecognizer:upSwipeGR];
    [self.view addGestureRecognizer:downSwipeGR];    
}

- (void)viewDidUnload
{
    [self.view removeGestureRecognizer:leftSwipeGR];
    [self.view removeGestureRecognizer:rightSwipeGR];    
    [self.view removeGestureRecognizer:upSwipeGR];
    [self.view removeGestureRecognizer:downSwipeGR];    
    
    [self setLeftSwipeGR:nil];
    [self setRightSwipeGR:nil];        
    [self setUpSwipeGR:nil];
    [self setDownSwipeGR:nil];
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    if(UIInterfaceOrientationIsPortrait(toInterfaceOrientation))
    {
        self.view.frame = CGRectMake(0, 0, 768, 384);
    }
    else
    {
        self.view.frame = CGRectMake(0, 0, 404, 748);        
    }
}

- (IBAction)rightSwipeActionRecognized:(id)sender {

    if(UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation))
    {
        [UIView animateWithDuration:0.5 animations:^{
            self.view.frame = (CGRect){384, self.view.frame.origin.y, self.view.frame.size};
        }];
        slidedOut = YES;
    }
}

- (IBAction)leftSwipeActionRecognized:(id)sender {
    if(UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation))
    {
        [UIView animateWithDuration:0.5 animations:^{
            self.view.frame = (CGRect){0, self.view.frame.origin.y, self.view.frame.size};
        }];
        slidedOut = NO;
    }
}

- (IBAction)upSwipeActionRecognized:(id)sender {
    
    if(UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation))
    {
        [UIView animateWithDuration:0.5 animations:^{
            self.view.frame = (CGRect){self.view.frame.origin.x, 0, self.view.frame.size};
        }];
        slidedOut = YES;
    }
}

- (IBAction)downSwipeActionRecognized:(id)sender {
    if(UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation))
    {
        [UIView animateWithDuration:0.5 animations:^{
            self.view.frame = (CGRect){self.view.frame.origin.x, 364, self.view.frame.size};
        }];
        slidedOut = NO;
    }
}

@end
