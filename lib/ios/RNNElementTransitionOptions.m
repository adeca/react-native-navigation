#import "RNNElementTransitionOptions.h"
#import "RNNAnimationConfigurationOptions.h"

@implementation RNNElementTransitionOptions

- (instancetype)initWithDict:(NSDictionary *)dict {
	self = [super init];
	
	self.alpha = [[RNNAnimationConfigurationOptions alloc] initWithDict:dict[@"alpha"]];
	self.x = [[RNNAnimationConfigurationOptions alloc] initWithDict:dict[@"x"]];
	self.y = [[RNNAnimationConfigurationOptions alloc] initWithDict:dict[@"y"]];
	self.enable = [BoolParser parse:dict key:@"enabled"];
	self.waitForRender = [BoolParser parse:dict key:@"waitForRender"];
	
	return self;
}

- (BOOL)hasAnimation {
	return self.x.hasAnimation || self.y.hasAnimation || self.alpha.hasAnimation;
}

- (double)maxDuration {
	double maxDuration = 0;
	for (RNNAnimationConfigurationOptions *option in @[_alpha, _x, _y]) {
		maxDuration = MAX(maxDuration, [option.duration getWithDefaultValue:0]);
	}
	return maxDuration;
}

@end
