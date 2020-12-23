//
//  UIButton+FuncChains.h
//  BaseTools
//
//  Created by Singularity on 2019/8/17.
//  Copyright © 2019 Singularity. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (FuncChains)

/** 初始化 不使用此初始化则需要[UIButton new] */
+ (UIButton *)func_init;

/** 范围大小 */
- (UIButton * (^)(CGRect frame))func_frame;

/** 字体 */
- (UIButton * (^)(UIFont *font))func_font;

/** 文本对齐方式 */
- (UIButton * (^)(NSTextAlignment textAlignment))func_textAlignment;

/** 文本行数 */
- (UIButton * (^)(NSInteger numberOfLines))func_numberOfLines;

/** 文本是否根据宽度调整Font  宽度自适应 */
- (UIButton * (^)(BOOL adjustsFontSizeToFitWidth))func_adjustsFontSizeToFitWidth;

/** 文本 UIControlStateNormal下*/
- (UIButton * (^)(NSString *title))func_title;

/** 文本及按钮状态  (title,state) */
- (UIButton * (^)(NSString *title, UIControlState state))func_title_state;

/** 属性文本及按钮状态 (attributedTitle,state)*/
- (UIButton * (^)(NSAttributedString *attributedTitle, UIControlState state))func_attributedTitle_state;

/** 文本颜色 UIControlStateNormal下*/
- (UIButton * (^)(UIColor *titleColor))func_titleColor;

/** 文本颜色及按钮状态 (titleColor,state) */
- (UIButton * (^)(UIColor *titleColor, UIControlState state))func_titleColor_state;

/** 图片 UIControlStateNormal下 */
- (UIButton * (^)(UIImage *image))func_image;

/** 图片及按钮状态 (image,state) */
- (UIButton * (^)(UIImage *image, UIControlState state))func_image_state;

/** 按钮内容垂直对齐方式 */
- (UIButton * (^)(UIControlContentVerticalAlignment contentVerticalAlignment))func_contentVerticalAlignment;

/** 按钮内容水平对齐方式 */
- (UIButton * (^)(UIControlContentHorizontalAlignment contentHorizontalAlignment))func_contentHorizontalAlignment;

/** 背景色 */
- (UIButton * (^)(UIColor *backgroundColor))func_backgroundColor;

/** 背景图片 */
- (UIButton * (^)(UIImage *backgroundImage, UIControlState state))func_backgroundImage;

/** 垂直渐变色 (startColor,endColor) 必须设置frame,并在frame之后,文字属性之前设置方能生效 */
- (UIButton * (^)(UIColor *startColor, UIColor *endColor))func_gradientVerticalColor;

/** 水平渐变色 (startColor,endColor) 必须设置frame,并在frame之后,文字属性之前设置方能生效 */
- (UIButton * (^)(UIColor *startColor, UIColor *endColor))func_gradientHorizontalColor;

/** 阴影 (阴影色需包含透明度,阴影半径范围 正常默认值为3) 右下方向阴影 */
- (UIButton * (^)(UIColor *shadowColor, CGFloat shadowRadius))func_shadow;

/** 按钮点击触发对象及点击事件 (target,action) */
- (UIButton * (^)(id target, SEL action))func_addTarget_action;

/** 是否可用 */
- (UIButton * (^)(BOOL enabled))func_enabled;

/** 是否响应用户操作 */
- (UIButton * (^)(BOOL userInteractionEnabled))func_userInteractionEnabled;

/** 控件透明度 */
- (UIButton * (^)(CGFloat alpha))func_alpha;

/** 是否隐藏控件 */
- (UIButton * (^)(BOOL hidden))func_hidden;



@end

NS_ASSUME_NONNULL_END
