//
//  UILabel+Chain.m
//  ReactNative
//
//  Created by mac on 2018/7/10.
//  Copyright © 2018年 healifeGroup. All rights reserved.
//

#import "UILabel+Chain.h"

@implementation UILabel (Chain)

+(UILabel *)initInstance{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    return label;
}


#pragma mark - UILabel 所属的属性

-(kUILabelTextBlock)text1{
    
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

-(kUILabelTextColorBlock)textColor1{
    
    return ^(UIColor *textColor){
        self.textColor = textColor;
        return self;
    };
}

-(kUILabelFontBlock)font1{
    
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}

-(kUILabelTextAligntBlock)textAlignment1{
    return ^(NSTextAlignment textAlignment){
        self.textAlignment = textAlignment;
        return self;
    };
}

-(kUILabelAttributedTextBlock)attributedText1{
    
    return ^(NSAttributedString *attributedText){
        self.attributedText = attributedText;
        return self;
    };
}

-(kUILabelShadowColorBlock)shadowColor1{
    return ^(UIColor *shadowColor){
        self.shadowColor = shadowColor;
        return self;
    };
}

-(kUILabelShadowOffsetBlock)shadowOffset1{
    return ^(CGSize shadowOffset){
        self.shadowOffset = shadowOffset;
        return self;
    };
}

-(kUILabelNumberOfLinesBlock)numberOfLines1{
    return ^(NSInteger numberOfLines){
        self.numberOfLines = numberOfLines;
        return self;
    };
}

-(kUILabelLineBreakModeBlock)lineBreakMode1{
    return ^(NSLineBreakMode lineBreakMode){
        self.lineBreakMode = lineBreakMode;
        return self;
    };
}

-(kUILabelEnabledBlock)enabled1{
    return ^(BOOL enabled){
        self.enabled = enabled;
        return self;
    };
}

-(kUILabelHighlightedTextColorBlock)highlightedTextColor1{
    return ^(UIColor *highlightedTextColor){
        self.highlightedTextColor = highlightedTextColor;
        return self;
    };
}

-(kUILabelHighlightedBlock)highlighted1{
    return ^(BOOL highlighted){
        self.highlighted = highlighted;
        return self;
    };
}

#pragma mark - UIView 公共的属性

-(kUILabelFrameBlock)frame1{
    
    return ^(CGRect frame){
        self.frame = frame;
        return self;
    };
}

-(kUILabelBoundsBlock)bounds1{
    return ^(CGRect bounds){
        self.bounds = bounds;
        return self;
    };
}

-(kUILabelCenterBlock)center1{
    return ^(CGPoint center){
        self.center = center;
        return self;
    };
}

-(kUILabelTintColorBlock)tintColor1{
    return ^(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}

-(kUILabelBackgroundColorBlock)backgroundColor1{
    return ^(UIColor *backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}


-(kUILabelTagBlock)tag1{
    return ^(NSInteger tag){
        self.tag = tag;
        return self;
    };
}

-(kUILabelAlphaBlock)alpha1{
    return ^(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

-(kUILabelHiddenBlock)hidden1{
    return ^(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}

-(kUILabelOpaqueBlock)opaque1{
    return ^(BOOL opaque){
        self.opaque = opaque;
        return self;
    };
}

-(kUILabelContentModeBlock)contentMode1{
    return ^(UIViewContentMode contentMode){
        self.contentMode = contentMode;
        return self;
    };
}

-(kUILabelUserInteractionEnabledBlock)userInteractionEnabled1{
    return ^(BOOL userInteractionEnabled){
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}


-(kUILabelClipsToBoundsBlock)clipsToBounds1{
    return ^(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

-(kUILabelCornerRadiussBlock)cornerRadius1{
    return ^(CGFloat cornerRadius){
        self.clipsToBounds = YES;
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}

-(kUILabelBorderWidthBlock)borderWidth1{
    return ^(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

-(kUILabelBorderColorBlock)borderColor1{
    return ^(UIColor *borderColor ){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

-(kUILabelSuperViewBlock)superView1{
    return ^(UIView *superView){
        [superView addSubview:self];
        return self;
    };
}

-(kUILabelAddActionBlock)addAction{
    return ^(id obj,SEL action){
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:obj action:action];
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer:tap];
        
        return self;
    };
}

#pragma mark - Masonry 约束布局

-(void)constraint:(kUILabelConstraintBlock)block{
    
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        if (block) {
            block(make);
        }
    }];
}

@end
