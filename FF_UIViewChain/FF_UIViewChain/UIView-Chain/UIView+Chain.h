//
//  UIView+Chain.h
//  ReactNative
//
//  Created by mac on 2018/7/10.
//  Copyright © 2018年 healifeGroup. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry.h>

typedef UIView * (^kUIViewBackgroundColorBlock)(UIColor *backgroundColor);
typedef UIView * (^kUIViewSuperViewBlock)(UIView *superView);
typedef UIView * (^kUIViewTagBlock)(NSInteger tag);
typedef UIView * (^kUIViewFrameBlock)(CGRect frame);
typedef UIView * (^kUIViewCenterBlock)(CGPoint center);
typedef UIView * (^kUIViewBoundsBlock)(CGRect bounds);
typedef UIView * (^kUIViewAlphaBlock)(CGFloat alpha);
typedef UIView * (^kUIViewHiddenBlock)(BOOL hidden);
typedef UIView * (^kUIViewOpaqueBlock)(BOOL opaque);
typedef UIView * (^kUIViewTintColorBlock)(UIColor *tintColor);
typedef UIView * (^kUIViewContentModeBlock)(UIViewContentMode contentMode);
typedef UIView * (^kUIViewUserInteractionEnabledBlock)(BOOL userInteractionEnabled);


typedef UIView * (^kUIViewClipsToBoundsBlock)(BOOL clipsToBounds);
typedef UIView * (^kUIViewBorderColorBlock)(UIColor *borderColor);
typedef UIView * (^kUIViewBorderWidthBlock)(CGFloat borderWidth);
typedef UIView * (^kUIViewCornerRadiussBlock)(CGFloat cornerRadius);

///点击事件
typedef UIView * (^kUIViewAddActionBlock)(id obj,SEL action);


typedef void (^kUIViewConstraintBlock)(MASConstraintMaker *make);


@interface UIView (Chain)

+(UIView *)initInstance;



-(kUIViewTagBlock)tag1;

-(kUIViewFrameBlock)frame1;

-(kUIViewBoundsBlock)bounds1;

-(kUIViewCenterBlock)center1;

-(kUIViewTintColorBlock)tintColor1;

-(kUIViewBackgroundColorBlock)backgroundColor1;

-(kUIViewAlphaBlock)alpha1;

-(kUIViewOpaqueBlock)opaque1;

-(kUIViewHiddenBlock)hidden1;

-(kUIViewContentModeBlock)contentMode1;

-(kUIViewUserInteractionEnabledBlock)userInteractionEnabled1;

-(kUIViewClipsToBoundsBlock)clipsToBounds1;

-(kUIViewCornerRadiussBlock)cornerRadius1;

-(kUIViewBorderWidthBlock)borderWidth1;

-(kUIViewBorderColorBlock)borderColor1;

-(kUIViewSuperViewBlock)superView1;

///点击事件
-(kUIViewAddActionBlock)addAction;




-(void)constraint:(kUIViewConstraintBlock)block;


@end
