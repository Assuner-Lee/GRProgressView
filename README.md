![](https://github.com/Assuner-Lee/resource/blob/master/grprogressview.png)
[![CI Status](http://img.shields.io/travis/Assuner-Lee/GRProgressView.svg?style=flat)](https://travis-ci.org/Assuner-Lee/GRProgressView)
[![Version](https://img.shields.io/cocoapods/v/GRProgressView.svg?style=flat)](http://cocoapods.org/pods/GRProgressView)
[![License](https://img.shields.io/cocoapods/l/GRProgressView.svg?style=flat)](http://cocoapods.org/pods/GRProgressView)
[![Platform](https://img.shields.io/cocoapods/p/GRProgressView.svg?style=flat)](http://cocoapods.org/pods/GRProgressView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

GRProgressView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "GRProgressView"
```
# 效果
![演示.gif](https://github.com/Assuner-Lee/resource/blob/master/演示.gif)

# 接口 
##### 与UIProgressView接口基本一致，增加了更丰富的动画接口，可自由设置frame
```
#import <UIKit/UIKit.h>

@interface GRProgressView : UIImageView

@property (nonatomic, assign) float progress;                        // 0.0 .. 1.0, default is 0.0. values outside are pinned.
@property (nonatomic, strong, nullable) UIColor* progressTintColor;
@property (nonatomic, strong, nullable) UIColor* trackTintColor;
@property (nonatomic, strong, nullable) UIImage* progressImage;
@property (nonatomic, strong, nullable) UIImage* trackImage;
- (void)setProgress:(float)progress animateWithDuration:(double)duration delay:(double)delay
- (void)setProgress:(float)progress animateWithDuration:(double)duration;
- (void)setProgress:(float)progress animated:(BOOL)animated;

@end
```

#### 水一篇 谢谢观看
## Author

Assuner-Lee, yongguang.li@ele.me

## License

GRProgressView is available under the MIT license. See the LICENSE file for more info.
