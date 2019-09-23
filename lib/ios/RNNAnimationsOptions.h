#import "RNNOptions.h"
@class RNNScreenTransition;
@class RNNElementTransitionOptions;

@interface RNNAnimationsOptions : RNNOptions

@property (nonatomic, strong) RNNScreenTransition* push;
@property (nonatomic, strong) RNNScreenTransition* pop;
@property (nonatomic, strong) RNNElementTransitionOptions* showModal;
@property (nonatomic, strong) RNNElementTransitionOptions* dismissModal;
@property (nonatomic, strong) RNNElementTransitionOptions* setRoot;

@end
