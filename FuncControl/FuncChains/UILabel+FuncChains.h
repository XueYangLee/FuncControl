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

/** 文本是否根据宽度调整Font  宽度自适应 */
- (UILabel * (^)(BOOL adjustsFontSizeToFitWidth))func_adjustsFontSizeToFitWidth;

/** 背景色 */
- (UILabel * (^)(UIColor *backgroundColor))func_backgroundColor;

/** 垂直渐变色 (startColor,endColor) 必须设置frame,并在frame之后设置,label下使用会全覆盖 */
- (UILabel * (^)(UIColor *startColor, UIColor *endColor))func_gradientVerticalColor;

/** 水平渐变色 (startColor,endColor) 必须设置frame,并在frame之后设置,label下使用会全覆盖 */
- (UILabel * (^)(UIColor *startColor, UIColor *endColor))func_gradientHorizontalColor;

/** 阴影 (阴影色需包含透明度,阴影半径范围 正常默认值为3) 右下方向阴影 */
- (UILabel * (^)(UIColor *shadowColor, CGFloat shadowRadius))func_shadow;

/** 是否可用 */
- (UILabel * (^)(BOOL enabled))func_enabled;

/** 是否响应用户操作 */
- (UILabel * (^)(BOOL userInteractionEnabled))func_userInteractionEnabled;

/** 添加轻点手势点击触发对象及点击事件 (target,action) */
- (UILabel * (^)(id target, SEL action))func_addTapGestureTarget_action;

/** 控件透明度 */
- (UILabel * (^)(CGFloat alpha))func_alpha;

/** 是否隐藏控件 */
- (UILabel * (^)(BOOL hidden))func_hidden;



@end

NS_ASSUME_NONNULL_END
