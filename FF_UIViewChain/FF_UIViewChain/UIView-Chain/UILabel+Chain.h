//
//  UILabel+Chain.h
//  ReactNative
//
//  Created by mac on 2018/7/10.
//  Copyright © 2018年 healifeGroup. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <Masonry.h>

@class UILabel;

///UILabel特有属性
typedef UILabel * (^kUILabelTextBlock)(NSString *text);
typedef UILabel * (^kUILabelFontBlock)(UIFont *font);
typedef UILabel * (^kUILabelTextColorBlock)(UIColor *textColor);
typedef UILabel * (^kUILabelNumberOfLinesBlock)(NSInteger numberOfLines);
typedef UILabel * (^kUILabelTextAligntBlock)(NSTextAlignment textAlignment);
typedef UILabel * (^kUILabelLineBreakModeBlock)(NSLineBreakMode lineBreakMode);
typedef UILabel * (^kUILabelAttributedTextBlock)(NSAttributedString *attributedText);
typedef UILabel * (^kUILabelEnabledBlock)(BOOL enabled);
typedef UILabel * (^kUILabelHighlightedBlock)(BOOL highlighted);
typedef UILabel * (^kUILabelHighlightedTextColorBlock)(UIColor *highlightedTextColor);
typedef UILabel * (^kUILabelShadowColorBlock)(UIColor *shadowColor);
typedef UILabel * (^kUILabelShadowOffsetBlock)(CGSize shadowOffset);

///UIView公共属性
typedef UILabel * (^kUILabelFrameBlock)(CGRect frame);
typedef UILabel * (^kUILabelCenterBlock)(CGPoint center);
typedef UILabel * (^kUILabelBoundsBlock)(CGRect bounds);
typedef UILabel * (^kUILabelTagBlock)(NSInteger tag);
typedef UILabel * (^kUILabelSuperViewBlock)(UIView *superView);
typedef UILabel * (^kUILabelTintColorBlock)(UIColor *tintColor);
typedef UILabel * (^kUILabelBackgroundColorBlock)(UIColor *backgroundColor);
typedef UILabel * (^kUILabelUserInteractionEnabledBlock)(BOOL userInteractionEnabled);

typedef UILabel * (^kUILabelAlphaBlock)(CGFloat alpha);
typedef UILabel * (^kUILabelHiddenBlock)(BOOL hidden);
typedef UILabel * (^kUILabelOpaqueBlock)(BOOL opaque);
typedef UILabel * (^kUILabelContentModeBlock)(UIViewContentMode contentMode);

typedef UILabel * (^kUILabelClipsToBoundsBlock)(BOOL clipsToBounds);
typedef UILabel * (^kUILabelBorderColorBlock)(UIColor *borderColor);
typedef UILabel * (^kUILabelBorderWidthBlock)(CGFloat borderWidth);
typedef UILabel * (^kUILabelCornerRadiussBlock)(CGFloat cornerRadius);

///点击事件
typedef UILabel * (^kUILabelAddActionBlock)(id obj,SEL action);



///约束布局
typedef void (^kUILabelConstraintBlock)(MASConstraintMaker *make);


@interface UILabel (Chain)

+(UILabel *)initInstance;

#pragma mark - UILabel 所属的属性

-(kUILabelTextBlock)text1;

-(kUILabelFontBlock)font1;

-(kUILabelTextColorBlock)textColor1;

-(kUILabelTextAligntBlock)textAlignment1;

-(kUILabelNumberOfLinesBlock)numberOfLines1;

-(kUILabelAttributedTextBlock)attributedText1;

-(kUILabelShadowColorBlock)shadowColor1;

-(kUILabelShadowOffsetBlock)shadowOffset1;

///放到所有方法的最下面才有效果
-(kUILabelLineBreakModeBlock)lineBreakMode1;

-(kUILabelEnabledBlock)enabled1;

-(kUILabelHighlightedBlock)highlighted1;

-(kUILabelHighlightedTextColorBlock)highlightedTextColor1;

#pragma mark - UIView 公共的属性

-(kUILabelTagBlock)tag1;

-(kUILabelFrameBlock)frame1;

-(kUILabelBoundsBlock)bounds1;

-(kUILabelCenterBlock)center1;

-(kUILabelTintColorBlock)tintColor1;

-(kUILabelBackgroundColorBlock)backgroundColor1;

-(kUILabelAlphaBlock)alpha1;

-(kUILabelOpaqueBlock)opaque1;

-(kUILabelHiddenBlock)hidden1;

-(kUILabelContentModeBlock)contentMode1;

-(kUILabelUserInteractionEnabledBlock)userInteractionEnabled1;

-(kUILabelClipsToBoundsBlock)clipsToBounds1;

-(kUILabelCornerRadiussBlock)cornerRadius1;

-(kUILabelBorderWidthBlock)borderWidth1;

-(kUILabelBorderColorBlock)borderColor1;

-(kUILabelSuperViewBlock)superView1;

///点击事件
-(kUILabelAddActionBlock)addAction;

#pragma mark - Masonry 约束布局

-(void)constraint:(kUILabelConstraintBlock)block;

@end
