#import "RNNAnimationsOptions.h"
#import "RNNScreenTransition.h"

@implementation RNNAnimationsOptions

- (instancetype)initWithDict:(NSDictionary *)dict {
	self = [super init];
	
	self.push = [[RNNScreenTransition alloc] initWithDict:dict[@"push"]];
	self.pop = [[RNNScreenTransition alloc] initWithDict:dict[@"pop"]];
	self.showModal = [[RNNElementTransitionOptions alloc] initWithDict:dict[@"showModal"]];
	self.dismissModal = [[RNNElementTransitionOptions alloc] initWithDict:dict[@"dismissModal"]];
	self.setRoot = [[RNNElementTransitionOptions alloc] initWithDict:dict[@"setRoot"]];

	return self;
}

@end
