#import "RNNOptions.h"
@class RNNAnimationConfigurationOptions;

@interface RNNElementTransitionOptions : RNNOptions

@property (nonatomic, strong) RNNAnimationConfigurationOptions* alpha;
@property (nonatomic, strong) RNNAnimationConfigurationOptions* x;
@property (nonatomic, strong) RNNAnimationConfigurationOptions* y;
@property (nonatomic, strong) RNNAnimationConfigurationOptions* scaleX;
@property (nonatomic, strong) RNNAnimationConfigurationOptions* scaleY;
@property (nonatomic, strong) RNNAnimationConfigurationOptions* rotationX;
@property (nonatomic, strong) RNNAnimationConfigurationOptions* rotationY;
@property (nonatomic, strong) Bool* enable;
@property (nonatomic, strong) Bool* waitForRender;

- (double)maxDuration;
- (BOOL)hasAnimation;

@end
