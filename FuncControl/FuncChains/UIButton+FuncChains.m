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
        self.frame=frame;
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIFont * _Nonnull))func_font{
    return ^id(UIFont *font){
        self.titleLabel.font=font;
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
    return ^id(NSString *title,UIControlState state){
        [self setTitle:title forState:state];
        return self;
    };
}

- (UIButton * _Nonnull (^)(NSAttributedString * _Nonnull, UIControlState))func_attributedTitle_state{
    return ^id(NSAttributedString *attributedTitle,UIControlState state){
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
    return ^id(UIColor *titleColor,UIControlState state){
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
    return ^id(UIImage *image,UIControlState state){
        [self setImage:image forState:state];
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIControlContentVerticalAlignment))func_contentVerticalAlignment{
    return ^id(UIControlContentVerticalAlignment contentVerticalAlignment){
        self.contentVerticalAlignment=contentVerticalAlignment;
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIControlContentHorizontalAlignment))func_contentHorizontalAlignment{
    return ^id(UIControlContentHorizontalAlignment contentHorizontalAlignment){
        self.contentHorizontalAlignment=contentHorizontalAlignment;
        return self;
    };
}

- (UIButton * _Nonnull (^)(UIColor * _Nonnull))func_backgroundColor{
    return ^id(UIColor *backgroundColor){
        self.backgroundColor=backgroundColor;
        return self;
    };
}

- (UIButton * _Nonnull (^)(id _Nonnull, SEL _Nonnull))func_addTarget_action{
    return ^id(id target,SEL action){
        [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        return self;
    };
}



@end
