//
//  GRProgressView.h
//  Pods
//
//  Created by Assuner on 2017/8/18.
//
//

#import <UIKit/UIKit.h>

@interface GRProgressView : UIImageView

@property (nonatomic, assign) float progress;                        // 0.0 .. 1.0, default is 0.0. values outside are pinned.
@property (nonatomic, strong, nullable) UIColor* progressTintColor;
@property (nonatomic, strong, nullable) UIColor* trackTintColor;
@property (nonatomic, strong, nullable) UIImage* progressImage;
@property (nonatomic, strong, nullable) UIImage* trackImage;
- (void)setProgress:(float)progress animateWithDuration:(double)duration delay:(double)delay;
- (void)setProgress:(float)progress animateWithDuration:(double)duration;
- (void)setProgress:(float)progress animated:(BOOL)animated;

@end
