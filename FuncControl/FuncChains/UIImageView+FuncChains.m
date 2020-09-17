//
//  UIImageView+FuncChains.m
//  FuncControl
//
//  Created by Singularity on 2020/9/17.
//  Copyright © 2020 Singularity. All rights reserved.
//

#import "UIImageView+FuncChains.h"

@implementation UIImageView (FuncChains)

+ (UIImageView *)func_init{
    return [[UIImageView alloc]init];
}

- (UIImageView * _Nonnull (^)(CGRect))func_frame{
    return ^id(CGRect frame){
        self.frame = frame;
        return self;
    };
}

- (UIImageView * _Nonnull (^)(UIColor * _Nonnull))func_backgroundColor{
    return ^id(UIColor *backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}

- (UIImageView * _Nonnull (^)(UIImage * _Nonnull))func_image{
    return ^id(UIImage *image){
        self.image = image;
        return self;
    };
}

- (UIImageView * _Nonnull (^)(UIViewContentMode))func_contentMode{
    return ^id(UIViewContentMode contentMode){
        self.contentMode = contentMode;
        return self;
    };
}

- (UIImageView * _Nonnull (^)(BOOL))func_clipsToBounds{
    return ^id(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

- (UIImageView * _Nonnull (^)(NSArray<UIImage *> * _Nonnull))func_animationImages{
    return ^id(NSArray <UIImage *>*animationImages){
        self.animationImages = animationImages;
        return self;
    };
}

- (UIImageView * _Nonnull (^)(NSTimeInterval))func_animationDuration{
    return ^id(NSTimeInterval animationDuration){
        self.animationDuration = animationDuration;
        return self;
    };
}

- (UIImageView * _Nonnull (^)(NSInteger))func_animationRepeatCount{
    return ^id(NSInteger animationRepeatCount){
        self.animationRepeatCount = animationRepeatCount;
        return self;
    };
}

- (UIImageView * _Nonnull (^)(BOOL))func_userInteractionEnabled{
    return ^id(BOOL userInteractionEnabled){
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (UIImageView * _Nonnull (^)(id _Nonnull, SEL _Nonnull))func_addTapGestureTarget_action{
    return ^id(id target, SEL action){
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:target action:action];
        [self addGestureRecognizer:tapGesture];
        return self;
    };
}

- (UIImageView * _Nonnull (^)(CGFloat))func_alpha{
    return ^id(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

- (UIImageView * _Nonnull (^)(BOOL))func_hidden{
    return ^id(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}



@end
