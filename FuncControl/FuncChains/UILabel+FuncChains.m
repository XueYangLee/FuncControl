//
//  UILabel+FuncChains.m
//  BaseTools
//
//  Created by Singularity on 2019/8/17.
//  Copyright © 2019 Singularity. All rights reserved.
//

#import "UILabel+FuncChains.h"

@implementation UILabel (FuncChains)

+ (UILabel *)func_init{
    return [[UILabel alloc]init];
}


- (UILabel * _Nonnull (^)(CGRect))func_frame{
    return ^id(CGRect frame){
        self.frame = frame;
        return self;
    };
}

- (UILabel * _Nonnull (^)(NSString * _Nonnull))func_text{
    return ^id(NSString *text){
        self.text = text;
        return self;
    };
}

- (UILabel * _Nonnull (^)(NSAttributedString * _Nonnull))func_attributedText{
    return ^id(NSAttributedString *attributedText){
        self.attributedText = attributedText;
        return self;
    };
}

- (UILabel * _Nonnull (^)(UIFont * _Nonnull))func_font{
    return ^id(UIFont *font){
        self.font = font;
        return self;
    };
}

- (UILabel * _Nonnull (^)(UIColor * _Nonnull))func_textColor{
    return ^id(UIColor *textColor){
        self.textColor = textColor;
        return self;
    };
}

- (UILabel * _Nonnull (^)(NSTextAlignment))func_textAlignment{
    return ^id(NSTextAlignment textAlignment){
        self.textAlignment = textAlignment;
        return self;
    };
}

- (UILabel * _Nonnull (^)(NSInteger))func_numberOfLines{
    return ^id(NSInteger numberOfLines){
        self.numberOfLines = numberOfLines;
        return self;
    };
}

- (UILabel * _Nonnull (^)(BOOL))func_adjustsFontSizeToFitWidth{
    return ^id(BOOL adjustsFontSizeToFitWidth){
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}

- (UILabel * _Nonnull (^)(UIColor * _Nonnull))func_backgroundColor{
    return ^id(UIColor *backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}

- (UILabel * _Nonnull (^)(UIColor * _Nonnull, UIColor * _Nonnull))func_gradientVerticalColor{
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

- (UILabel * _Nonnull (^)(UIColor * _Nonnull, UIColor * _Nonnull))func_gradientHorizontalColor{
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

- (UILabel * _Nonnull (^)(UIColor * _Nonnull, CGFloat))func_shadow{
    return ^id(UIColor *shadowColor, CGFloat shadowRadius){
        self.layer.shadowColor = shadowColor.CGColor;
        self.layer.shadowOffset = CGSizeMake(1,1);
        self.layer.shadowRadius = shadowRadius;
        self.layer.shadowOpacity = 1;
        return self;
    };
}

- (UILabel * _Nonnull (^)(BOOL))func_enabled{
    return ^id(BOOL enabled){
        self.enabled = enabled;
        return self;
    };
}

- (UILabel * _Nonnull (^)(BOOL))func_userInteractionEnabled{
    return ^id(BOOL userInteractionEnabled){
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (UILabel * _Nonnull (^)(id _Nonnull, SEL _Nonnull))func_addTapGestureTarget_action{
    return ^id(id target, SEL action){
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:target action:action];
        [self addGestureRecognizer:tapGesture];
        return self;
    };
}

- (UILabel * _Nonnull (^)(CGFloat))func_alpha{
    return ^id(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

- (UILabel * _Nonnull (^)(BOOL))func_hidden{
    return ^id(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}



@end
