//
//  BallImageView.h
//  Ball
//
//  Created by stevie nguyen on 3/29/13.
//  Copyright (c) 2013 tung nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>
#define STAYSTILL 0
#define MOVING 1
#define DROPPING 2


@interface BallImageView : UIImageView

@property (nonatomic) int speed;
@property (nonatomic) int status;
@property (nonatomic) float xStretch;
@property (nonatomic) float yStretch;

- (void) updateBallCenter;
- (void) updateSpeed: (int) speed;

@end
