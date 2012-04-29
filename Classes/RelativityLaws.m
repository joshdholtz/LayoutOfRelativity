//
//  RelativityLaws.m
//  LayoutOfRelativity
//
//  Created by Josh Holtz on 4/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RelativityLaws.h"

@implementation RelativityLaws

+ (void)labelFitHeight:(UILabel*)label {
    CGSize maximumLabelSize = CGSizeMake(label.frame.size.width,9999);
    CGSize expectedLabelSize = [label.text sizeWithFont:label.font constrainedToSize:maximumLabelSize lineBreakMode:label.lineBreakMode];
    
    CGRect newFrame = CGRectMake(label.frame.origin.x, label.frame.origin.y, maximumLabelSize.width, expectedLabelSize.height);
    label.frame = newFrame;
}

+ (void)alignView:(UIView*)view below:(UIView*)otherView withMargin:(NSInteger)margin {
    
    CGRect newViewFrame = CGRectMake(view.frame.origin.x, otherView.frame.origin.y + otherView.frame.size.height + margin, view.frame.size.width, view.frame.size.height);
    
    [view setFrame:newViewFrame];
}

+ (void)alignViewTop:(UIView*)view below:(UIView*)otherView withMargin:(NSInteger)margin {
    
    NSInteger height = (view.frame.origin.y + view.frame.size.height)- otherView.frame.size.height - margin;
    
    CGRect newViewFrame = CGRectMake(view.frame.origin.x, otherView.frame.origin.y + otherView.frame.size.height + margin, view.frame.size.width, height);
    
    [view setFrame:newViewFrame];
}

+ (void)alignParentBottom:(UIView*)view toView:(UIView*)otherView withPadding:(NSInteger)padding {
    
    CGRect newViewFrame = CGRectMake(view.frame.origin.x, view.frame.origin.y, view.frame.size.width, otherView.frame.origin.y + otherView.frame.size.height + padding);
    
    [view setFrame:newViewFrame];
}

@end
