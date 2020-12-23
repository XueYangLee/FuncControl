//
//  UITextField+FuncChains.m
//  BaseTools
//
//  Created by Singularity on 2019/8/17.
//  Copyright © 2019 Singularity. All rights reserved.
//

#import "UITextField+FuncChains.h"

@implementation UITextField (FuncChains)

+ (UITextField *)func_init{
    return [[UITextField alloc]init];
}


- (UITextField * _Nonnull (^)(CGRect))func_frame{
    return ^id(CGRect frame){
        self.frame = frame;
        return self;
    };
}

- (UITextField * _Nonnull (^)(UIColor * _Nonnull))func_backgroundColor{
    return ^id(UIColor *backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}

- (UITextField * _Nonnull (^)(NSString * _Nonnull))func_text{
    return ^id(NSString *text){
        self.text = text;
        return self;
    };
}

- (UITextField * _Nonnull (^)(UIColor * _Nonnull))func_textColor{
    return ^id(UIColor *textColor){
        self.textColor = textColor;
        return self;
    };
}

- (UITextField * _Nonnull (^)(UIFont * _Nonnull))func_font{
    return ^id(UIFont *font){
        self.font = font;
        return self;
    };
}

- (UITextField * _Nonnull (^)(NSString * _Nonnull))func_placeholder{
    return ^id(NSString *placeholder){
        self.placeholder = placeholder;
        return self;
    };
}

- (UITextField * _Nonnull (^)(UIColor * _Nonnull))func_placeholderColor{
    return ^id(UIColor *placeholderColor){
        if (@available(iOS 11.0, *)) {
            self.attributedPlaceholder = [[NSAttributedString alloc]initWithString:self.placeholder attributes:@{NSForegroundColorAttributeName:placeholderColor}];
        }else{
            [self setValue:placeholderColor forKeyPath:@"_placeholderLabel.textColor"];
        }
        return self;
    };
}

- (UITextField * _Nonnull (^)(UIFont * _Nonnull))func_placeholderFont{
    return ^id(UIFont *placeholderFont){
        if (@available(iOS 11.0, *)) {
            self.attributedPlaceholder = [[NSAttributedString alloc]initWithString:self.placeholder attributes:@{NSFontAttributeName:placeholderFont}];
        }else{
            [self setValue:placeholderFont forKeyPath:@"_placeholderLabel.font"];
        }
        return self;
    };
}

- (UITextField * _Nonnull (^)(NSTextAlignment))func_textAlignment{
    return ^id(NSTextAlignment textAlignmen){
        self.textAlignment = textAlignmen;
        return self;
    };
}

- (UITextField * _Nonnull (^)(UIColor * _Nonnull))func_tintColor{
    return ^id(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}

- (UITextField * _Nonnull (^)(BOOL))func_secureTextEntry{
    return ^id(BOOL secureTextEntry){
        self.secureTextEntry = secureTextEntry;
        return self;
    };
}

- (UITextField * _Nonnull (^)(UITextBorderStyle))func_borderStyle{
    return ^id(UITextBorderStyle borderStyle){
        self.borderStyle = borderStyle;
        return self;
    };
}

- (UITextField * _Nonnull (^)(UITextFieldViewMode))func_clearButtonMode{
    return ^id(UITextFieldViewMode clearButtonMode){
        self.clearButtonMode = clearButtonMode;
        return self;
    };
}

- (UITextField * _Nonnull (^)(UIReturnKeyType))func_returnKeyType{
    return ^id(UIReturnKeyType returnKeyTyp){
        self.returnKeyType = returnKeyTyp;
        return self;
    };
}

- (UITextField * _Nonnull (^)(UIKeyboardType))func_keyboardType{
    return ^id(UIKeyboardType keyboardType){
        self.keyboardType = keyboardType;
        return self;
    };
}

- (UITextField * _Nonnull (^)(id _Nonnull, SEL _Nonnull, UIControlEvents))func_addTarget_action_events{
    return ^id(id target, SEL action, UIControlEvents controlEvents){
        [self addTarget:target action:action forControlEvents:controlEvents];
        return self;
    };
}

- (UITextField * _Nonnull (^)(UIColor * _Nonnull, CGFloat))func_shadow{
    return ^id(UIColor *shadowColor, CGFloat shadowRadius){
        self.layer.shadowColor = shadowColor.CGColor;
        self.layer.shadowOffset = CGSizeMake(1,1);
        self.layer.shadowRadius = shadowRadius;
        self.layer.shadowOpacity = 1;
        return self;
    };
}

- (UITextField * _Nonnull (^)(BOOL))func_enable{
    return ^id(BOOL enable){
        self.enabled = enable;
        return self;
    };
}

- (UITextField * _Nonnull (^)(BOOL))func_userInteractionEnabled{
    return ^id(BOOL userInteractionEnabled){
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (UITextField * _Nonnull (^)(CGFloat))func_alpha{
    return ^id(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

- (UITextField * _Nonnull (^)(BOOL))func_hidden{
    return ^id(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}



@end
