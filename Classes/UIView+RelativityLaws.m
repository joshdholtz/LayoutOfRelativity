//
//  UIView+RelativityLaws.m
//  LayoutOfRelativity
//
//  Created by Josh Holtz on 6/6/13.
//
//

#import "UIView+RelativityLaws.h"

@implementation UIView (RelativityLaws)

- (void)alignBelow:(UIView*)otherView withSpacing:(NSInteger)spacing {
    
    CGRect newViewFrame = CGRectMake(self.frame.origin.x, otherView.frame.origin.y + otherView.frame.size.height + spacing, self.frame.size.width, self.frame.size.height);
    
    [self setFrame:newViewFrame];
}

- (void)alignAbove:(UIView*)otherView withSpacing:(NSInteger)spacing {
    
    CGRect newViewFrame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, (otherView.frame.origin.y - self.frame.origin.y) - spacing);
    
    [self setFrame:newViewFrame];
}

- (void)alignToChildBottom:(UIView*)otherView withSpacing:(NSInteger)spacing {
    
    CGRect newViewFrame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, otherView.frame.origin.y + otherView.frame.size.height + spacing);

    [self setFrame:newViewFrame];
}

- (void)fitLabelHeight {
    [self fitLabelHeightWithMinHeight:0];
}

- (void)fitLabelHeightWithMinHeight:(float)minHeight {
    if ([self isKindOfClass:[UILabel class]]) {
        CGSize maximumLabelSize = CGSizeMake(self.frame.size.width,9999);
        
        UILabel *label = (UILabel*) self;
        CGSize expectedLabelSize = [label.text sizeWithFont:label.font constrainedToSize:maximumLabelSize lineBreakMode:label.lineBreakMode];
        
        if (expectedLabelSize.height < minHeight) {
            expectedLabelSize.height = minHeight;
        }
        
        CGRect newViewFrame = CGRectMake(self.frame.origin.x, self.frame.origin.y, maximumLabelSize.width, expectedLabelSize.height);
        
        self.frame = newViewFrame;
    }
}

@end
