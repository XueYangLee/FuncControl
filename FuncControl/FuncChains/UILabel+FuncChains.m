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
        self.frame=frame;
        return self;
    };
}

- (UILabel * _Nonnull (^)(NSString * _Nonnull))func_text{
    return ^id(NSString *text){
        self.text=text;
        return self;
    };
}

- (UILabel * _Nonnull (^)(NSAttributedString * _Nonnull))func_attributedText{
    return ^id(NSAttributedString *attributedText){
        self.attributedText=attributedText;
        return self;
    };
}

- (UILabel * _Nonnull (^)(UIFont * _Nonnull))func_font{
    return ^id(UIFont *font){
        self.font=font;
        return self;
    };
}

- (UILabel * _Nonnull (^)(UIColor * _Nonnull))func_textColor{
    return ^id(UIColor *textColor){
        self.textColor=textColor;
        return self;
    };
}

- (UILabel * _Nonnull (^)(NSTextAlignment))func_textAlignment{
    return ^id(NSTextAlignment textAlignment){
        self.textAlignment=textAlignment;
        return self;
    };
}

- (UILabel * _Nonnull (^)(NSInteger))func_numberOfLines{
    return ^id(NSInteger numberOfLines){
        self.numberOfLines=numberOfLines;
        return self;
    };
}

- (UILabel * _Nonnull (^)(BOOL))func_adjustsFontSizeToFitWidth{
    return ^id(BOOL adjustsFontSizeToFitWidth){
        self.adjustsFontSizeToFitWidth=adjustsFontSizeToFitWidth;
        return self;
    };
}

- (UILabel * _Nonnull (^)(UIColor * _Nonnull))func_backgroundColor{
    return ^id(UIColor *backgroundColor){
        self.backgroundColor=backgroundColor;
        return self;
    };
}



@end
