//
//  GRProgressView.m
//  Pods
//
//  Created by Assuner on 2017/8/18.
//
//

#import "GRProgressView.h"

@interface GRProgressView ()

@property (nonatomic, strong) UIImageView *progressImageView;

@end

@implementation GRProgressView

#define size  self.bounds.size

- (void)setFrame:(CGRect)frame {
  [super setFrame:frame];
  self.progressImageView.frame = CGRectMake(0, 0, size.width * _progress, size.height);
}

- (instancetype)initWithFrame:(CGRect)frame {
  if (self = [super initWithFrame:frame]) {
    [self initView];
    [self setFrame:frame];
  }
  return self;
}

- (instancetype)init {
  if (self = [super init]) {
    [self initView];
  }
  return self;
}

- (void)awakeFromNib {
  [super awakeFromNib];
  [self initView];
}

- (void)initView {
  self.progressImageView = [[UIImageView alloc] init];
  self.backgroundColor = [UIColor lightGrayColor];
  self.progressImageView.backgroundColor = [UIColor darkGrayColor];
  [self addSubview:self.progressImageView];
  self.clipsToBounds = YES;
}

- (void)setTrackTintColor:(UIColor *)trackTintColor {
  _trackTintColor = trackTintColor;
  self.backgroundColor = trackTintColor;
}

- (void)setProgressTintColor:(UIColor *)progressTintColor {
  _progressTintColor = progressTintColor;
  self.progressImageView.backgroundColor = progressTintColor;
}

- (void)setTrackImage:(UIImage *)trackImage {
  _trackImage = trackImage;
  self.image = trackImage;
}

- (void)setProgressImage:(UIImage *)progressImage {
  _progressImage = progressImage;
  self.progressImageView.image = progressImage;
}

- (void)setProgress:(float)progress {
  if (progress < 0) {
    progress = 0;
  } else if (progress > 1) {
    progress = 1;
  }
  _progress = progress;
  self.progressImageView.frame = CGRectMake(0, 0, size.width * progress, size.height);
}

- (void)setProgress:(float)progress animateWithDuration:(double)duration delay:(double)delay {
  [UIView animateWithDuration:duration delay:delay options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveEaseInOut animations:^{
    [self setProgress:progress];
  } completion:nil];
}

- (void)setProgress:(float)progress animateWithDuration:(double)duration {
  [self setProgress:progress animateWithDuration:duration delay:0.0];
}

- (void)setProgress:(float)progress animated:(BOOL)animated {
  if (animated) {
    [self setProgress:progress animateWithDuration:0.5];
  } else {
    [self setProgress:progress];
  }
}

@end
