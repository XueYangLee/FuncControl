//
//  UITextField+FuncChains.h
//  BaseTools
//
//  Created by Singularity on 2019/8/17.
//  Copyright © 2019 Singularity. All rights reserved.
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (FuncChains)

/** 初始化 不使用此初始化则需要[UITextField new]*/
+ (UITextField *)func_init;

/** 范围大小 */
- (UITextField * (^)(CGRect frame))func_frame;

/** 背景色 */
- (UITextField * (^)(UIColor *backgroundColor))func_backgroundColor;

/** 文本 */
- (UITextField * (^)(NSString *text))func_text;

/** 文本颜色 */
- (UITextField * (^)(UIColor *textColor))func_textColor;

/** 字体 */
- (UITextField * (^)(UIFont *font))func_font;

/** 占位文本 */
- (UITextField * (^)(NSString *placeholder))func_placeholder;

/** 占位文本颜色  *需写在占位文本后 */
- (UITextField * (^)(UIColor *placeholderColor))func_placeholderColor;

/** 占位文本字体  *需写在占位文本后 默认占位文本字体跟随文体字体 iOS11后不与占位文本颜色同时存在 */
- (UITextField * (^)(UIFont *placeholderFont))func_placeholderFont;

/** 对齐方式 */
- (UITextField * (^)(NSTextAlignment textAlignment))func_textAlignment;

/** 光标颜色 */
- (UITextField * (^)(UIColor *tintColor))func_tintColor;

/** 编辑框中的内容密码显示 */
- (UITextField * (^)(BOOL secureTextEntry))func_secureTextEntry;

/** 边框样式 默认的样式为UITextBorderStyleNone */
- (UITextField * (^)(UITextBorderStyle borderStyle))func_borderStyle;

/** 清除按钮的模式 默认样式为UITextFieldViewModeNever */
- (UITextField * (^)(UITextFieldViewMode clearButtonMode))func_clearButtonMode;

/** 返回键的类型 */
- (UITextField * (^)(UIReturnKeyType returnKeyType))func_returnKeyType;

/** 键盘类型 */
- (UITextField * (^)(UIKeyboardType keyboardType))func_keyboardType;

/** 操作事件 (target,action,controlEvents) */
- (UITextField * (^)(id target, SEL action, UIControlEvents controlEvents))func_addTarget_action_events;

/** 阴影 (阴影色需包含透明度,阴影半径范围 正常默认值为3) 右下方向阴影 */
- (UITextField * (^)(UIColor *shadowColor, CGFloat shadowRadius))func_shadow;

/** 输入框能否编辑 */
- (UITextField * (^)(BOOL enable))func_enable;

/** 是否响应用户操作 */
- (UITextField * (^)(BOOL userInteractionEnabled))func_userInteractionEnabled;

/** 控件透明度 */
- (UITextField * (^)(CGFloat alpha))func_alpha;

/** 是否隐藏控件 */
- (UITextField * (^)(BOOL hidden))func_hidden;



@end

NS_ASSUME_NONNULL_END
