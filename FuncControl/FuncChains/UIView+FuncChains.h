//
//  UIView+FuncChains.h
//  FuncControl
//
//  Created by Singularity on 2020/9/17.
//  Copyright © 2020 Singularity. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (FuncChains)

/** 初始化 不使用此初始化则需要[UIView new] */
+ (UIView *)func_init;

/** 范围大小 */
- (UIView * (^)(CGRect frame))func_frame;

/** 背景色 */
- (UIView * (^)(UIColor *backgroundColor))func_backgroundColor;

/** 背景图 */
- (UIView * (^)(UIImage *backgroundImage))func_backgroundImage;

/** 是否裁减掉超出尺寸的部分 */
- (UIView * (^)(BOOL clipsToBounds))func_clipsToBounds;

/** 是否响应用户操作 */
- (UIView * (^)(BOOL userInteractionEnabled))func_userInteractionEnabled;

/** 控件透明度 */
- (UIView * (^)(CGFloat alpha))func_alpha;

/** 是否隐藏控件 */
- (UIView * (^)(BOOL hidden))func_hidden;



@end

NS_ASSUME_NONNULL_END
