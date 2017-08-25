//
//  MosaicTools.h
//  MosaicDemoOC
//
//  Created by WhatsXie on 2017/8/25.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GPUImage.h"
#import <Accelerate/Accelerate.h>

@interface MosaicTools : NSObject
+ (void)toolbarStyle:(UIImageView *)imageView;
+ (void)uivisualEffectViewStyle:(UIImageView *)imageView;
+ (UIImage *)coreBlurImage:(UIImage *)image withBlurNumber:(CGFloat)blur;
+ (UIImage *)GPUImageStyleWithImage:(UIImage *)image;
+ (UIImage *)boxblurImage:(UIImage *)image withBlurNumber:(CGFloat)blur;
@end
