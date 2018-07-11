//
//  UIButton+Chain.m
//  ReactNative
//
//  Created by mac on 2018/7/11.
//  Copyright © 2018年 healifeGroup. All rights reserved.
//

#import "UIButton+Chain.h"
#import <objc/runtime.h>

static const char kTargetKey;

@implementation UIButton (Chain)


+(UIButton *)initInstance{
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectZero];
    return button;
}



-(kUIButtonTitleBlock)setTitle{
    return ^(NSString *title, UIControlState state){
        [self setTitle:title forState:state];
        return self;
    };
}

-(kUIButtonTitleColorBlock)setTitleColor{
    return ^(UIColor *titleColor, UIControlState state){
        [self setTitleColor:titleColor forState:state];
        return self;
    };
}

-(kUIButtonTitleShadowColorBlock)setTitleShadowColor{
    return ^(UIColor *titleShadowColor, UIControlState state){
        [self setTitleShadowColor:titleShadowColor forState:state];
        return self;
    };
}

-(kUIButtonAttributedTitleBlock)setAttributedTitle{
    return ^(NSAttributedString *attributedTitle, UIControlState state){
        [self setAttributedTitle:attributedTitle forState:state];
        return self;
    };
}

-(kUIButtonImageBlock)setImage{
    return ^(UIImage *image, UIControlState state){
        [self setImage:image forState:state];
        return self;
    };
}

-(kUIButtonBackgroundImageBlock)setBackgroundImage{
    return ^(UIImage *backgroundImage, UIControlState state){
        [self setBackgroundImage:backgroundImage forState:state];
        return self;
    };
}

-(kUIButtonContentEdgeInsetsBlock)contentEdgeInsets1{
    return ^(UIEdgeInsets contentEdgeInsets){
        self.contentEdgeInsets = contentEdgeInsets;
        return self;
    };
}

-(kUIButtonTitleEdgeInsetsBlock)titleEdgeInsets1{
    return ^(UIEdgeInsets titleEdgeInsets){
        self.titleEdgeInsets = titleEdgeInsets;
        return self;
    };
}

-(kUIButtonImageEdgeInsetsBlock)imageEdgeInsets1{
    return ^(UIEdgeInsets imageEdgeInsets){
        self.imageEdgeInsets = imageEdgeInsets;
        return self;
    };
}

-(kUIButtonFontBlock)font1{
    return ^(UIFont *font){
        self.titleLabel.font = font;
        return self;
    };
}


-(kUIButtonLineBreakModeBlock)lineBreakMode1{
    return ^(NSLineBreakMode lineBreakMode){
        self.titleLabel.lineBreakMode = lineBreakMode;
        return self;
    };
}

-(kUIButtonTitleShadowOffsetBlock)titleShadowOffset1{
    return ^(CGSize titleShadowOffset){
        self.titleLabel.shadowOffset = titleShadowOffset;
        return self;
    };
}

-(kUIButtonNumberOfLinesBlock)numberOfLines{
    return ^(NSInteger numberOfLines){
        self.titleLabel.numberOfLines = numberOfLines;
        return self;
    };
}

-(kUIButtonTextAlignmentBlock)textAlignment{
    return ^(NSInteger textAlignment){
        self.titleLabel.textAlignment = textAlignment;
        return self;
    };
}

///公共属性
-(kUIButtonFrameBlock)frame1{
    return ^(CGRect frame){
        self.frame = frame;
        return self;
    };
}

-(kUIButtonBoundsBlock)bounds1{
    return ^(CGRect bounds){
        self.bounds = bounds;
        return self;
    };
}

-(kUIButtonCenterBlock)center1{
    return ^(CGPoint center){
        self.center = center;
        return self;
    };
}

-(kUIButtonTagBlock)tag1{
    
    return ^(NSInteger tag){
        self.tag = tag;
        return self;
    };
}

-(kUIButtonTintColorBlock)tintColor1{
    return ^(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}

-(kUIButtonBackgroundColorBlock)backgroundColor1{
    return ^(UIColor *backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}

-(kUIButtonAlphaBlock)alpha1{
    
    return ^(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

-(kUIButtonHiddenBlock)hidden1{
    return ^(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}

-(kUIButtonOpaqueBlock)opaque1{
    return ^(BOOL opaque){
        self.opaque = opaque;
        return self;
    };
}

-(kUIButtonContentModeBlock)contentMode1{
    return ^(UIViewContentMode contentMode){
        self.contentMode = contentMode;
        return self;
    };
}

-(kUIButtonUserInteractionEnabledBlock)userInteractionEnabled1{
    return ^(BOOL userInteractionEnabled){
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

-(kUIButtonClipsToBoundsBlock)clipsToBounds1{
    return ^(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

-(kUIButtonCornerRadiussBlock)cornerRadius1{
    
    return ^(CGFloat cornerRadius){
        self.clipsToBounds = YES;
        self.layer.cornerRadius = cornerRadius;
        
        return self;
    };
}

-(kUIButtonBorderWidthBlock)borderWidth1{
    
    return ^(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

-(kUIButtonBorderColorBlock)borderColor1{
    
    return ^(UIColor *borderColor ){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

-(kUIButtonSuperViewBlock)superView1{
    return ^(UIView *superView){
        [superView addSubview:self];
        return self;
    };
}

-(kUIButtonAddActionBlock)addAction{
    return ^(id obj,SEL action){
        [self addTarget:obj action:action forControlEvents:UIControlEventTouchUpInside];
        return self;
    };
}

-(void)constraint:(kUIButtonConstraintBlock)block{
    
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        if (block) {
            block(make);
        }
    }];
}

@end
