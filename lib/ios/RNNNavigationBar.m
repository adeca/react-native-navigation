#import "RNNNavigationBar.h"

@implementation RNNNavigationBar

- (void)layoutSubviews {
	[super layoutSubviews];

	for (UIView *view in self.subviews) {
		view.layoutMargins = UIEdgeInsetsZero;
	}
}

@end
