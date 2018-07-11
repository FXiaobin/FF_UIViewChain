//
//  UIView+Chain.m
//  ReactNative
//
//  Created by mac on 2018/7/10.
//  Copyright © 2018年 healifeGroup. All rights reserved.
//

#import "UIView+Chain.h"

@implementation UIView (Chain)

+(UIView *)initInstance{
    UIView *aView = [[UIView alloc] initWithFrame:CGRectZero];
    return aView;
}

-(kUIViewFrameBlock)frame1{
    return ^(CGRect frame){
        self.frame = frame;
        return self;
    };
}

-(kUIViewBoundsBlock)bounds1{
    return ^(CGRect bounds){
        self.bounds = bounds;
        return self;
    };
}

-(kUIViewCenterBlock)center1{
    return ^(CGPoint center){
        self.center = center;
        return self;
    };
}

-(kUIViewTagBlock)tag1{
    
    return ^(NSInteger tag){
        self.tag = tag;
        return self;
    };
}

-(kUIViewTintColorBlock)tintColor1{
    return ^(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}

-(kUIViewBackgroundColorBlock)backgroundColor1{
    return ^(UIColor *backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}

-(kUIViewAlphaBlock)alpha1{
    
    return ^(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

-(kUIViewHiddenBlock)hidden1{
    return ^(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}

-(kUIViewOpaqueBlock)opaque1{
    return ^(BOOL opaque){
        self.opaque = opaque;
        return self;
    };
}

-(kUIViewContentModeBlock)contentMode1{
    return ^(UIViewContentMode contentMode){
        self.contentMode = contentMode;
        return self;
    };
}

-(kUIViewUserInteractionEnabledBlock)userInteractionEnabled1{
    return ^(BOOL userInteractionEnabled){
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

-(kUIViewClipsToBoundsBlock)clipsToBounds1{
    return ^(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

-(kUIViewCornerRadiussBlock)cornerRadius1{
    
    return ^(CGFloat cornerRadius){
        self.clipsToBounds = YES;
        self.layer.cornerRadius = cornerRadius;
        
        return self;
    };
}

-(kUIViewBorderWidthBlock)borderWidth1{
    
    return ^(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

-(kUIViewBorderColorBlock)borderColor1{
    
    return ^(UIColor *borderColor ){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

-(kUIViewSuperViewBlock)superView1{
    return ^(UIView *superView){
        [superView addSubview:self];
        return self;
    };
}

-(kUIViewAddActionBlock)addAction{
    return ^(id obj,SEL action){
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:obj action:action];
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer:tap];
        
        return self;
    };
}


-(void)constraint:(kUIViewConstraintBlock)block{
    
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        if (block) {
            block(make);
        }
    }];
}

@end
