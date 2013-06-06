LayoutOfRelativity
==========

Easily turn this...

![The before](http://i.imgur.com/YooX9.png)

Into this...

![The after](http://i.imgur.com/cOLsO.png)

### Example usage
```objc
#import "UIView+RelativityLaws.h"

// Fits label to height of text to but keeps initial width
[_lblOne fitLabelHeight];
[_lblTwo fitLabelHeight];

// Moves _lblTwo to the bottom of _lblOne
[_lblTwo alignBelow:_lblOne withSpacing:10];

// Moves the bottom of _viewLblWrapper to bottom of _lblTwo
[_viewLblWrapper alignToChildBottom:_lblTwo withSpacing:10];

```
