#import "RNNAnimationsOptions.h"

@implementation RNNAnimationsOptions

- (instancetype)initWithDict:(NSDictionary *)dict {
	self = [super init];
	
	self.push = [[RNNScreenTransition alloc] initWithDict:dict[@"push"]];
	self.pop = [[RNNScreenTransition alloc] initWithDict:dict[@"pop"]];
	self.showModal = [[RNNScreenTransition alloc] initWithDict:dict[@"showModal"]];
	self.dismissModal = [[RNNScreenTransition alloc] initWithDict:dict[@"dismissModal"]];
	self.setRoot = [[RNNScreenTransition alloc] initWithDict:dict[@"setRoot"]];

	return self;
}

@end
