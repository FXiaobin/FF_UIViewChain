//
//  UIImageView+Chain.h
//  ReactNative
//
//  Created by mac on 2018/7/11.
//  Copyright © 2018年 healifeGroup. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry.h>

///特有属性
typedef UIImageView * (^kUIImageViewImageBlock)(UIImage *image);
typedef UIImageView * (^kUIImageViewHighlightedImageBlock)(UIImage *highlightedImage);
typedef UIImageView * (^kUIImageViewHighlightedBlock)(BOOL highlighted);
typedef UIImageView * (^kUIImageViewAnimationImagesBlock)(NSArray<UIImage *> *animationImages);
typedef UIImageView * (^kUIImageViewHighlightedAnimationImagesBlock)(NSArray<UIImage *> *highlightedAnimationImages);
typedef UIImageView * (^kUIImageViewAnimationDurationBlock)(NSTimeInterval animationDuration);
typedef UIImageView * (^kUIImageViewAnimationRepeatCountBlock)(NSInteger animationRepeatCount);


///公共属性
typedef UIImageView * (^kUIImageViewBackgroundColorBlock)(UIColor *backgroundColor);
typedef UIImageView * (^kUIImageViewSuperViewBlock)(UIImageView *superView);
typedef UIImageView * (^kUIImageViewTagBlock)(NSInteger tag);
typedef UIImageView * (^kUIImageViewFrameBlock)(CGRect frame);
typedef UIImageView * (^kUIImageViewCenterBlock)(CGPoint center);
typedef UIImageView * (^kUIImageViewBoundsBlock)(CGRect bounds);
typedef UIImageView * (^kUIImageViewAlphaBlock)(CGFloat alpha);
typedef UIImageView * (^kUIImageViewHiddenBlock)(BOOL hidden);
typedef UIImageView * (^kUIImageViewOpaqueBlock)(BOOL opaque);
typedef UIImageView * (^kUIImageViewTintColorBlock)(UIColor *tintColor);
typedef UIImageView * (^kUIImageViewContentModeBlock)(UIViewContentMode contentMode);
typedef UIImageView * (^kUIImageViewUserInteractionEnabledBlock)(BOOL userInteractionEnabled);


typedef UIImageView * (^kUIImageViewClipsToBoundsBlock)(BOOL clipsToBounds);
typedef UIImageView * (^kUIImageViewBorderColorBlock)(UIColor *borderColor);
typedef UIImageView * (^kUIImageViewBorderWidthBlock)(CGFloat borderWidth);
typedef UIImageView * (^kUIImageViewCornerRadiussBlock)(CGFloat cornerRadius);

///点击事件
typedef UIImageView * (^kUIImageViewAddActionBlock)(id obj,SEL action);


typedef void (^kUIImageViewConstraintBlock)(MASConstraintMaker *make);

@interface UIImageView (Chain)

+(UIImageView *)initInstance;

///特有属性

-(kUIImageViewImageBlock)image1;

-(kUIImageViewHighlightedImageBlock)highlightedImage1;

-(kUIImageViewHighlightedBlock)highlighted1;

-(kUIImageViewAnimationImagesBlock)animationImages1;

-(kUIImageViewHighlightedAnimationImagesBlock)highlightedAnimationImages1;

-(kUIImageViewAnimationDurationBlock)animationDuration1;

-(kUIImageViewAnimationRepeatCountBlock)animationRepeatCount1;


///公共属性
-(kUIImageViewTagBlock)tag1;

-(kUIImageViewFrameBlock)frame1;

-(kUIImageViewBoundsBlock)bounds1;

-(kUIImageViewCenterBlock)center1;

-(kUIImageViewTintColorBlock)tintColor1;

-(kUIImageViewBackgroundColorBlock)backgroundColor1;

-(kUIImageViewAlphaBlock)alpha1;

-(kUIImageViewOpaqueBlock)opaque1;

-(kUIImageViewHiddenBlock)hidden1;

-(kUIImageViewContentModeBlock)contentMode1;

-(kUIImageViewUserInteractionEnabledBlock)userInteractionEnabled1;

-(kUIImageViewClipsToBoundsBlock)clipsToBounds1;

-(kUIImageViewCornerRadiussBlock)cornerRadius1;

-(kUIImageViewBorderWidthBlock)borderWidth1;

-(kUIImageViewBorderColorBlock)borderColor1;

-(kUIImageViewSuperViewBlock)superView1;


///点击事件
-(kUIImageViewAddActionBlock)addAction;


-(void)constraint:(kUIImageViewConstraintBlock)block;


@end
