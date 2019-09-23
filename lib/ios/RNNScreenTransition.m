#import "RNNScreenTransition.h"

@implementation RNNScreenTransition

- (instancetype)init {
	return [self initWithDict:@{}];
}

- (instancetype)initWithDict:(NSDictionary *)dict {
	self = [super init];

	self.topBar = [[RNNElementTransitionOptions alloc] initWithDict:dict[@"topBar"]];
	self.content = [[RNNElementTransitionOptions alloc] initWithDict:dict[@"content"]];
	self.bottomTabs = [[RNNElementTransitionOptions alloc] initWithDict:dict[@"bottomTabs"]];
	self.enable = [BoolParser parse:dict key:@"enabled"];
	self.waitForRender = [BoolParser parse:dict key:@"waitForRender"];

	return self;
}

- (instancetype)initWithContentTransition:(RNNElementTransitionOptions*)content {
	self = [self init];
	
	self.content = content;
	self.enable = content.enable;
	self.waitForRender = content.waitForRender;
	
	return self;
}

- (BOOL)hasCustomAnimation {
	return (self.topBar.hasAnimation || self.content.hasAnimation || self.bottomTabs.hasAnimation);
}

- (double)maxDuration {
	double maxDuration = 0;
	for (RNNElementTransitionOptions *option in @[_topBar, _content, _bottomTabs]) {
		maxDuration = MAX(maxDuration, option.maxDuration);
	}
	return maxDuration;
}

@end
