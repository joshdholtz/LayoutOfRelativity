//
//  ViewController.m
//  LayoutOfRelativity
//
//  Created by Josh Holtz on 4/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

#import "RelativityLaws.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize lblOne = _lblOne;
@synthesize lblTwo = _lblTwo;
@synthesize viewLblWrapper = _viewLblWrapper;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [_lblTwo setText:@"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim."];
    
    [RelativityLaws labelFitHeight:_lblOne];
    [RelativityLaws labelFitHeight:_lblTwo];
    
    [RelativityLaws alignView:_lblTwo below:_lblOne withMargin:10];
    [RelativityLaws alignParentBottom:_viewLblWrapper toView:_lblTwo withPadding:10];
    
}

- (void)viewDidUnload
{
    [self setLblOne:nil];
    [self setLblTwo:nil];
    [self setViewLblWrapper:nil];
    [super viewDidUnload];
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
