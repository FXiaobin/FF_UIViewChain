//
//  UIImageView+Chain.m
//  ReactNative
//
//  Created by mac on 2018/7/11.
//  Copyright © 2018年 healifeGroup. All rights reserved.
//

#import "UIImageView+Chain.h"
#import <objc/runtime.h>

static const char kTargetKey;

@implementation UIImageView (Chain)

+(UIImageView *)initInstance{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    return imageView;
}

///

-(kUIImageViewImageBlock)image1{
    return ^(UIImage *image){
        self.image = image;
        return self;
    };
}

-(kUIImageViewHighlightedImageBlock)highlightedImage1{
    return ^(UIImage *highlightedImage){
        self.highlightedImage = highlightedImage;
        return self;
    };
}

-(kUIImageViewHighlightedBlock)highlighted1{
    return ^(BOOL highlighted){
        self.highlighted = highlighted;
        return self;
    };
}

-(kUIImageViewAnimationImagesBlock)animationImages1{
    return ^(NSArray<UIImage *> *animationImages){
        self.animationImages = animationImages;
        return self;
    };
}

-(kUIImageViewHighlightedAnimationImagesBlock)highlightedAnimationImages1{
    return ^(NSArray<UIImage *> *highlightedAnimationImages){
        self.highlightedAnimationImages = highlightedAnimationImages;
        return self;
    };
}

-(kUIImageViewAnimationDurationBlock)animationDuration1{
    return ^(NSTimeInterval animationDuration){
        self.animationDuration = animationDuration;
        return self;
    };
}

-(kUIImageViewAnimationRepeatCountBlock)animationRepeatCount1{
    return ^(NSInteger animationRepeatCount){
        self.animationRepeatCount = animationRepeatCount;
        return self;
    };
}

///

-(kUIImageViewFrameBlock)frame1{
    return ^(CGRect frame){
        self.frame = frame;
        return self;
    };
}

-(kUIImageViewBoundsBlock)bounds1{
    return ^(CGRect bounds){
        self.bounds = bounds;
        return self;
    };
}

-(kUIImageViewCenterBlock)center1{
    return ^(CGPoint center){
        self.center = center;
        return self;
    };
}

-(kUIImageViewTagBlock)tag1{
    
    return ^(NSInteger tag){
        self.tag = tag;
        return self;
    };
}

-(kUIImageViewTintColorBlock)tintColor1{
    return ^(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}

-(kUIImageViewBackgroundColorBlock)backgroundColor1{
    return ^(UIColor *backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}

-(kUIImageViewAlphaBlock)alpha1{
    
    return ^(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

-(kUIImageViewHiddenBlock)hidden1{
    return ^(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}

-(kUIImageViewOpaqueBlock)opaque1{
    return ^(BOOL opaque){
        self.opaque = opaque;
        return self;
    };
}

-(kUIImageViewContentModeBlock)contentMode1{
    return ^(UIViewContentMode contentMode){
        self.contentMode = contentMode;
        return self;
    };
}

-(kUIImageViewUserInteractionEnabledBlock)userInteractionEnabled1{
    return ^(BOOL userInteractionEnabled){
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

-(kUIImageViewClipsToBoundsBlock)clipsToBounds1{
    return ^(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

-(kUIImageViewCornerRadiussBlock)cornerRadius1{
    
    return ^(CGFloat cornerRadius){
        self.clipsToBounds = YES;
        self.layer.cornerRadius = cornerRadius;
        
        return self;
    };
}

-(kUIImageViewBorderWidthBlock)borderWidth1{
    
    return ^(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

-(kUIImageViewBorderColorBlock)borderColor1{
    
    return ^(UIColor *borderColor ){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

-(kUIImageViewSuperViewBlock)superView1{
    return ^(UIView *superView){
        [superView addSubview:self];
        return self;
    };
}

-(kUIImageViewAddActionBlock)addAction{
    return ^(id obj,SEL action){
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:obj action:action];
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer:tap];
        
        return self;
    };
}

-(void)constraint:(kUIImageViewConstraintBlock)block{
    
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        if (block) {
            block(make);
        }
    }];
}


@end
