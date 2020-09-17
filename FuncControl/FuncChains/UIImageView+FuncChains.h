//
//  UIImageView+FuncChains.h
//  FuncControl
//
//  Created by Singularity on 2020/9/17.
//  Copyright © 2020 Singularity. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (FuncChains)

/** 初始化 不使用此初始化则需要[UIImageView new] */
+ (UIImageView *)func_init;

/** 范围大小 */
- (UIImageView * (^)(CGRect frame))func_frame;

/** 背景色 */
- (UIImageView * (^)(UIColor *backgroundColor))func_backgroundColor;

/** 图片 */
- (UIImageView * (^)(UIImage *image))func_image;

/** 图片填充模式 */
- (UIImageView * (^)(UIViewContentMode contentMode))func_contentMode;

/** 是否裁减掉超出尺寸的部分 */
- (UIImageView * (^)(BOOL clipsToBounds))func_clipsToBounds;

/** 图片动画数组 多图组成动画 */
- (UIImageView * (^)(NSArray <UIImage *>*animationImages))func_animationImages;

/** 图片动画数组完成一次的时间 默认30帧 */
- (UIImageView * (^)(NSTimeInterval animationDuration))func_animationDuration;

/** 图片动画重复次数  默认0 无限循环 */
- (UIImageView * (^)(NSInteger animationRepeatCount))func_animationRepeatCount;

/** 是否响应用户操作 */
- (UIImageView * (^)(BOOL userInteractionEnabled))func_userInteractionEnabled;

/** 控件透明度 */
- (UIImageView * (^)(CGFloat alpha))func_alpha;

/** 是否隐藏控件 */
- (UIImageView * (^)(BOOL hidden))func_hidden;



@end

NS_ASSUME_NONNULL_END
