#import "RNNNavigationBar.h"

@implementation RNNNavigationBar

- (void)layoutSubviews {
	[super layoutSubviews];
	self.layoutMargins = UIEdgeInsetsZero;

	for (UIView *view in self.subviews) {
		UIEdgeInsets margins = view.layoutMargins;
		CGRect frame = view.frame;
		frame.origin.x = -margins.left;
		frame.size.width += margins.left + margins.right;
		view.frame = frame;
	}
}

@end
