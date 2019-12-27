//
//  UILabel+FuncChains.h
//  BaseTools
//
//  Created by Singularity on 2019/8/17.
//  Copyright © 2019 Singularity. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (FuncChains)

/** 初始化 不使用此初始化则需要[UILabel new] */
+ (UILabel *)func_init;

/** 范围大小 */
- (UILabel * (^)(CGRect frame))func_frame;

/** 文本 */
- (UILabel * (^)(NSString *text))func_text;

/** 属性文本 */
- (UILabel * (^)(NSAttributedString *attributedText))func_attributedText;

/** 字体 */
- (UILabel * (^)(UIFont *font))func_font;

/** 文本颜色 */
- (UILabel * (^)(UIColor *textColor))func_textColor;

/** 对齐方式 */
- (UILabel * (^)(NSTextAlignment textAlignment))func_textAlignment;

/** 行数 */
- (UILabel * (^)(NSInteger numberOfLines))func_numberOfLines;

/** 根据宽度调整font */
- (UILabel * (^)(BOOL adjustsFontSizeToFitWidth))func_adjustsFontSizeToFitWidth;

/** 背景色 */
- (UILabel * (^)(UIColor *backgroundColor))func_backgroundColor;


@end

NS_ASSUME_NONNULL_END
