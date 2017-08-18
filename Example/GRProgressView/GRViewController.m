//
//  GRViewController.m
//  GRProgressView
//
//  Created by Assuner-Lee on 08/18/2017.
//  Copyright (c) 2017 Assuner-Lee. All rights reserved.
//

#import "GRViewController.h"
#import <GRProgressView/GRProgressView.h>

@interface GRViewController ()

@end

@implementation GRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	 GRProgressView *view1 = [[GRProgressView alloc] initWithFrame:CGRectMake(30, 100, 50, 5)];
  view1.layer.cornerRadius = 2.5;
  view1.trackTintColor = [UIColor blueColor];
  view1.progressTintColor = [UIColor redColor];
  [self.view addSubview:view1];
  [view1 setProgress:0.75 animateWithDuration:1 delay:1];
  
  GRProgressView *view2 = [[GRProgressView alloc] initWithFrame:CGRectMake(30, 150, 150, 10)];
  view2.layer.cornerRadius = 5;
  view2.trackImage = [UIImage imageNamed:@"Image1"];
  view2.progressImage = [UIImage imageNamed:@"Image2"];
  [self.view addSubview:view2];
  [view2 setProgress:0.75 animateWithDuration:1 delay:1];
  
  GRProgressView *view3 = [[GRProgressView alloc] initWithFrame:CGRectMake(30, 200, 200, 20)];
  view3.layer.cornerRadius = 0;
  view3.trackTintColor = [UIColor blueColor];
  view3.progressTintColor = [UIColor redColor];
  [self.view addSubview:view3];
  [view3 setProgress:0.9];
  
  GRProgressView *view4 = [[GRProgressView alloc] initWithFrame:CGRectMake(30, 250, 200, 20)];
  view4.layer.cornerRadius = 10;
  view4.trackImage = [UIImage imageNamed:@"Image3"];
  view4.progressImage = [UIImage imageNamed:@"Image4"];
  [self.view addSubview:view4];
  [view4 setProgress:0.8 animateWithDuration:2 delay:1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
