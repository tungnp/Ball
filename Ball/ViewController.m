//
//  ViewController.m
//  Ball
//
//  Created by stevie nguyen on 3/29/13.
//  Copyright (c) 2013 tung nguyen. All rights reserved.
//

#import "ViewController.h"
#import "BallImageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.ballImageView = [[BallImageView alloc]initWithImage:[UIImage imageNamed:@"ball.png"]];
    [self.secondView addSubview: self.ballImageView];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.025
                                                  target: self.ballImageView
                                                selector:@selector(updateBallCenter)
                                                userInfo:nil
                                                 repeats:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)slowDown:(UIButton *)sender {
    if (self.ballImageView.status == MOVING){
        [self.ballImageView updateSpeed: self.ballImageView.speed -1];
    }
}

- (IBAction)speedUp:(UIButton *)sender {
    if (self.ballImageView.status == MOVING) {
        [self.ballImageView updateSpeed: self.ballImageView.speed +1];
    }
}
- (IBAction)start:(UIButton *)sender {
    if (self.ballImageView.status == STAYSTILL) {
        self.ballImageView.status = MOVING;
    }
}
- (IBAction)dropDown:(id)sender {
    if (self.ballImageView.status == MOVING) {
        self.ballImageView.status = DROPPING;
    }

}
- (IBAction)sliderChange:(UISlider *)sender {
    self.ballImageView.xStretch = 2*sender.value;
    self.ballImageView.yStretch = 2*(1-sender.value);
}


@end
