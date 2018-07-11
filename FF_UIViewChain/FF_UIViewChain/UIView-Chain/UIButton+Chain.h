//
//  UIButton+Chain.h
//  ReactNative
//
//  Created by mac on 2018/7/11.
//  Copyright © 2018年 healifeGroup. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry.h>

///特有属性

typedef UIButton * (^kUIButtonTitleBlock)(NSString *title, UIControlState state);
typedef UIButton * (^kUIButtonImageBlock)(UIImage *image, UIControlState state);
typedef UIButton * (^kUIButtonBackgroundImageBlock)(UIImage *backgroundImage, UIControlState state);
typedef UIButton * (^kUIButtonTitleColorBlock)(UIColor *titleColor, UIControlState state);
typedef UIButton * (^kUIButtonTitleShadowColorBlock)(UIColor *titleShadowColor, UIControlState state);
typedef UIButton * (^kUIButtonAttributedTitleBlock)(NSAttributedString *attributedTitle, UIControlState state);

typedef UIButton * (^kUIButtonContentEdgeInsetsBlock)(UIEdgeInsets contentEdgeInsets);
typedef UIButton * (^kUIButtonTitleEdgeInsetsBlock)(UIEdgeInsets titleEdgeInsets);
typedef UIButton * (^kUIButtonImageEdgeInsetsBlock)(UIEdgeInsets imageEdgeInsets);
typedef UIButton * (^kUIButtonFontBlock)(UIFont *font);
typedef UIButton * (^kUIButtonLineBreakModeBlock)(NSLineBreakMode lineBreakMode);
typedef UIButton * (^kUIButtonTitleShadowOffsetBlock)(CGSize titleShadowOffset);
typedef UIButton * (^kUIButtonNumberOfLinesBlock)(NSInteger numberOfLines);
typedef UIButton * (^kUIButtonTextAlignmentBlock)(NSTextAlignment textAlignment);

///点击事件
typedef UIButton * (^kUIButtonAddActionBlock)(id obj,SEL action);


///公共属性
typedef UIButton * (^kUIButtonBackgroundColorBlock)(UIColor *backgroundColor);
typedef UIButton * (^kUIButtonSuperViewBlock)(UIView *superView);
typedef UIButton * (^kUIButtonTagBlock)(NSInteger tag);
typedef UIButton * (^kUIButtonFrameBlock)(CGRect frame);
typedef UIButton * (^kUIButtonCenterBlock)(CGPoint center);
typedef UIButton * (^kUIButtonBoundsBlock)(CGRect bounds);
typedef UIButton * (^kUIButtonAlphaBlock)(CGFloat alpha);
typedef UIButton * (^kUIButtonHiddenBlock)(BOOL hidden);
typedef UIButton * (^kUIButtonOpaqueBlock)(BOOL opaque);
typedef UIButton * (^kUIButtonTintColorBlock)(UIColor *tintColor);
typedef UIButton * (^kUIButtonContentModeBlock)(UIViewContentMode contentMode);
typedef UIButton * (^kUIButtonUserInteractionEnabledBlock)(BOOL userInteractionEnabled);


typedef UIButton * (^kUIButtonClipsToBoundsBlock)(BOOL clipsToBounds);
typedef UIButton * (^kUIButtonBorderColorBlock)(UIColor *borderColor);
typedef UIButton * (^kUIButtonBorderWidthBlock)(CGFloat borderWidth);
typedef UIButton * (^kUIButtonCornerRadiussBlock)(CGFloat cornerRadius);


typedef void (^kUIButtonConstraintBlock)(MASConstraintMaker *make);

@interface UIButton (Chain)


+(UIButton *)initInstance;

///特有方法
-(kUIButtonTitleBlock)setTitle;
-(kUIButtonTitleColorBlock)setTitleColor;
-(kUIButtonTitleShadowColorBlock)setTitleShadowColor;
-(kUIButtonAttributedTitleBlock)setAttributedTitle;
-(kUIButtonImageBlock)setImage;
-(kUIButtonBackgroundImageBlock)setBackgroundImage;

///特有属性
-(kUIButtonContentEdgeInsetsBlock)contentEdgeInsets1;
-(kUIButtonTitleEdgeInsetsBlock)titleEdgeInsets1;
-(kUIButtonImageEdgeInsetsBlock)imageEdgeInsets1;
-(kUIButtonFontBlock)font1;
-(kUIButtonLineBreakModeBlock)lineBreakMode1;
-(kUIButtonTitleShadowOffsetBlock)titleShadowOffset1;
///这两个要放到折行模式后面设置
-(kUIButtonNumberOfLinesBlock)numberOfLines;
-(kUIButtonTextAlignmentBlock)textAlignment;


///公共属性
-(kUIButtonTagBlock)tag1;

-(kUIButtonFrameBlock)frame1;

-(kUIButtonBoundsBlock)bounds1;

-(kUIButtonCenterBlock)center1;

-(kUIButtonTintColorBlock)tintColor1;

-(kUIButtonBackgroundColorBlock)backgroundColor1;

-(kUIButtonAlphaBlock)alpha1;

-(kUIButtonOpaqueBlock)opaque1;

-(kUIButtonHiddenBlock)hidden1;

-(kUIButtonContentModeBlock)contentMode1;

-(kUIButtonUserInteractionEnabledBlock)userInteractionEnabled1;

-(kUIButtonClipsToBoundsBlock)clipsToBounds1;

-(kUIButtonCornerRadiussBlock)cornerRadius1;

-(kUIButtonBorderWidthBlock)borderWidth1;

-(kUIButtonBorderColorBlock)borderColor1;

-(kUIButtonSuperViewBlock)superView1;


///点击事件
-(kUIButtonAddActionBlock)addAction;


-(void)constraint:(kUIButtonConstraintBlock)block;



@end
