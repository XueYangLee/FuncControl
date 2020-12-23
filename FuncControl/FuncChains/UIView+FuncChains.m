//
//  UIView+FuncChains.m
//  FuncControl
//
//  Created by Singularity on 2020/9/17.
//  Copyright © 2020 Singularity. All rights reserved.
//

#import "UIView+FuncChains.h"

@implementation UIView (FuncChains)

+ (UIView *)func_init{
    return [[UIView alloc]init];
}

- (UIView * _Nonnull (^)(CGRect))func_frame{
    return ^id(CGRect frame){
        self.frame = frame;
        return self;
    };
}

- (UIView * _Nonnull (^)(UIColor * _Nonnull))func_backgroundColor{
    return ^id(UIColor *backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}

- (UIView * _Nonnull (^)(UIImage * _Nonnull))func_backgroundImage{
    return ^id(UIImage *backgroundImage){
        self.layer.contents = (id) backgroundImage.CGImage;
        return self;
    };
}

- (UIView * _Nonnull (^)(UIColor * _Nonnull, UIColor * _Nonnull))func_gradientVerticalColor{
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

- (UIView * _Nonnull (^)(UIColor * _Nonnull, UIColor * _Nonnull))func_gradientHorizontalColor{
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

- (UIView * _Nonnull (^)(UIColor * _Nonnull, CGFloat))func_shadow{
    return ^id(UIColor *shadowColor, CGFloat shadowRadius){
        self.layer.shadowColor = shadowColor.CGColor;
        self.layer.shadowOffset = CGSizeMake(1,1);
        self.layer.shadowRadius = shadowRadius;
        self.layer.shadowOpacity = 1;
        return self;
    };
}

- (UIView * _Nonnull (^)(BOOL))func_clipsToBounds{
    return ^id(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

- (UIView * _Nonnull (^)(BOOL))func_userInteractionEnabled{
    return ^id(BOOL userInteractionEnabled){
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (UIView * _Nonnull (^)(id _Nonnull, SEL _Nonnull))func_addTapGestureTarget_action{
    return ^id(id target, SEL action){
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:target action:action];
        [self addGestureRecognizer:tapGesture];
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))func_alpha{
    return ^id(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

- (UIView * _Nonnull (^)(BOOL))func_hidden{
    return ^id(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}



@end
