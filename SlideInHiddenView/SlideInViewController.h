//
//  SlideInViewController.h
//  SlideInHiddenView
//
//  Created by Yuichi Fujiki on 1/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SlideInViewController : UIViewController

@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *leftSwipeGR;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *rightSwipeGR;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *upSwipeGR;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *downSwipeGR;

- (IBAction)leftSwipeActionRecognized:(id)sender;
- (IBAction)rightSwipeActionRecognized:(id)sender;
- (IBAction)downSwipeActionRecognized:(id)sender;
- (IBAction)upSwipeActionRecognized:(id)sender;

@end
