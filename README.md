# MosaicDemoOC
使用五种方法实现模糊效果（2种毛玻璃，3种高斯模糊），使用OC实现

![](https://img.shields.io/badge/platform-iOS-red.svg) 
![](https://img.shields.io/badge/language-Objective--C-orange.svg) 
![](https://img.shields.io/badge/download-7.6MB-brightgreen.svg)
![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 

之前有由于业务需要有封装过一个 Swift 的马赛克工具，鉴于 Swift 的更新换代特性，现在可能已经挂掉了，在网上查到的使用 OC 达到模糊效果的方法，这里只列出 5 种，仅供参考。

| 名称 |1.列表页 |2.毛玻璃效果1 |3.毛玻璃效果2 |4.高斯模糊效果1 |5.高斯模糊效果2 |6.高斯模糊效果3 |
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| 截图 | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-25/83835618.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-25/55833246.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-25/91365725.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-25/71751101.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-25/63012432.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-25/26533758.jpg) |
| 描述 | 通过 storyboard 搭建基本框架 | UIToolbar方法 | UIVisualEffectVIew方法 | Core Image方法 | Acc.Framework方法 | GPUImage方法 |


## Advantage 框架的优势
* 1.文件少，代码简洁
* 2.功能完善，简单封装
* 3.具备较高自定义性


## Requirements 要求
* iOS 7+
* Xcode 8+


## Usage 使用方法
### 第一步 引入头文件
```
#import "MosaicTools.h"
```
### 第二步 简单调用
方法一：在iOS 7 之前系统的类提供 UIToolbar 来实现

```
[MosaicTools toolbarStyle:self.OimageView];
```

方法二：在iOS 8 之后新增加的类 UIVisualEffectView 来实现

```
[MosaicTools uivisualEffectViewStyle:self.OimageView];
```

方法三：iOS 5.0 之后的 Core Image 的 API

```
self.OimageView.image = [MosaicTools coreBlurImage:self.OimageView.image withBlurNumber:5];
```

方法四：Accelerate 主要是用来做数字信号处理、图像处理相关的向量、矩阵运算的库

```
self.OimageView.image = [MosaicTools GPUImageStyleWithImage:self.OimageView.image];
```

方法五：开源库 GPUImage 实现毛玻璃效果

```
self.OimageView.image = [MosaicTools boxblurImage:self.OimageView.image withBlurNumber:5];
```

五种方法的效率对比，仅供参考
![](http://og1yl0w9z.bkt.clouddn.com/17-8-25/41437509.jpg)

使用简单、效率高效、进程安全~~~如果你有更好的建议,希望不吝赐教!


## License 许可证
MosaicDemoOC 使用 MIT 许可证，详情见 LICENSE 文件。


## Contact 联系方式:
* WeChat : WhatsXie
* Email : ReverseScale@iCloud.com
* Blog : https://reversescale.github.io
