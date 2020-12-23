//
//  UIButton+FuncChains.m
//  BaseTools
//
//  Created by Singularity on 2019/8/17.
//  Copyright © 2019 Singularity. All rights reserved.
//

#import "UIButton+FuncChains.h"

@implementation UIButton (FuncChains)

+ (UIButton *)func_init{
    return [[UIButton alloc]init];
}

- (UIButton * _Nonnull (^)(CGRect))func_frame{
    return ^id(CGRect frame){
        self.frame = frame;
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIFont * _Nonnull))func_font{
    return ^id(UIFont *font){
        self.titleLabel.font = font;
        return self;
    };
}

- (UIButton * _Nonnull (^)(NSTextAlignment))func_textAlignment{
    return ^id(NSTextAlignment textAlignment){
        self.titleLabel.textAlignment = textAlignment;
        return self;
    };
}

- (UIButton * _Nonnull (^)(NSInteger))func_numberOfLines{
    return ^id(NSInteger numberOfLines){
        self.titleLabel.numberOfLines = numberOfLines;
        return self;
    };
}

- (UIButton * _Nonnull (^)(BOOL))func_adjustsFontSizeToFitWidth{
    return ^id(BOOL adjustsFontSizeToFitWidth){
        self.titleLabel.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}

- (UIButton * _Nonnull (^)(NSString * _Nonnull))func_title{
    return ^id(NSString *title){
        [self setTitle:title forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton * _Nonnull (^)(NSString * _Nonnull, UIControlState))func_title_state{
    return ^id(NSString *title, UIControlState state){
        [self setTitle:title forState:state];
        return self;
    };
}

- (UIButton * _Nonnull (^)(NSAttributedString * _Nonnull, UIControlState))func_attributedTitle_state{
    return ^id(NSAttributedString *attributedTitle, UIControlState state){
        [self setAttributedTitle:attributedTitle forState:state];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIColor * _Nonnull))func_titleColor{
    return ^id(UIColor *titleColor){
        [self setTitleColor:titleColor forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIColor * _Nonnull, UIControlState))func_titleColor_state{
    return ^id(UIColor *titleColor, UIControlState state){
        [self setTitleColor:titleColor forState:state];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIImage * _Nonnull))func_image{
    return ^id(UIImage *image){
        [self setImage:image forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIImage * _Nonnull, UIControlState))func_image_state{
    return ^id(UIImage *image, UIControlState state){
        [self setImage:image forState:state];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIControlContentVerticalAlignment))func_contentVerticalAlignment{
    return ^id(UIControlContentVerticalAlignment contentVerticalAlignment){
        self.contentVerticalAlignment = contentVerticalAlignment;
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIControlContentHorizontalAlignment))func_contentHorizontalAlignment{
    return ^id(UIControlContentHorizontalAlignment contentHorizontalAlignment){
        self.contentHorizontalAlignment = contentHorizontalAlignment;
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIColor * _Nonnull))func_backgroundColor{
    return ^id(UIColor *backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIImage * _Nonnull, UIControlState))func_backgroundImage{
    return ^id(UIImage *backgroundImage, UIControlState state){
        [self setBackgroundImage:backgroundImage forState:state];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIColor * _Nonnull, UIColor * _Nonnull))func_gradientVerticalColor{
    return ^id(UIColor *startColor, UIColor *endColor){
        CAGradientLayer *gradientLayer = [CAGradientLayer layer];
        gradientLayer.colors = @[(__bridge id)startColor.CGColor, (__bridge id)endColor.CGColor];
        gradientLayer.locations = @[@0.0, @1.0];
        gradientLayer.startPoint = CGPointMake(0, 0);
        gradientLayer.endPoint = CGPointMake(0, 1);
        gradientLayer.frame = self.bounds;
        [self.layer addSublayer:gradientLayer];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIColor * _Nonnull, UIColor * _Nonnull))func_gradientHorizontalColor{
    return ^id(UIColor *startColor, UIColor *endColor){
        CAGradientLayer *gradientLayer = [CAGradientLayer layer];
        gradientLayer.colors = @[(__bridge id)startColor.CGColor, (__bridge id)endColor.CGColor];
        gradientLayer.locations = @[@0.0, @1.0];
        gradientLayer.startPoint = CGPointMake(0, 0);
        gradientLayer.endPoint = CGPointMake(1, 0);
        gradientLayer.frame = self.bounds;
        [self.layer addSublayer:gradientLayer];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIColor * _Nonnull, CGFloat))func_shadow{
    return ^id(UIColor *shadowColor, CGFloat shadowRadius){
        self.layer.shadowColor = shadowColor.CGColor;
        self.layer.shadowOffset = CGSizeMake(1,1);
        self.layer.shadowRadius = shadowRadius;
        self.layer.shadowOpacity = 1;
        return self;
    };
}

- (UIButton * _Nonnull (^)(id _Nonnull, SEL _Nonnull))func_addTarget_action{
    return ^id(id target, SEL action){
        [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        return self;
    };
}

- (UIButton * _Nonnull (^)(BOOL))func_enabled{
    return ^id(BOOL enabled){
        self.enabled = enabled;
        return self;
    };
}

- (UIButton * _Nonnull (^)(BOOL))func_userInteractionEnabled{
    return ^id(BOOL userInteractionEnabled){
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (UIButton * _Nonnull (^)(CGFloat))func_alpha{
    return ^id(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

- (UIButton * _Nonnull (^)(BOOL))func_hidden{
    return ^id(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}



@end
