//
//  ViewController.h
//  Ball
//
//  Created by stevie nguyen on 3/29/13.
//  Copyright (c) 2013 tung nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BallImageView.h"
@interface ViewController : UIViewController
@property (strong, nonatomic) NSTimer* timer;
@property (weak, nonatomic) IBOutlet UIView *secondView;
@property (strong, nonatomic) BallImageView* ballImageView;
@end
