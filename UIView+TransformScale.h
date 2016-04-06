//
//  UIView+TransformScale.h
//  GiftBox
//
//  Created by 康健 on 16/4/6.
//  Copyright © 2016年 xinyihezi. All rights reserved.
//

#import <UIKit/UIKit.h>
/** 缩放动画的类别 */
@interface UIView(TransformScale)
/** 从中心点放大显示该控件 */
- (void)show;
/** 缩小并隐藏该控件 */
- (void)hide;
/** 缩小并隐藏该控件
 * @param completion 成功后执行的block*/
- (void)hide:(void(^)())completion;
@end
