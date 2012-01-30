//
//  ViewController.h
//  SlideInHiddenView
//
//  Created by Yuichi Fujiki on 1/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "LeftViewController.h"
#import "RightViewController.h"
#import "SlideInViewController.h"

@interface ViewController : UIViewController

@property (nonatomic, retain) IBOutlet LeftViewController * leftVC;
@property (nonatomic, retain) IBOutlet RightViewController * rightVC;
@property (nonatomic, retain) IBOutlet SlideInViewController * slideInVC;

@end
