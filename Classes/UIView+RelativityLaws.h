//
//  UIView+RelativityLaws.h
//  LayoutOfRelativity
//
//  Created by Josh Holtz on 6/6/13.
//
//

#import <UIKit/UIKit.h>

@interface UIView (RelativityLaws)

- (void)alignBelow:(UIView*)otherView withSpacing:(NSInteger)spacing;
- (void)alignAbove:(UIView*)otherView withSpacing:(NSInteger)spacing;
- (void)alignToChildBottom:(UIView*)otherView withSpacing:(NSInteger)spacing;

- (void)fitLabelHeight;
- (void)fitLabelHeightWithMinHeight:(float)minHeight;

@end
