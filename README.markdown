LayoutOfRelativity
==========

Easily turn this...

![The before](http://i.imgur.com/YooX9.png)

Into this...

![The after](http://i.imgur.com/cOLsO.png)

### Example usage
	[RelativityLaws labelFitHeight:_lblOne];
	[RelativityLaws labelFitHeight:_lblTwo];

	[RelativityLaws alignView:_lblTwo below:_lblOne withMargin:10];
	[RelativityLaws alignParentBottom:_viewLblWrapper toView:_lblTwo withPadding:10];
