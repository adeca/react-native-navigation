#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class RNNElementTransitionOptions;
@class RNNScreenTransition;

@interface RNNAnimationsTransitionDelegate : NSObject <UIViewControllerAnimatedTransitioning, UIViewControllerTransitioningDelegate>

@property (nonatomic, strong) RNNScreenTransition* screenTransition;
@property (nonatomic) BOOL isDismiss;

- (instancetype)initWithScreenTransition:(RNNScreenTransition *)screenTransition isDismiss:(BOOL)isDismiss;

- (instancetype)initWithElementTransition:(RNNElementTransitionOptions *)elementTransition isDismiss:(BOOL)isDismiss;

@end
